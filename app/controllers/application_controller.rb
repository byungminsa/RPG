class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  
  protect_from_forgery with: :exception

  class GameInfo
    @@scenario = 1
    def self.change_scenario(new_scenario)
      @@scenario = new_scenario
    end
    def self.get_scenario
      @@scenario
    end
  end


  def index
    current_scenario_number = GameInfo.get_scenario
    if params[:q]
      next_template = Action.find_by description: 'action', current_template_id: current_scenario_number
    else
      next_template = Action.find_by description: 'action', current_template_id: 1
    end
    new_template_number = next_template[:next_template_id]
    new_actions_id = Template.find(new_template_number)[:choice_id]
    @img_src = Template.find(new_template_number)[:img_src]
    @img_text = Template.find(new_template_number)[:img_text]

    @action_one = Action.find(Choice.find(new_actions_id)[:action_one_id])[:description]
    @action_two = Action.find(Choice.find(new_actions_id)[:action_two_id])[:description]
    @action_three = Action.find(Choice.find(new_actions_id)[:action_three_id])[:description]
    @action_four = Action.find(Choice.find(new_actions_id)[:action_four_id])[:description]
    @action_five = Action.find(Choice.find(new_actions_id)[:action_five_id])[:description]
  end

end
