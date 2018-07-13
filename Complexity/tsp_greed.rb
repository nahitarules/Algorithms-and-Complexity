def nearest_possible_nieghbor(hash_of_cities)
  total_distance = 0
  arr = []
  while hash_of_cities.length > 0
    closest = hash_of_cities.values.min
    total_distance += closest
    city = hash_of_cities.key(closest)
    arr.push(city)
    hash_of_cities.delete(city)
  end
  puts "total_distance is #{total_distance}"
  travel = arr.join(" => ")
  puts "the nearest route is #{travel}"
end

cities = {"aa"=>200, "ny"=>150, "sd"=>10, "la"=>15, "lv"=>25, "sf"=>50, "oc"=>0}
oc = 'oc'

route = nearest_possible_nieghbor(cities)
