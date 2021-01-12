class Event
  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks.push(food_truck)
  end

  def food_truck_names
    @food_trucks.reduce([]) do |acc, food_truck|
      acc << food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.reduce([]) do |acc, food_truck|
      acc << food_truck if food_truck.inventory.keys.item.name == item.name
      acc
    end
  end
end
