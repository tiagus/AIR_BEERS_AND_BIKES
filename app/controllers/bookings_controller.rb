class BookingsController < ApplicationController
  before_action :find_booking, only: [:update, :edit, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
    @bookings = current_user.bookings
  end


  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save!
      redirect_to @booking
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to @booking
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
