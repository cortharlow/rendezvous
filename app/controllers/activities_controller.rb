class ActivitiesController < ApplicationController
  
  before_filter :authorize

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.destination_id = params[:destination_id]

    if @activity.save
      redirect_to @activity.destination.itinerary
    else
      render "new"
    end
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      redirect_to @activity.destination.itinerary
    else
      render "edit"
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    redirect_to @activity.destination.itinerary
    @activity.destroy #Set to nil for sessions, not objects
  end

  private

  def activity_params
    params.require(:activity).permit(
      :destination_id,
      :day_num,
      :name,
      :location,
      :cost,
      :photo_url,
      :notes
    )
  end
end
