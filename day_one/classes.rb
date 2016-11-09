class Dinosaur
  def initialize
    @species = 'Trex'
    @height = '15 meters'
    @weight = '2.5 tons'
    @diet = 'carnivore'
  end
end

class Robot
  def initialize
    @name = "Arnold"
  end

  def destroy_humanity
    puts "Mission: Destroy Humanity initialized"
    puts "...first, target, Donald, Trump"
  end
end


class Bike
  attr_writer :name
  attr_writer :model

  def whats_my_bike()
    puts "You have a bike called #{@name} and it's model is #{@model}"
  end
end
