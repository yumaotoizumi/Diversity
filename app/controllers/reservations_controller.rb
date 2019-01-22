class ReservationsController < ApplicationController

	def create
	 # @reservation = current_user.reservations.create(reservation_params)
	 @reservation = Reservation.new(reservation_params)
	 @reservation.user_id = current_user.id
	 if @reservation.save
    	 redirect_to root_path notice:"予約が完了しました"
   	 else
        @reservations = current_user.reservations.all
   	 	redirect_to parkings_path
   	 end
	end

   def index
       @reservations = current_user.reservations.all
   end

   def lend
     @parkings = current_user.parkings
   end

	def reservation_params
    params.require(:reservation).permit(:start_day, :end_day, :parking_id)

	end



end
