class ProposalsController < ApplicationController
  protect_from_forgery

  POINTS_PER_PAGE = 4
  
  def show
    @user = current_user
    @proposal = Proposal.find(params[:id])
    
    #@title = "#{@proposal.category} #{@proposal.designator} #{@proposal.short_name}"
    @title = "#{@proposal.short_name}"
    @keywords = "#{@proposal.domain} #{@proposal.category} #{@proposal.designator} #{@proposal.name}"

    @position = current_user ? current_user.positions.where(:proposal_id => @proposal.id).first : nil
    @positions = @proposal.positions.published

    if !@position && (!params.has_key? :redirect || params[:redirect] == 'true' )
      redirect_to(new_proposal_position_path(@proposal))
      return
    end

    @pro_points = @proposal.points.pros.ranked_overall.paginate(:page => 1, :per_page => POINTS_PER_PAGE)
    @con_points = @proposal.points.cons.ranked_overall.paginate(:page => 1, :per_page => POINTS_PER_PAGE)

    PointListing.transaction do
      (@pro_points + @con_points).each do |pnt|
        PointListing.create!(
          :proposal => @proposal,
          :position => @position,
          :point => pnt,
          :user => @user,
          :context => 4
        )
      end
    end

    @page = 1
    @bucket = 'all'
    
    @protovis = true
    
    #Point.update_relative_scores

    #@comments = @proposal.root_comments
    #@comment = Comment.new      
    #@reflectable = true    
    
  end

  def index
    headers['Content-Type'] = 'application/xml'

    @proposals = Proposal.all
    respond_to do |format|
      format.xml {  } # sitemap is a named scope
      format.html {  }
    end

  end

end
