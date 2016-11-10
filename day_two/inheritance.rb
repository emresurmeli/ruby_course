class Alcohol
  attr_accessor :alcohol_by_volume
  attr_accessor :volume
end

class Beer < Alcohol
  attr_reader :kind
  attr_reader :calories

  def initialize( kind, calories )
    @kind = kind
    @calories = calories
  end
end
