require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require './lib/patron'
require 'pry'

class TestMuseum < Minitest::Test

  def test_exists
    dmns = Museum.new("Denver Museum of Natural Science")
    assert_instance_of Museum, dmns
  end

  def test_add_exhibits
    dmns = Museum.new("Denver Museum of Natural Science")
    dmns.add_exhibit("Dead Sea Scrolls", 10)
    dmns.add_exhibit("Gems and Minerals", 0)
    a = dmns.exhibits

    assert_equal a, dmns.exhibits
  end

  def test_admit_one_patron
    dmns = Museum.new("Denver Museum of Natural Science")
    dmns.create_patrons("Sally")

    assert_equal "Sally", dmns.patrons[0].name
  end
end
