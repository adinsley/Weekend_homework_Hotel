class Month


  def initialize(month)
    @month = month
    @hotel = {}
  end


  def add_days(hotel)
    @hotel[hotel.date] = hotel
  end



end