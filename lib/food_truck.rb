class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    @inventory.length
  end

  def stock(item, price)
    @inventory[item] = price
  end
end
