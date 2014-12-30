img_srcs = ["http://www.monsoonco.com/wp-content/uploads/2014/12/MonsoonCo_HP_Sprout_hero1-1024x683.jpg"]
User.create!(email: 'admin@monsoonco.com', password: 'password')
125.times do |i|
  Template.create(template_number: i, action_one: "talk", action_two: "fight", 
                  action_three: "parley", action_four: "run", action_five: "explode",
                  img_src: img_srcs[0],
                  img_text:"The world's greatest monster!")
end

5.times do |i|
  Stage.create(stage_number: i, template_number: i)
end

5.times do |i|
  5.times do |j|
    5.times do |k|
      Choices.create(choice_number: i, from_stage_number: j, to_stage_number: k)

    end
  end
end
