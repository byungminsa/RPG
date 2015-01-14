class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  
  protect_from_forgery with: :exception


  def index
    @img_src = "http://www.monsoonco.com/wp-content/uploads/2014/12/MonsoonCo_HP_Sprout_hero1-1024x683.jpg"
    @img_text = "Would you like to enter our game?"

    @action_one = "yes"
    @action_two = "no"
  end

end
