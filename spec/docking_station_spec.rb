require_relative '../lib/docking_station_class.rb'
describe DockingStation do
  it { expect respond_to :release_bike }
  it "releases working bikes" do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { expect respond_to(:dock).with(1).argument }

    describe '#release_bike' do
      it "raises an error when there are no bikes available" do
        expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end
end
