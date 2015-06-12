require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'release working bike' do
  	subject.dock(double :bike, working?: true)
    bike = subject.release_bike
  	expect(bike).to be_working
  end


  describe 'release_bike' do

    it 'raises an error when no bikes available' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end

    # it 'does not release broken bikes' do
    #   bike = Bike.new
    #   bike.report_broken
    #   subject.dock(bike)
    #   expect {subject.release_bike}.to raise_error 'No bikes available'
    # end

    it 'does not release broken bikes' do
      bike = double :bike, working?: false
      subject.dock(bike)
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end

  end

  describe 'dock' do
    it 'raise an error when docking station is full' do
      subject.capacity.times{subject.dock double :bike}
      expect {subject.dock double :bike}.to raise_error 'Docking station full.'
    end
  end

    it 'has a DEFAULT capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end


# end
