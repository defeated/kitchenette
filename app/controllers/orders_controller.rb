class OrdersController < ApplicationController
  def index

    @roster = [
      {
        day: 'Monday',
        date: 'Aug 12',
        restaurant: 'Panera',
        url: 'http://panera.com'
      },
      {
        day: 'Tuesday',
        date: 'Aug 13',
        restaurant: 'Au Bon Pain',
        url: 'http://aubonpain.com'
      },
      {
        day: 'Wednesday',
        date: 'Aug 14',
        restaurant: 'S&S Restaurant',
        url: 'http://www.sandsrestaurant.com/'
      },
      {
        day: 'Thursday',
        date: 'Aug 15',
        restaurant: 'Flour Bakery',
        url: 'http://flourbakery.com/'
      },
      {
        day: 'Friday',
        date: 'Aug 16',
        restaurant: 'Chipotle',
        url: 'http://chipotle.com'
      }
    ]

    @order = @roster.first

  end
end
