require_relative 'bike'


class DockingStation

  def initialize
    @bike_stash = []
  end

  def dock bike
    fail 'Docking station full.' if @bike_stash.length >= 20 
    @bike_stash << bike
  end

  def release_bike
  	fail 'No bikes available' if @bike_stash.empty?
    @bike_stash.pop
  end


end
