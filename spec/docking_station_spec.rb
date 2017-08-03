require './lib/docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_a_bike }

  it 'can release a new bike' do
    station = DockingStation.new
    bike = station.release_a_bike
    expect(bike).to_not eq 0
  end

  it 'can release a new working bike' do
    station = DockingStation.new
    bike = station.release_a_bike
    expect(bike.working?).to eq true
  end

  it { is_expected.to respond_to(:dock_a_bike).with(1).argument }

end
