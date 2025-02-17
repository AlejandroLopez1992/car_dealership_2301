class Dealership

  attr_reader :name, :address

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory
    @inventory
  end

  def inventory_count
     inventory.length 
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if @inventory == []
     return false
    else
      true
    end
  end

  def cars_by_make(name)
  inventory.select do |car|
     car.make == name
    end
  end

  def total_value
  individual_car_cost = []
  inventory.each do |car|
    individual_car_cost << car.total_cost
  end
  individual_car_cost.sum
  end

  def details
    details = {
      "total_value" => total_value,
      "address" => address
    }
  end
end