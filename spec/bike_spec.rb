require_relative '../lib/bike_class.rb'
describe Bike do
  it { should respond_to(:working?) }
end
