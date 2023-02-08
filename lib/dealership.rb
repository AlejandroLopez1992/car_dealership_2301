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
end