class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(restaurant_id: params["restaurant_id"])
    @restaurant = Restaurant.find(params["restaurant_id"])
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params["restaurant_id"])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(strong_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_reviews_path(@restaurant)
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:review).permit(:content, :rating)
  end
end
