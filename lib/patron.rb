require 'pry'

class Patron

  attr_accessor :name, :interests

  def initialize(name)
    @name = name
    @interests = []
  end

  def add_interests(interest)
    interests << interest
  end

end
