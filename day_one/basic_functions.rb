def onlyInAmerica( string )
  string = string.to_s
  return string << " only in America!"
end

puts onlyInAmerica( 'Trump wins' )

def findHighestValInArray( array )
  highestVal = 0
  array.each do |value|
    if value > highestVal
      highestVal = value
    end
  end
  return highestVal
end

puts findHighestValInArray( [1, 2, 3, 4, 5, 100, 10, 10000, 9999] )

def wtf( array1, array2 )
  object = {}
  key = ''
  array1.each_with_index do |value, index|
    object[value] = index
    key = object[value]
    array2.each do |value|
      key = value
    end
  end
  return object
end

puts wtf( [:wut, :dafuq], ["hi", "ayo"] )

def fizzBuzz()
  for x in 0..100 do
    if x % 3 == 0 && x % 5 == 0
      puts "FizzBuzz"
    elsif x % 3 == 0
      puts "Fizz"
    elsif x % 5 == 0
      puts "Buzz"
    else
      puts x
    end
  end
end

# puts fizzBuzz()
