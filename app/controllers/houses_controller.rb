class HousesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @houses = House.all
  end

end
