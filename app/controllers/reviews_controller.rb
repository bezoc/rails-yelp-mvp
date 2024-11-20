class ReviewsController < ApplicationController
  before_action :set_restaurant
  before_action :set_review, only: %i[destroy]

  def create
    @review = @restaurant.reviews.new(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show', status: :unprocessable_entity
    end
  end

  def destroy
    @review.destroy
    redirect_to restaurant_path(@restaurant), notice: "Review deleted!", status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
