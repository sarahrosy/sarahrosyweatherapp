require 'yahoo_weatherman'
puts "Where are you right now? (enter zipcode)"
location = gets.chomp
client = Weatherman::Client.new
weather = client.lookup_by_location(location)

puts "In #{weather.location['city']} the weather is currently #{weather.condition['text']}."

i=1
while (i<5)
  day = "On #{weather.forecasts[i]['day']}"
  if (i==1)
      day = "Tomorrow"
  end
  puts "#{day}, the temperature will range between #{weather.forecasts[i]['low']} and #{weather.forecasts[i]['high']}. The forecast is #{weather.forecasts[i]['text']}."
   i+=1
end
