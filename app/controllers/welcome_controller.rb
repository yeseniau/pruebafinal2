class WelcomeController < ApplicationController
  def index
    @pets = Pet.all
  end
end
