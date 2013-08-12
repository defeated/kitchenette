class Admin::OrdersController < ApplicationController
  def index
    render inline: 'hello', layout: true
  end
end
