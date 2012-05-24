
z00001 = Domain.create!(
  :identifier => 00001,
  :name => 'global health'
)

admin = User.new(
  :name => 'HPEP Admin',
  :email => 'ghconsiderit@gmail.com',
  :password   => 'EqualityInEquity',
  :password_confirmation => 'EqualityInEquity'
)

admin.skip_confirmation!
admin.save

proposals = []

proposals.push Proposal.create!(
  :name => 'Proposal 1',
  :short_name => 'Short Name 1',
  :description => 'Description 1',
  :domain => 'Somewhere 1',
  :domain_short => 'Shorter 1',
  :url => 'Source 1',
  :category => 'Category 1',
  :designator => '0001',
  :long_description => 'HTML',
  :additional_details => 'Other' )

Point.create!(
  :proposal => o0,
  :user => admin,
  :is_pro => true,
  :nutshell => 'Pro point',
:text => '', :published => true
)

Point.create!(
  :proposal => o0,
  :user => admin,
  :is_pro => false,
  :nutshell => 'Con point',
:text => '', :published => true
)

proposals.each{ |item|
  DomainMap.create!(
    :domain => z00001,
    :proposal => item
  )
}