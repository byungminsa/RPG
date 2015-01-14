class SceneTwoController < ApplicationController
  def index
    if params[:q] == 'home'
      redirect_to '/scene_two/1'
    elsif params[:q] == 'work'
      redirect_to '/scene_two/2'
    elsif params[:q] == 'bar'
      redirect_to '/scene_two/3'
    else
      redirect_to '/'
    end
  end

  def show
    @img_src = "http://images4.fanpop.com/image/photos/19900000/SunSet-sunsets-and-sunrises-19955133-1920-1080.jpg"
    @img_text = "This is the second scene of the game. Where would you like to go?"

    @action_one = "Disneyland"
    @action_two = "Hawaii"
    @action_three = "Cruise in the Bahamas"
  end
end
