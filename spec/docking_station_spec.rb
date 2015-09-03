require '~/Projects/borisbikes/lib/docking_station.rb'
describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it "releases working bikes" do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it "raises an error when there are no bikes" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end
  it "raises an error when station is full" do
    subject.capacity.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error "Docking station full"
  end
  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
end