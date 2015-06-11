require_relative 'bike'


class DockingStation

  def release_bike
  	@bike = Bike.new
  end

  def dock bike
    @bike = bike
  end

end
