require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'

class ItemTest < Minitest::Test

  def test_it_exists_with_attributes
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})


    assert_instance_of Item, item2
    assert_equal 'Apple Pie (Slice)', item2.name
    assert_equal "$2.50", item2.price
  end
end







# pry(main)> food_truck = FoodTruck.new("Rocky Mountain Pies")
# #=> #<FoodTruck:0x00007f85683152f0...>
#
# pry(main)> food_truck.name
# #=> "Rocky Mountain Pies"
#
# pry(main)> food_truck.inventory
# #=> {}
#
# pry(main)> food_truck.check_stock(item1)
# #=> 0
#
# pry(main)> food_truck.stock(item1, 30)
#
# pry(main)> food_truck.inventory
# #=> {#<Item:0x007f9c56740d48...> => 30}
#
# pry(main)> food_truck.check_stock(item1)
# #=> 30
#
# pry(main)> food_truck.stock(item1, 25)
#
# pry(main)> food_truck.check_stock(item1)
# #=> 55
#
# pry(main)> food_truck.stock(item2, 12)
#
# pry(main)> food_truck.inventory
# #=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}
# ```
