require './lib/apartment'

class Building
  attr_reader :units

  def initialize
    @units = []
  end
end
