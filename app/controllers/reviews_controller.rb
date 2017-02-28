class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)
        binding.pry
    if review.save
      redirect_to rooms_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:body, :booking_id).merge(user_id: current_user.id)
  end
end
