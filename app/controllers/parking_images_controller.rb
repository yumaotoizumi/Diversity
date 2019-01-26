class ParkingImagesController < ApplicationController
	before_action :current_user, only: [:new, :create,:edit, :update, :destroy]

	def new
		@parking_image = ParkingImage.new
		@parking = Parking.find(params[:parking_id])

		@parking_images = ParkingImage.where(parking_id: @parking.id)
	end

	def create
		@parking = Parking.find(params[:parking_id])
	    @parking_image = ParkingImage.new(parking_image_params)
	    @parking_image.parking_id = @parking.id
	    if  @parking_image.save
		    flash[:notice] = "画像投稿成功しました！"
		    redirect_to new_parking_parking_image_path

	    else
	    redirect_to new_parking_parking_image_path
	end
	end

	def index
		@parkings = Parking.find(params[:parking_id])
		@parking_images = ParkingImage.where(parking_id: @parking.id)
	end

	def show
		@parking_image = ParkingImage.find(params[:id])
	end

	def destroy
		@parking = Parking.find(params[:parking_id])
		@parking_image = ParkingImage.find(params[:id])
	    @parking_image.destroy
	    redirect_to new_parking_parking_image_path
	end

	private
    def parking_image_params
        params.require(:parking_image).permit(:image,:parking_id)
    end

end
