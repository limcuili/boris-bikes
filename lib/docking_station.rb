class DockingStation
  def release_bike
    Bike.new
  end

  def dock(bike)
    # To return the bike we dock,
    @bike = bike
  end

  attr_reader :bike
  # "attr_reader :bike" replaces the below method
  # def bike
  #   @bike
  # end
end

class Bike
  def working?
    true
  end
end
