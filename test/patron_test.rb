require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron.rb'
require 'pry'

class PatronTest < Minitest::Test

  def test_exists
    patron = Patron.new("Jimbob")
    assert_instance_of Patron, patron
  end

  def test_has_name
    patron = Patron.new("Bob")
    assert_equal "Bob", patron.name
  end

  def test_has_no_inital_interests
    patron = Patron.new("Bob")
    intrest_array = patron.interests
    assert_equal true, intrest_array.empty?
  end

  def test_add_one_interest
    patron = Patron.new("Bob")
    patron.add_interests("canoeing")

    assert_equal ["canoeing"], patron.interests
  end

  def test_add_multiple_interests
    patron = Patron.new("Bob")
    patron.add_interests("canoeing")
    patron.add_interests("eating")
    patron.add_interests("sunbathing")

    assert_equal ["canoeing", "eating", "sunbathing"], patron.interests
  end
end
