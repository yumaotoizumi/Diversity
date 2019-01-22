class ParkingsController < ApplicationController

	def map
	  results = Geocoder.search(params[:address])
	  @latlng = results.first.coordinates
	  # これでmap.js.erbで、経度緯度情報が入った@latlngを使える。
	  # @latingに入っている緯度、経度に近いparkingをデータベースから探してくる
	  respond_to do |format|
	  	format.js
	  end
	end


	def top
	  #@user = User.find(current_user.id)
	  #@parking = @user.parkings
	  #@results = Geocoder.search(@parking)
	  # @latlng = results.first.coordinates

	end

	def new
		@parking = Parking.new
	end

	def create
		@parking = Parking.new(parking_params)
		@parking.user_id = current_user.id
		# 緯度と経度を取得して、カラムにいれる
		#results = Geocoder.search(params[:parking][:address])
	  	#latlng = results.first.coordinates
	  	#@parking.latitude = latlng[0]
	  	#@parking.logitutde = latlng[1]
		@parking.save
		redirect_to parkings_path
	end

	def index
		@parkings = Parking.all
	end

	def show
		@parking = Parking.find(params[:id])
		@reservation = Reservation.new
	end

	def edit
		@parking = Parking.find(params[:id])

	end

	def destroy
		@parking = Parking.find(params[:id])
		@parking.user_id = current_user.id
		@parking.destroy
		redirect_to parkings_path
	end

	def update
		 @parking = Parking.find(params[:id])
		 @parking.update(parking_params)
		 redirect_to park_list_path(@parking.id)

	end

	private

    def parking_params
        params.require(:parking).permit(:price, :stock, :car_model, :type, :address, :postal_code, :parking_image)
    end

end

