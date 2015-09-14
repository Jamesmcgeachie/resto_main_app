class CuisineTypesController < ApplicationController

	def index
		@cuisine_types = CuisineType.all
	end

	def show
		@cuisine_type = CuisineType.find(params[:id])
	end

end