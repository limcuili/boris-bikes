class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  attr_reader :bikes
  attr_reader :capacity
  # "attr_reader :bike" replaces the below method
  # def bike
  #   @bike
  # end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    # To return the bike we dock
    @bikes << bike
    @bikes[@bikes.size - 1]
  end


private
  def full?
    !!(@bikes.size >= @capacity)
  end

  def empty?
    !!(@bikes.empty?)
  end

end

class Bike
  def working?
    true
  end
end
