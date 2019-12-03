class HousesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @houses = House.all

    @markers = @houses.map do |house|
      {
        lat: house.latitude,
        lng: house.longitude,
        id: house.id
      }
    end
  end

end
