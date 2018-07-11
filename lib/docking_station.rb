class DockingStation
  def release_bike
    Bike.new
  end
end

class Bike
  def working?
    true
  end

end

station = DockingStation.new
bike = station.release_bike
bike.working?
