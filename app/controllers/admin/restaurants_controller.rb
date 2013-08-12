class Admin::RestaurantsController < ApplicationController
  respond_to :html

  def index
    @restaurants = Restaurant.order(:name)
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def create
    @restaurant = Restaurant.new restaurant_params
    if @restaurant.save
      flash.notice = 'Restaurant was successfully created.'
    end
    respond_with @restaurant, location: admin_restaurants_path
  end

  def update
    @restaurant = Restaurant.find params[:id]
    if @restaurant.update(restaurant_params)
      flash.notice = 'Restaurant was successfully updated.'
    end
    respond_with @restaurant, location: admin_restaurants_path
  end

  def destroy
    @restaurant = Restaurant.find params[:id]
    if @restaurant.destroy
      flash.notice = 'Restaurant was successfully deleted.'
    end
    respond_with @restaurant, location: admin_restaurants_path
  end

  private

    def restaurant_params
      params.require(:restaurant).permit(:name, :url, :cuisine, :notes)
    end
end
