require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require 'pry'

class TestMuseum < Minitest::Test
  def test_exists
    dmns = Museum.new("Denver Museum of Natural Science")
    assert_instance_of Museum, dmns
  end
end
