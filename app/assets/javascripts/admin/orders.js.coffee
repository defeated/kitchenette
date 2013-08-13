# searching for suggestions
$(document).on 'keyup', '#restaurant_name', ->
  results = $("#restaurant-suggestions").hide().empty()
  input   = $(this)
  query   = input.val().toLowerCase()

  if query.length is 0
    $("#restaurant_name").val("")
    $("#restaurant_cuisine").val("")
    $("#restaurant_url").val("")
    $("#restaurant_notes").val("")
    return

  matches = $.grep Litmus.restaurants, (restaurant) ->
    restaurant.name.toLowerCase().indexOf(query) is 0

  $.each matches, (index, match) ->
    results.append "<li data-id='#{ match.id }'>#{ match.name }</li>"

  position = input.position()
  results.show().css
    width:  "#{ input.outerWidth() }px"
    top:    "#{ position.top + input.outerHeight() }px"
    left:   "#{ position.left }px"

# selecting a suggestion
$(document).on 'click', '#restaurant-suggestions li', ->
  id      = $(this).data "id"
  matches = $.grep Litmus.restaurants, (restaurant) ->
    restaurant.id is id

  restaurant = matches[0]
  $("#restaurant_name").val     restaurant.name
  $("#restaurant_cuisine").val  restaurant.cuisine
  $("#restaurant_url").val      restaurant.url
  $("#restaurant_notes").val    restaurant.notes

  $("#restaurant-suggestions").hide()
