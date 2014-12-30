class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  
  protect_from_forgery with: :exception
  def index
    @action_one = Template.find(1)[:action_one]
    @action_two = Template.find(1)[:action_two]
    @action_three = Template.find(1)[:action_three]
    @action_four = Template.find(1)[:action_four]
    @action_five = Template.find(1)[:action_five]
    @img_src = Template.find(1)[:img_src]
    @img_text = Template.find(1)[:img_text]
  end

end
