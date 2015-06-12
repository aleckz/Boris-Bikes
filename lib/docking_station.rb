require_relative 'bike'


class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity
  attr_reader :bike_stash

  def initialize
    @bike_stash = []
    @capacity = DEFAULT_CAPACITY
  end

  def dock bike
    fail 'Docking station full.' if full?
    bike_stash << bike
  end

  def release_bike
  	fail 'No bikes available' if working_bikes.empty?
    bike_stash.pop
  end

end

  def working_bikes
    bike_stash.select{ |bike| bike.working? }
  end



  private



  
  def empty?
    bike_stash.empty?
  end

  def full?
    bike_stash.count >= capacity
  end

# end
