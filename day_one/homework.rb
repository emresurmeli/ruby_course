# TEXT FREQUENCY COUNTER

file = ARGV[0]
file_content = File.open(file)

def file_to_string( file )
  string = String.new
  string = file.read
  return string
end

file_text = file_to_string( file_content )

def extract_words( string )
  to_lowercase = string.downcase
  return to_lowercase.split(/\W+/)
end

words = extract_words( file_text )

def frequency_counter( array )
  frequecy_object = Hash.new(0)
  array.each { |word|
    frequecy_object[ word ] += 1
  }
  sorted = frequecy_object.sort { |word, count|
    word[1]<=>count[1]
  }.to_h
  return sorted
end

frequency_of_words = frequency_counter( words ).to_a.reverse.to_h
puts frequency_of_words

