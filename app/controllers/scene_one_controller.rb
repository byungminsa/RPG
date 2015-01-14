class SceneOneController < ApplicationController
  def index
    if params[:q] == 'yes'
      redirect_to '/scene_one/1'
    else
      redirect_to '/'
    end
  end

  def show
    @img_src = "http://s2.quickmeme.com/img/0c/0cb897c87759fc4a880dc552b43468f5f02cd23a72884460a392bd5276790ff6.jpg"
    @img_text = "This is the first scene of the game. Where would you like to go?"

    @action_one = "home"
    @action_two = "work"
    @action_three = "bar"
  end
end
