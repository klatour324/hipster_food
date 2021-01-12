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
end











# pry(main)> food_truck1 = FoodTruck.new("Rocky Mountain Pies")
# #=> #<FoodTruck:0x00007fe1348a1160...>
#
# pry(main)> item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
# #=> #<Item:0x007f9c56740d48...>
#
# pry(main)> item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
# #=> #<Item:0x007f9c565c0ce8...>
#
# pry(main)> item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
# #=> #<Item:0x007f9c562a5f18...>
#
# pry(main)> item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
# #=> #<Item:0x007f9c56343038...>
#
# pry(main)> food_truck1.stock(item1, 35)
#
# pry(main)> food_truck1.stock(item2, 7)
#
# pry(main)> food_truck2 = FoodTruck.new("Ba-Nom-a-Nom")
# #=> #<FoodTruck:0x00007fe1349bed40...>
#
# pry(main)> food_truck2.stock(item4, 50)
#
# pry(main)> food_truck2.stock(item3, 25)
#
# pry(main)> food_truck3 = FoodTruck.new("Palisade Peach Shack")
# #=> #<FoodTruck:0x00007fe134910650...>
#
# pry(main)> food_truck3.stock(item1, 65)
#
# pry(main)> event.add_food_truck(food_truck1)
#
# pry(main)> event.add_food_truck(food_truck2)
#
# pry(main)> event.add_food_truck(food_truck3)
#
# pry(main)> event.food_trucks
# #=> [#<FoodTruck:0x00007fe1348a1160...>, #<FoodTruck:0x00007fe1349bed40...>, #<FoodTruck:0x00007fe134910650...>]
#
# pry(main)> event.food_truck_names
# #=> ["Rocky Mountain Pies", "Ba-Nom-a-Nom", "Palisade Peach Shack"]
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
