require_relative 'bike'


class DockingStation

  def dock bike
    bikes_stash = []
    fail 'Docking station full.' if @bike == 20
    @bike = bike
  end

  def release_bike
  	fail 'No bikes available' unless @bike
    @bike
  end


end
