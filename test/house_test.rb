require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class RoomTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")
    # require "pry"; binding.pry
  end

  def test_it_exists
    assert_instance_of House, @house
  end

  def test_it_has_a_price
    assert_equal 400000, @house.price
  end

  def test_it_has_an_address
    assert_equal "123 sugar lane", @house.address
  end

  def test_it_starts_with_no_rooms
    assert_equal [], @house.rooms
  end

end
