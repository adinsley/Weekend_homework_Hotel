require ('pry-byebug')
require_relative ('hotel')
require_relative('room')
require_relative('booking')
require_relative('hotel_month')

# hotel = Hotel.new("Hilton", "23rd")


rooms_double = 10.times.map { |i| Room.new((i+1), 2) } 
rooms_single = 10.times.map { |i| Room.new((i+11), 1) } 

hotel = Hotel.new('Hilton', 01)
hotel2 = Hotel.new('Hilton', 02)
hotel_jan = Month.new('Jan')

rooms_double.each { |room| hotel.add_room(room) }
rooms_single.each { |room| hotel.add_room(room) }

hotel_jan.add_days(hotel)
hotel_jan.add_days(hotel2)

# Get hotel Capacity_____________________________


# Take some bookings
hotel.rooms[1].take_booking(Booking.new("Andrew", 2, "15th", "17th"))
hotel.rooms[2].take_booking(Booking.new("John", 2, "15th", "17th"))

hotel.rooms[3].take_booking(Booking.new("Carrie", 4, "15th", "17th"))


hotel.rooms[15].take_booking(Booking.new("Ray", 1, "15th", "17th"))









# Make so can't double  book a room
hotel.rooms[3].take_booking(Booking.new("Carrie", 1, "15th", "17th"))

# Show availability of the hotel

hotel.hotel_availability


# This will show a list of the rooms available

hotel.list_rooms

# Amount of people in the hotel________________

hotel.people_in_hotel

#Money being made
hotel.revenue


binding.pry; ''







# puts hotel.name
# puts room_1.occupancy_max





