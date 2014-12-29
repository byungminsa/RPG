class WelcomeController < ApplicationController

  def index
    @action_one = "Talk"
    @action_two = "Punch"
    @action_three = "Negotiate"
    @action_four = "Steal"
    @action_five = "Explode Self"

  end

end
