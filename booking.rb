class Booking

  attr_reader :surname, :number_of_people, :start_date, :end_date

  def initialize(surname, number_of_people, start_date, finish_date)
    @surname = surname
    @number_of_people = number_of_people
    @start_date = start_date
    @end_date = end_date
  
  end

  def print_string
    "Booking: #{surname} party of #{number_of_people} are booked into room from #{start_date} to #{end_date}"
  end


  def arrival(room)
    @room[room.number] = room
  end

  # def check_out(room)
  #   @room.delete(book_title)
  # end  

  # def show_on_loan
  #     if !@books.empty?
  #      puts "#{@name} has borrowed these books:" 
  #      @books.each{|k, book| puts "'#{book.title}'"}
  #     end 
  # end  


end