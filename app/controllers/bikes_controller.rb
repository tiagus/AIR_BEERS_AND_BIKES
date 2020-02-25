class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_bike, only: :show

  def index
    @bikes = policy_scope(Bike)
  end

  def show
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
