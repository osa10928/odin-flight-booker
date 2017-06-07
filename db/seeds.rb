# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Seed Airport objects
Airport.create!(name: "SFO")
Airport.create!(name: "NYC")


# Seed Flight objects
start_time = DateTime.new(2017,5,5,12)
start_id = 1
finish_id = 2
Flight.create!(start_time: start_time,
				duration: (start_time + 5.hours),
				start_id: start_id,
				finish_id: finish_id)
(1..9).each do |n|
	n *= 8
	start_time = (start_time.to_time + n.hours).to_datetime
	Flight.create!(start_time: start_time,
				duration: (start_time + 5.hours),
				start_id: start_id,
				finish_id: finish_id)
end

start_time = DateTime.new(2017,5,5,8)
start_id = 2
finish_id = 1
Flight.create!(start_time: start_time,
				duration: (start_time + 5.hours),
				start_id: start_id,
				finish_id: finish_id)
(1..9).each do |n|
	n *= 8
	start_time = (start_time.to_time + n.hours).to_datetime
	Flight.create!(start_time: start_time,
				duration: (start_time + 5.hours),
				start_id: start_id,
				finish_id: finish_id)
end
