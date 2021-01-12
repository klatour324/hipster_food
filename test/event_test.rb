require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/food_truck'
require './lib/event'

class EventTest < MiniTest::Test
  def test_it_exists_with_attributes
    event = Event.new("South Pearl Street Farmers Market")

    assert_instance_of Event, event
    assert_equal "South Pearl Street Farmers Market", event.name
    assert_equal [], event.food_trucks
  end

  def test_it_keeps_track_of_food_truck_names
    event = Event.new("South Pearl Street Farmers Market")
    food_truck1 = FoodTruck.new("Rocky Mountain Pies")
    food_truck2 = FoodTruck.new("Ba-Nom-a-Nom")
    food_truck3 = FoodTruck.new("Palisade Peach Shack")
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
    item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})

    food_truck1.stock(item1, 35)
    food_truck1.stock(item2, 7)
    food_truck2.stock(item4, 50)
    food_truck2.stock(item3, 25)
    food_truck3.stock(item1, 65)

    event.add_food_truck(food_truck1)
    event.add_food_truck(food_truck2)
    event.add_food_truck(food_truck3)

    assert_equal [food_truck1, food_truck2, food_truck3], event.food_trucks
    assert_equal ["Rocky Mountain Pies", "Ba-Nom-a-Nom", "Palisade Peach Shack"], event.food_truck_names
  end
end











# #=> #<FoodTruck:0x00007fe1348a1160...>
#
# #=> #<Item:0x007f9c56740d48...>
#
# #=> #<Item:0x007f9c565c0ce8...>
#
# #=> #<Item:0x007f9c562a5f18...>
#
# #=> #<Item:0x007f9c56343038...>
#
#
#
# #=> #<FoodTruck:0x00007fe1349bed40...>
#
#
#
# #=> #<FoodTruck:0x00007fe134910650...>
#
#
#
#
#
# pry(main)> event.food_trucks
#
# pry(main)> event.food_truck_names
#
# pry(main)> event.food_trucks_that_sell(item1)
# #=> [#<FoodTruck:0x00007fe1348a1160...>, #<FoodTruck:0x00007fe134910650...>]
#
# pry(main)> event.food_trucks_that_sell(item4)
# #=> [#<FoodTruck:0x00007fe1349bed40...>]
#
# pry(main)> food_truck1.potential_revenue
# #=> 148.75
#
# pry(main)> food_truck2.potential_revenue
# #=> 345.00
#
# pry(main)> food_truck3.potential_revenue
# #=> 243.75
# ```
