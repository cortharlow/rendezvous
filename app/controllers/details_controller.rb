class DetailsController < ApplicationController

  before_filter :authorize

  def new
    @detail = Detail.new
  end

  def edit
    @detail = Detail.find(params[:id])
  end

  def create
    @detail = Detail.new(detail_params)
    @detail.destination_id = params[:destination_id]

    if @detail.save
      redirect_to itineraries_path #FIX THIS
    else
      render "new"
    end
  end

  def update
    @detail = Detail.find(params[:id])

    if @detail.update(detail_params)
      redirect_to itineraries_path #FIX THIS
    else
      render "edit"
    end
  end

  def destroy
    @detail = Detail.find(params[:id])
    redirect_to itineraries_path #FIX THIS
    @detail.destroy
  end

  private

  def detail_params
    params.require(:detail).permit(
      :destination_id,
      :accommodation_name,
      :accommodation_address,
      :accommodation_checkin,
      :accommodation_checkout,
      :accommodation_cost,
      :accommodation_notes,
      :user_name,
      :transportation_type,
      :transportation_company_number,
      :transportation_departure_location,
      :transportation_departure_datetime,
      :transportation_arrival_location,
      :transportation_arrival_datetime,
      :transportation_cost
    )
  end
end
