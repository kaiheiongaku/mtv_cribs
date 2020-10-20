require 'minitest/autorun'
require 'minitest/pride'
require './lib/building'

class BuildingTest < Minitest::Test

  def test_it_exists_and_has_attributes
    building = Building.new

    assert_instance_of Building, building
    assert_equal [], building.units
  end
end
