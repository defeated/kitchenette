class Admin::OrdersController < ApplicationController
  def index
    orders = Order.includes(:restaurant)
    @active_orders    = orders.active.order(:order_at)
    @inactive_orders  = orders.inactive.order(order_at: :desc)
  end

  def new
    @restaurants = Restaurant.all
    @order = Order.new
    @order.build_restaurant
  end
end
