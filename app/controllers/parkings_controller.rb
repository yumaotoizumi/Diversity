class ParkingsController < ApplicationController

	def map
	  results = Geocoder.search(params[:address])
	  @latlng = results.first.coordinates
	  # これでmap.js.erbで、経度緯度情報が入った@latlngを使える。

	  respond_to do |format|
	  	format.js
	  end
	end

	def top

	end

	def new
		@parking = Parking.new
	end

	def create
		@parking = Parking.new(parking_params)
		@parking.user_id = current_user.id
		@parking.save
		redirect_to parkings_path
	end

	def index
		@parkings = Parking.all
	end

	def show
		@parking = Parking.find(params[:id])
	end

	def edit

	end

	def destroy
		@parking = Parking.find(params[id])
		@parking.destroy
		redirect_to parking_path
	end

	def update

	end

	private

    def parking_params
        params.require(:parking).permit(:price, :stock, :car_model, :type, :address, :postal_code, :parking_image)
    end

end

