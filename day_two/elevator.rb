class Elevator

  attr_accessor :current_floor

  def initialize( floors )
    @floors = floors
    @current_floor = 0
    @state = "ready"
  end

  def call_elevator

  end

  def run_elevator( to_floor )
    self.play_music
    @state = "busy"
  end

  def what_floor
    return @current_floor
  end

  def is_ready
    return @state == "ready"
  end

  def play_music
    fork{ exec 'afplay', './20 Hotline Bling.mp3' }
  end

  def pause
    fork{ exec 'killall afplay' }
  end
end
