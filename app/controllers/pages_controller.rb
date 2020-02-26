class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home

    @bikes = Bike.all

    @bikes_geo = Bike.geocoded

    @markers = @bikes_geo.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        infoWindow: render_to_string(partial: "bikes/info_window", locals: { bike: bike }),
        image_url: helpers.asset_url(url_for(bike.photo))
      }
    end

  end
end
