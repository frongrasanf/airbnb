class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)
    if review.save
      redirect_to rooms_path
    else
      redirect_to user_path(current_user.id)
    end
  end

  private

  def review_params
    params.require(:review).permit(:body, :booking_id).merge(user_id: current_user.id)
  end
end
