class Calculator

  attr_accessor :input_one
  attr_accessor :input_two
  attr_accessor :operation

  def initialize
    @input_one = input_one
    @input_two = input_two
    @operation = operation
  end

  def addition( value_one, value_two )
    return value_one + value_two
  end

  def subtraction( value_one, value_two )
    return value_one - value_two
  end

  def division( value_one, value_two )
    return value_one / value_two
  end

  def multiplication( value_one, value_two )
    return value_one * value_two
  end

  def run_operation( value_one, value_two, operation )
    if operation == "plus" || operation == "+"
      self.addition( value_one, value_two )
    elsif operation == "minus" || operation == "-"
      self.subtraction( value_one, value_two )
    elsif operation == "divide" || operation == "/"
      self.division( value_one, value_two )
    elsif operation == "times" || operation == "x" || operation == "*"
      self.multiplication( value_one, value_two )
    end
  end

  def turn_on
    puts "Please enter an operation you would like to excecute"
    puts "Examples: 1 + 2 or 2 times 4"
    operation = gets
    self.parse_input( operation )
  end

  def parse_input( input )
    input = input.split()
    @input_one = input[0].to_i
    @input_two = input[2].to_i
    @operation = input[1]
    self.run_operation( @input_one, @input_two, @operation )
  end

end

