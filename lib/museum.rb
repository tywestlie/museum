require 'pry'
class Museum

  attr_reader :museum, :exhibits

  def initialize(museum)
    @museum = museum
    @exhibits = Hash.new
  end

  def add_exhibit(name, cost)
    @exhibits[name] = cost
  end

end
