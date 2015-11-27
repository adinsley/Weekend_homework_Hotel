class Hotel

  attr_reader :name, :date, :rooms, :booking
  
  def initialize(name)
    @name = name
    # @date = date
    @rooms = {}
  end

  def add_room(room)
    @rooms[room.number] = room
  end


  def list_rooms
    if @rooms.empty?
      puts "No rooms"
        else
          room_list_string = @rooms.map do |key, room| 
            room.room_string
        end
    end
        room_list_string.join("\n")
  end

  def hotel_capacity
    capacity_array = @rooms.map{|k, room| room.occupancy}
    capacity_array.inject(:+)
  end

  def hotel_occupancy
    occupancy =0
    @rooms.each{|k, room| occupancy += room.occupancy if room.bookings != {}}
    puts "Occupancy of hotel is #{occupancy}"
  end

  def hotel_availability
    availability = 0
    @rooms.each{|k, room| availability += room.occupancy if room.bookings == {}}
    puts "Availability in #{@name} is #{availability}"
  end

  def check_in(surname, room_number)
    group = @booking[surname]
    room = @room.delete(room_number)
    booking1.arrival(room)
  end

  

end