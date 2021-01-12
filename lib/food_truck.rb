class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def stock(item, stock)
    @inventory[item] = stock
  end

  def check_stock(item)
    @inventory.reduce(0) do |sum, item|
      sum + item.last
    end
  end
end
