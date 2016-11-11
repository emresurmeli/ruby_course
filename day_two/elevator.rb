class Elevator

  attr_accessor :current_floor
  attr_accessor :state

  def initialize( floors )
    @floors = floors
    @current_floor = 0
    @state = "ready"
    puts "Call elevator by running call_elevator"
  end

  def call_elevator
    if self.is_ready
      puts "What floor would you like to go to?"
      to_floor = gets.to_i

      if to_floor.to_i > @floors
        "There are only #{@floors} floors"
        call_elevator
      end

      run_elevator( to_floor )
    elsif @state == "busy"
      puts "You elevator is busy"
    end
  end

  def run_elevator( to_floor )
    @state = "busy"
    self.play_music

    @current_floor.upto( to_floor ) {
      puts "You're on floor #{@current_floor}"
      @current_floor = @current_floor += 1
      sleep 1
    }

    self.pause_music
    puts "You have arrived"
    @state = "ready"
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

  def pause_music
    fork{ exec 'killall afplay' }
  end

end
