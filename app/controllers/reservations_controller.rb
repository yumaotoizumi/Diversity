class ReservationsController < ApplicationController

	def create
	 @reservation = current_user.reservations.create(reservation_params)
     redirect_to root_path notice:"予約が完了しました"

	end

	def reservation_params
    params.require(:reservation).permit(:start_day, :end_day, :parking_id)

	end



end
