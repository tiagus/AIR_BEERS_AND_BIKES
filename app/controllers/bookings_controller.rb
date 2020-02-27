class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    # @bookings = Booking.all
    @bookings = policy_scope(Booking)

  end

  def show
    # @bookings = current_user.bookings
  end


  def new
    # @booking = Booking.new
    # @bike = Bike.find(params[:bike_id])

    # authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)

    authorize @booking

    @bike = Bike.find(params[:bike_id])
    @booking.bike = @bike
    @booking.user = current_user
    if @booking.save
      @bike.rented = true
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.user = current_user
    @booking.update(booking_params)
    redirect_to bookings_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path(@booking)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

