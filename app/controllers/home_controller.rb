class HomeController < ApplicationController
  #caches_page :index
  respond_to :json, :html

  def index
    render :layout=> 'home'
  end

  def show
    render :action => params[:page]
  end  

  def set_domain
    domain = Domain.where(:identifier => params[:domain]).first()
    if domain
      session[:domain] = domain.id
      if current_user
        current_user.domain_id = session[:domain]
        current_user.save
      end
    end
    
    redirect_to request.referrer
  end

  def study
    category = params[:category]
    sd = StudyData.create!({
      :category => category.to_i,
      :user_id => current_user ? current_user.id : nil,
      :session_id => request.session_options[:id],

      :position_id => params[:position_id],
      :point_id => params[:point_id],
      :proposal_id => params[:proposal_id],
      :detail1 => params[:detail1],
      :detail2 => params[:detail2],
      :ival => params[:ival].to_i,
      :fval => params[:fval].to_f,
      :bval => params[:bval] == 'true'
    })
    response = {:success => "success"}
    render :json => response.to_json

  end

end
