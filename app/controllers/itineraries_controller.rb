class ItinerariesController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = Itinerary.new(itinerary_params)

    if user.save
      redirect_to('/users/show')
    else
      redirect_to('/users/new')
    end
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(
      :name,
      :email,
      :city,
      :password,
      :password_confirmation
    )
  end
end
