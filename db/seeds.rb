# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cuisines = ["Thai", "Italian", "Continental"]
cuisines.each do |name|
	CuisineType.create(name: name)
end

20.times do
	r = Restaurant.new
	r.name = Faker::Company.name
	r.capacity = rand(5..20)
	r.cuisine_type_id = CuisineType.first.id
	r.save
end