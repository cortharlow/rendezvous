class ItinerariesController < ApplicationController

  before_filter :authorize

  def index
    @itineraries = Itinerary.all
  end

  def new
    @itineraray = Itinerary.new
  end

  def show
    @itinerary = Itinerary.find(params[:id])
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user_id = current_user.id

    if @itinerary.save
      redirect_to @itinerary
    else
      render 'new'
    end
  end

  def update
    @itinerary = Itinerary.find(params[:id])

    if @itinerary.update(itinerary_params)
      redirect_to @itinerary
    else
      render 'edit'
    end
  end

  def destroy
    @itinerary = Itinerary.find(params[:id])
    @itinerary.destroy #Set to nil for sessions, not objects

    redirect_to ('/users/id')
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(
      :user_id,
      :name,
      :photo_url,
      :start_date,
      :end_date,
      :description,
      :public
    )
  end
end
