class OrdersController < ApplicationController
  def index

    # http://www.omniglot.com/language/phrases/bonappetit.htm
    @enjoy = [
      'Bon appetit',    # english
      'Bon appétit',    # french
      'Buon appetito',  # italian
      'Guten Appetit',  # german
      'Poftă bună',     # romanian
      'Buen apetito',   # spanish
      'Bom apetite',    # portuguese
      'Afiyet olsun',   # turkish
      'Bil hana'        # lebanese
    ].sample

    @roster = [
      {
        day: 'Monday',
        date: 'Aug 12',
        restaurant: 'Panera',
        url: 'http://panera.com',
        cuisine: 'cafe, bakery'
      },
      {
        day: 'Tuesday',
        date: 'Aug 13',
        restaurant: 'Au Bon Pain',
        url: 'http://aubonpain.com',
        cuisine: 'cafe, bakery'
      },
      {
        day: 'Wednesday',
        date: 'Aug 14',
        restaurant: 'S&S Restaurant',
        url: 'http://www.sandsrestaurant.com/',
        cuisine: 'deli'
      },
      {
        day: 'Thursday',
        date: 'Aug 15',
        restaurant: 'Flour Bakery',
        url: 'http://flourbakery.com/',
        cuisine: 'cafe, bakery'
      },
      {
        day: 'Friday',
        date: 'Aug 16',
        restaurant: 'Chipotle',
        url: 'http://chipotle.com',
        cuisine: 'mexican'
      }
    ]

    @order = @roster.first

  end
end
