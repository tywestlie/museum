require 'pry'
require './lib/patron'
class Museum

  attr_reader :museum, :exhibits, :revnue, :patrons

  def initialize(museum)
    @museum = museum
    @exhibits = Hash.new
    @patrons = []
    @revnue = 0
  end

  def add_exhibit(name, cost)
    @exhibits[name] = cost
  end

  def create_patrons(name)
    @patrons << Patron.new(name)
  end

  def admit
    # intialize patron with interests
    # store patron w/ interests in a hash using
    # patron as the key and interests as the value
    # call admit with the patron object as an argument
    # revnue += 10
    # iterate through the patrons hash
    # if  patron interests == exhibits
      # revenue += 10
  end

end
