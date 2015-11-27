require ('pry-byebug')
require_relative ('hotel')
require_relative('room')
require_relative('booking')

# hotel = Hotel.new("Hilton", "23rd")


rooms = 10.times.map { |i| Room.new((i+1), 2) }

hotel = Hotel.new('Hilton')

rooms.each { |room| hotel.add_room(room) }

# Get hotel Capacity_____________________________
puts hotel.hotel_capacity

# Take some bookings
hotel.rooms[1].take_booking(Booking.new("Andrew", 2, "15th", "17th"))
hotel.rooms[2].take_booking(Booking.new("Andrew", 2, "15th", "17th"))

# Show occupancy of the hotel
hotel.hotel_occupancy
hotel.hotel_availability






# puts hotel.name
# puts room_1.occupancy_max





