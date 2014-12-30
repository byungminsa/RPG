img_srcs = ["http://www.monsoonco.com/wp-content/uploads/2014/12/MonsoonCo_HP_Sprout_hero1-1024x683.jpg"]
# User.create!(email: 'admin@monsoonco.com', password: 'password')


5.times do |i|
  Template.create(img_src: img_srcs[0], img_text: "This is only a test...")
end

5.times do |i|
  Action.create(description: "action")
end

5.times do |i|
  Choice.create()
end

5.times do |i|
  template = Template.find(i.next)
  template.choice_id = i.next
  template.save!
end

5.times do |i|
  action = Action.find(i.next)
  action.current_template_id = i.next
  action.next_template_id = (5-i)
  action.save!
end

5.times do |i|
  ids = (1..5).to_a
  choice = Choice.find(i.next)
  choice.action_one_id = ids.sample
  choice.action_two_id = ids.sample
  choice.action_three_id = ids.sample
  choice.action_four_id = ids.sample
  choice.action_five_id = ids.sample
  choice.save!
end
