Pin.destroy_all
User.destroy_all


dude = User.create!(email:'dude@dude.com', password:'dudedude', password_confirmation:'dudedude')
snoopy = User.create(email:'snoopy@peanuts.com', password:'charliebrown', password_confirmation:'charliebrown')


Pin.create(title:'The Dude', img_url:'http://img2-2.timeinc.net/people/i/2014/news/140915/jeff-bridges-800.jpg', user:dude)
Pin.create(title:'Snoops', img_url:'http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/snoopy_5.jpg', user:snoopy)
Pin.create(title:'Chill Cat', img_url:'http://cdn.attackofthecute.com/May-15-2012-01-49-17-sfgvdf.jpeg', user:dude)
