class ReviewsController < ApplicationController


  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_review
    @restaurant = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
