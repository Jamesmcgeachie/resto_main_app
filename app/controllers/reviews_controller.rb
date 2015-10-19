class ReviewsController < ApplicationController

before_action :get_restaurant

def new
end

def create
    @review = @restaurant.reviews.build(review_params)
    @review.save
end

def index
end


private

def review_params
	params.require(:review).permit(:content)
end

def get_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
end

end	