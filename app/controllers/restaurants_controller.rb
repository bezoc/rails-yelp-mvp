class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: "Restaurant was successfully created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant), notice: "Restaurant was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @restaurant.destroy!
    redirect_to restaurants_path, notice: "Restaurant deleted!", status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
