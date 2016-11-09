name = ARGV[0]
time = Time.now

holidays = [
  "Christmas",
  "New Years",
  "Native American Day",
  "Fuck Trump Day"
];

holidays_and_dates = {
  holidays[0] => "Dec 1st",
  holidays[1] => "Dec 31st - Jan 1st",
  holidays[2] => "Every day",
  holidays[3] => "Every day"
};

def timeOfDay( time )
  if time.hour < 12
    return "good morning"
  elsif time.hour >= 12 && time.hour <= 18
    return "good afternoon"
  elsif time.hour > 18
    return "good evening"
  end
end

greeting = timeOfDay( time )
puts "#{greeting} #{name}"
