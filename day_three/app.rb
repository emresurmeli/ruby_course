require 'rainbow'
require 'geocoder'
require 'geolocater'
require 'socket'
require 'net/http'
require 'pry'

uri = URI('http://www.google.com/search?q=my+ip&oq=my+ip&aqs=chrome..69i57j0l5.815j0j1&sourceid=chrome&ie=UTF-8')
hello = Net::HTTP.get(uri).to_s
puts hello

network_ip_regex = /\b(?:[0-9]{1,3}\.){3}[0-9]{1,3}\b/
extract_network_ip = network_ip_regex.match(hello).to_s

where_am_i = Geolocater.geolocate_ip(extract_network_ip)
puts Rainbow(where_am_i).purple
