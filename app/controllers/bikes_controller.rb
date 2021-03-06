class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bike, only: :show

  def index
    if params[:query].present?
      policy_scope(Bike)
      @bikes = Bike.search_by_brand_model_and_address(params[:query])
    else
      @bikes = policy_scope(Bike)
    end

    @bikes_geo = @bikes.geocoded

    @markers = @bikes_geo.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bike: bike }),
        image_url: helpers.asset_url(url_for(bike.photo))
      }
    end
  end

  def show
    @bikes = Bike.all
    @markers =
      [{
        lat: @bike.latitude,
        lng: @bike.longitude,
        infoWindow: render_to_string(partial: "info_show", locals: { bike: @bike }),
        image_url: helpers.asset_url(url_for(@bike.photo))
      }]
    @booking = Booking.new
    @current_bookings = Booking.where(bike_id: @bike)
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_bike
    @bike = Bike.find(params[:id])
    authorize @bike
  end

  # Only allow a trusted parameter "white list" through.
  # not used at this moment, it's here if we need it
  # def restaurant_params
  #   params.require(:restaurant).permit(:name, :user_id)
  # end
end


