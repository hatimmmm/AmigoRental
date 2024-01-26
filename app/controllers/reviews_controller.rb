class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @user = User.find(params[:user_id])
    @review.user = @user
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
