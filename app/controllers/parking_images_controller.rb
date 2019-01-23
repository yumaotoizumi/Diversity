class ParkingImagesController < ApplicationController

	def new
		@parking_image = ParkingImage.new
		@parking = Parking.find(params[:parking_id])
	end

	def create
		@parking = Parking.find(params[:parking_id])
	    @parking_image = ParkingImage.new(parking_image_params)
	    @parking_image.parking_id = @parking.id
	    @parking_image.save
	    redirect_to new_parking_parking_image_path
	end

	def index
		@parking = Parking.find(params[:parking_id])
		@parking_image = ParkingImage.where(parking_id: @parking.id)
	end

	def show
		@parking_image = ParkingImage.find(params[:id])
	end

	def destroy
		@parking = Parking.find(params[:parking_id])
	    @parking_image = ParkingImage.new(parking_image_params)
	    @parking_image.parking_id = @parking.id
	    @parking_image.destroy
	    redirect_to new_parking_parking_image_path
	end

	private
    def parking_image_params
        params.require(:parking_image).permit(:image,:parking_id)
    end

end
