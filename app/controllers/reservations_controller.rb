class ReservationsController < ApplicationController

	# this line is to check if user authenticated first
	before_action :authenticate_user

	def index
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reservations = @restaurant.reservations
	end

	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = Reservation.new(sanitized_reservation_params)
		if @reservation.save
			redirect_to restaurant_reservations_path	
		else
			render :new
		end
	end

private
	def sanitized_reservation_params
    params.require(:reservation).permit(:seating_time, :party_size)
end

end