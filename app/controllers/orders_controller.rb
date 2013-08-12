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
        date: Time.zone.local(2013, 8, 12),
        restaurant: 'Panera',
        url: 'http://panera.com',
        cuisine: 'cafe, bakery'
      },
      {
        date: Time.zone.local(2013, 8, 13),
        restaurant: 'Au Bon Pain',
        url: 'http://aubonpain.com',
        cuisine: 'cafe, bakery'
      },
      {
        date: Time.zone.local(2013, 8, 14),
        restaurant: 'S&S Restaurant',
        url: 'http://www.sandsrestaurant.com/',
        cuisine: 'deli'
      },
      {
        date: Time.zone.local(2013, 8, 15),
        restaurant: 'Flour Bakery',
        url: 'http://flourbakery.com/',
        cuisine: 'cafe, bakery'
      },
      {
        date: Time.zone.local(2013, 8, 16),
        restaurant: 'Chipotle',
        url: 'http://chipotle.com',
        cuisine: 'mexican'
      }
    ]

    @order = @roster.first

  end
end
