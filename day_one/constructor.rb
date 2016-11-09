class RaceCar
  def initialize( model, top_speed, year )
    @model     = model
    @top_speed = top_speed
    @year      = year
  end

  attr_accessor :model
  attr_accessor :top_speed
  attr_accessor :year

  def add_turbo
    current_speed = self.top_speed
    new_speed = self.increase_speed( current_speed )
    self.top_speed = new_speed
  end

  def increase_speed( speed )
    extract_speed = speed.split
    increase_speed = extract_speed[0].to_f + 25
    remove_decimal = increase_speed.floor
    new_speed = remove_decimal.to_s << extract_speed[1]
    return new_speed
  end
end
