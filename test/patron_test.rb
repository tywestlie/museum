require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron.rb'
require 'pry'

class PatronTest < Minitest::Test
  def test_exists
    patron = Patron.new
    assert_instance_of Patron, patron
  end
end
