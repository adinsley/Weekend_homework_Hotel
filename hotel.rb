class Hotel

  attr_reader :name, :date, :rooms 
  
  def initialize(name, date)
    @name = name
    @date = date
    @rooms = {}
  end

  def add_room(room)
    @rooms[room.number] = room
  end


  def list_rooms
    @rooms.each do |key, room|
      if room.bookings !={}
      puts "#{room.number} is not available, it is booked by #{room.bookings.map {|key, booking| booking.surname}[0]}"
      else 
      puts  "Room #{room.number} has a max occupancy of #{room.occupancy} tonights rate is £#{room.rate}"
      end
    end
  end

  def hotel_capacity
    capacity_array = @rooms.map{|k, room| room.occupancy}
    capacity_array.inject(:+)
  end

  # def hotel_occupancy
  #   occupancy =0
  #   @rooms.each{|k, room| occupancy += room.occupancy if room.bookings != {}}
  #   puts "Occupancy of hotel is #{occupancy}"
  # end

  def hotel_availability
    availability = 0
    @rooms.each{|k, room| availability += room.occupancy if room.bookings == {}}
    puts "Availability in #{@name} is #{availability}"
  end

  def people_in_hotel
    occupancy = 0
    @rooms.each{|key, room| occupancy += room.bookings.map{|key, booking| booking.number_of_people}[0] if room.bookings != {} }
    puts "There are #{occupancy} people in the hotel tonight"
  end

  def revenue
    todays_revenue = 0
    @rooms.each{|k, room| todays_revenue += room.rate if room.bookings != {}}
    puts "The revenue from todays bookings is £#{todays_revenue}"
  end

  

  

end