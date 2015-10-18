class CuisineTypesController < ApplicationController

	def index
		@cuisine_types = CuisineType.all
	end

	def show
		@cuisine_type = CuisineType.find(params[:id])
		@restaurants = @cuisine_type.restaurants
		if params[:query]
			@restaurants = Restaurant.where("name like ?", "%#{params[:query]}%")
		end
	end

end