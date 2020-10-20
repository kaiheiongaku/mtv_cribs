require './lib/apartment'

class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    name_array = []
    @units.each do |unit|
      if unit.renter != nil
        name_array << unit.renter.name
      end
    end
    name_array
  end

  def average_rent
    total_building_rent = @units.map do |unit|
      unit.monthly_rent.to_f
    end.sum
    (total_building_rent / @units.count).round(1)
  end

  def rented_units
    @units.find_all do |unit|
      unit.renter != nil
    end
  end

  def renter_with_highest_rent
    most_expensive = @units.max_by do |unit|
      unit.monthly_rent
    end
    most_expensive.renter
  end
end
