json.array! @dogs.each do |dog|
  json.id dog.id
  json.name dog.name
  json.breed dog.breed
  json.age dog.age
  json.color dog.color
  json.link "http://localhost:3000/api/dogs/#{dog.id}"
end 