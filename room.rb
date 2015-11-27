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
    @bookings[booking.surname] = booking
  end

  def room_string
    "Room #{@number} has a max occupancy of #{@occupancy}"
  end

  # def features
  #   puts "Room has following features: Single Bed, Sat TV, Mini-Bar, well equipped bathroom"
  # end

  # def occupancy_max
  #   @occupancy
  # end

end

# class DoubleRoom < Room

#   def occupancy_max
#     @occupancy * 2
#   end

#   def rack_rate
#     @rate * 1.75
#   end

#   def features
#     puts "Room has following features: Double Bed, Sat TV, Mini-Bar, well equipped bathroom"
#   end

# end