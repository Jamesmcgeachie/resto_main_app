class Api::RestaurantsController < ApplicationController

	#do not hard code this in real life
	API_TOKEN = "abc123" 

	before_action :validate_api_token

	def index
		@restaurants = Restaurant.all
		# Don't need the below since I have the jbuilder file.
		# respond_to do |format|
		# 	format.json { render json: @restaurants }
		end
	end
	
	def show
		@restaurant = Restaurant.find(params[:id])
		@review = Review.new
	end

	private

	def validate_api_token
		if params[:api_token] != API_TOKEN
			render text: "unauthorized!"
		end
	end


end