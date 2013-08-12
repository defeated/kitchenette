class Admin::OrdersController < ApplicationController
  def index
    orders = Order.includes(:restaurant)
    @active_orders    = orders.active.order(:order_at)
    @inactive_orders  = orders.inactive.order(order_at: :desc)
  end
end
