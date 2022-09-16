class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(:restaurant_id)
    @review.save
    redirect_to restaurant_path(@Restaurant)
  end

  private

  def review_params
    params.require(@review).permit(:content, :raiting)
  end
end
