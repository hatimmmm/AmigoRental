class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @reviw = Review.new(review_params)
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_reviex
    @review = Review.find(params[:id])

  end
end
