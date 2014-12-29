User.create!(email: 'admin@monsoonco.com', password: 'password')
5.times do |i|
  Template.create(template_number: i, action_one: "talk", action_two: "fight", 
                  action_three: "parley", action_four: "run", action_five: "explode",
                  img_src: "http://www.monsoonco.com/wp-content/uploads/2014/12/MonsoonCo_HP_Sprout_hero1-1024x683.jpg",
                  img_text:"The world's greatest monster!")
end
