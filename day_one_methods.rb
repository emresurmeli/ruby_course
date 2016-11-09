puts "Welcome to my methods"
puts "Give me a number and I'll add 5 to it"
num = gets

def add_five( x )
  addition = x.to_f + 5
  return addition.floor
end

puts add_five( num )
puts "Cool, that was fun... not give me a number and I will multiply it by 15"
num = gets

def times_fifteen( n )
  multiplication = n.to_f * 15
  return multiplication.floor
end

puts times_fifteen( num )
puts "Yay multiplication is so funnnnnnn, not give me four numbers and I'll
do some math on it... lol"
numbers = gets
puts numbers
def perform_operation_on_arguments( a, b, c, d )
  return ( a + b ) * ( c - d )
end

def print_four_times( x )
  for x in 0..3
    return "#{x}"
  end
end

def to_upper_case( x )
  return x.upcase
end

# puts perform_operation_on_arguments( 1, 2, 3, 4 )
# puts print_four_times( argument )
# puts to_upper_case( argument )
