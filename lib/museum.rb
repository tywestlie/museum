require './lib/patron'
class Museum

  attr_reader :museum, :exhibits, :revnue, :new_patron

  def initialize(museum)
    @museum = museum
    @exhibits = Hash.new
    @revnue = 0
    @new_patron = []
  end

  def add_exhibit(name, cost)
    @exhibits[name] = cost
  end

  def create_patrons(name)
    # require 'pry';binding.pry
     @new_patron << Patron.new(name)
     # @patrons[new_patron] = interests
  end

  def add_interests(interests)
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
