class WelcomeController < ApplicationController

  def index
    @welcome_message = "You use an instance variable to pass information from a controller to a view"
  end

end
