def subtract_by_one( number )
  puts number
  number = number - 1
  number == 0 ? ( return number ) : subtract_by_one( number )
end
