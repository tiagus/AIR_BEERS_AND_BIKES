class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :update, :edit, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end


  def new
    @booking = Booking.new
    @bike = Bike.find(params[:bike_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @bike = Bike.find(params[:bike_id])
    @booking.bike = @bike
    @booking.user = current_user
    if @booking.save!
      redirect_to bike_bookings_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.user = current_user
    @booking.update(booking_params)
    redirect_to bike_booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to root_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

