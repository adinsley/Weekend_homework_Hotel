class Room

  attr_reader :floor, :number, :rate, :occupancy, :bookings

  def initialize(number, occupancy)
    @number = number
    @floor = 1
    @rate = occupancy * 25
    @occupancy = occupancy
    @bookings = {}
  end

  def take_booking(booking)

    if booking.number_of_people > occupancy
      puts "Room is not big enough for group size. Max occupancy is #{occupancy}"
    elsif @bookings == {}
    @bookings[booking.surname] = booking
    else  
      puts "Room is already booked"
    end
  end

  def get booking_names
    @booking.map{|key, booking| booking.surname}
  end
 
end




