class ServicesController < ApplicationController
     # GET /pets or /pets.json
  def index
    @services = Service.all

  end
end
