require_relative 'bike'


class DockingStation

  def initialize
    @bike_stash = []
  end

  def dock bike
    fail 'Docking station full.' if full?
    @bike_stash << bike
  end

  def release_bike
  	fail 'No bikes available' if empty?
    @bike_stash.pop
  end








  private

  def empty?
    @bike_stash.empty?
  end

  def full?
    @bike_stash.count >= 20
  end

end
