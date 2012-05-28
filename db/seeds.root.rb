
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

o0 = Proposal.create!(
  :name => 'Talk about equality not insurance'
  , :short_name => 'Move away from the Cliff'
  , :description => 'There is already sufficient emphasis on tertiary care within society.  People should begin to discuss how to move the health of populations rather than individuals.'
  , :domain => 'Policy'
  , :domain_short => 'Policy'
  , :url => ''
  , :category => 'Policy'
  , :designator => '0001'
  , :long_description => 
    '<h3>Fence or Ambulance?</h3>
	’Twas a dangerous cliff, as they freely confessed,
	Though to walk near its crest was so pleasant;
	But over its terrible edge there had slipped
	A duke, and full many a peasant;
	So the people said something would have to be done,
	But their projects did not at all tally.
	Some said: “Put a fence around the edge of the cliff ”;
	Some, “An ambulance down in the valley.”
	It closes:
	Better guide well the young than reclaim them when old,
	For the voice of true wisdom is calling;
	To rescue the fallen is good, but ’tis best
	To prevent other people from falling;
	Better close up the source of temptation and crime
	Than deliver from dungeon or galley;
	Better put a strong fence ’round the top of the cliff,
	Than an ambulance down in the valley.'
  , :additional_details => 'Other' )

Point.create!(
  :proposal => o0
  , :user => admin
  , :is_pro => true
  , :nutshell => 'Increased use and access to tertiary care does not improve the health of the socio-economic group.'
  , :text => ''
  , :published => true )

Point.create!(
  :proposal => o0
  , :user => admin
  , :is_pro => false
  , :nutshell => 'Differences in access to health care should be addressed first.'
  , :text => 'Especially in unequal societies, poorer people are disadvantaged when it comes to the provision of health care.  Turning the conversation away would have the negative effect of consigning those unfortunate people into health uncertainty.'
  , :published => true )

  DomainMap.create!(
    :domain => z00001,
    :proposal => o0
  )
  
o1 = Proposal.create!(
  :name => 'Reform the Health Care Profession'
  , :short_name => 'Doctor\'s Dillemma'
  , :description => 'The problems with health care incentives are older than modern medicine.'
  , :domain => 'Policy'
  , :domain_short => 'Policy'
  , :url => ''
  , :category => 'Policy'
  , :designator => '0001'
  , :long_description => 
	'<li>
		<ol>Nothing is more dangerous than a poor doctor: not even a poor employer or a poor landlord.</ol>
		<ol>Of all the anti-social vested interests the worst is the vested interest in ill-health.</ol>
		<ol>Remember that an illness is a misdemeanour; and treat the doctor as an accessory unless he notifies every case to the Public Health Authority.</ol>
		<ol>Treat every death as a possible, and under our present system, a probable murder, by making it the subject of a reasonably conducted inquest; and execute the doctor, if necessary as a doctor, by striking him off the register.</ol>
		<ol>Make up your mind how many doctors the community needs to keep it well. Do not register more or less than this number; and let registration constitute the doctor a civil servant with a dignified living wage paid out of public funds.</ol>
		<ol>Municipalize Harley Street.</ol>
		<ol>Treat the private operator exactly as you would treat a private executioner.</ol>
		<ol>Treat persons who profess to be able to cure disease as you treat fortune tellers.</ol>
		<ol>Keep the public carefully informed, by special statistics and announcements of individual cases, of all illnesses of doctors or in their families.</ol>
		<ol>Make it compulsory for a doctor using a brass plate24 to have inscribed on it, in addition to the letters indicating his qualifications, the words ‘Remember that I too am mortal’.</ol>
		<ol>In legislation and social organization, proceed on the principle that invalids, meaning persons who cannot keep themselves alive by their own activities, cannot, beyond reason, expect to be kept alive by the activity of others. There is a point at which the most energetic policemen or doctor, when called upon to deal with an apparently drowned person, gives up artificial respiration, although it is never possible to declare with certainty, at any point short of decomposition, that another five minutes of the exercise would not effect resuscitation. The theory that every individual alive is of infinite value is legislatively impracticable. No doubt the higher the life we secure to the individual by wise social organization, the greater his value is to the community, and the more pains we shall take to pull him through any temporary danger or disablement. But the man who costs more than he is worth is doomed by sound hygiene as inexorably as by sound economics.</ol>
		<ol>Do not try to live for ever. You will not succeed.</ol>
		<ol>Use your health, even to the point of wearing it out. That is what it is for. Spend all you have before you die; and do not outlive yourself.</ol>
		<ol>Take the utmost care to get well born and well brought up. This means that your mother must have a good doctor. Be careful to go to a school where there is what they call a school clinic, where your nutrition and teeth and eyesight and other matters of importance to you will be attended to. Be particularly careful to have all this done at the expense of the nation, as otherwise it will not be done at all, the chances being about forty to one against your being able to pay for it directly yourself, even if you know how to set about it. Otherwise you will be what most people are at present: an unsound citizen of an unsound nation, without sense enough to be ashamed or unhappy about it.</ol>
	</li>'
  , :additional_details => 'Other' )

Point.create!(
  :proposal => o1
  , :user => admin
  , :is_pro => true
  , :nutshell => 'Profit-driven hospitals experience higher mortality rates than non-profit hospitals.'
  , :text => ''
  , :published => true )

Point.create!(
  :proposal => o1
  , :user => admin
  , :is_pro => false
  , :nutshell => 'Regardless of motivation, health care needs money.'
  , :text => ''
  , :published => true )

  DomainMap.create!(
    :domain => z00001,
    :proposal => o1
  )