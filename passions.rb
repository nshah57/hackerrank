# https://www.hackerrank.com/contests/booking-passions-hacked-backend/challenges/a-couple-and-their-passions/copy-from/6578644

def distance(lat1, lat2, long1, long2)
  lat1, lat2, long1, long2 = [lat1, lat2, long1, long2].map { |degree|
    degree * Math::PI / 180.0
  }

  Math.acos( Math.sin(lat1) * Math.sin(lat2) + 
             Math.cos(lat1) * Math.cos(lat2) * 
             Math.cos(long2 - long1 ) ) * 6371
end

no_of_guests  = gets.to_i
guest_details = []
destination_details = []

no_of_guests.times do |guest|
    guest_details << gets.split(' ')
end

guest_activities = guest_details.flat_map { |gd| gd[1..-1] }.uniq

no_of_destinations = gets.to_i

no_of_destinations.times  do |guest|
    destination_details << gets.split(' ')
end

hash = {}

destination_details.each_with_index do |d, index|
  distance_from_others = {}
  forward_cities = destination_details[(index + 1)..-1]
  forward_cities.each do |city|
    key= "#{d[0]}_#{city[0]}"

    hash[key]  = { common: (( d[4..-1] + city[4..-1] ).uniq & guest_activities).count,
                   distance: distance(d[1].to_f, city[1].to_f, d[2].to_f, city[2].to_f) }
  end
end


sorted_hash = hash.sort_by { |k, v| [ -v[:common], v[:distance] ] }
puts sorted_hash.first[0].split('_').sort.join(' ')
