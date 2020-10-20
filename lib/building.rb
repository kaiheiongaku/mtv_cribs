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
end
