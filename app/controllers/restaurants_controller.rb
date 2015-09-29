class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end
	
	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		if @restaurant.update_attributes(restaurant_params)
			redirect_to restaurant_path(@restaurant)
		else
			render :new
		end
	end

private

def restaurant_params
	params.require(:restaurant).permit(:name, :capacity, :photo)
end

end