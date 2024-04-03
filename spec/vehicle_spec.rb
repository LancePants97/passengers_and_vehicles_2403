require './lib/vehicle'

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    describe '#initialize' do
      it 'can initialize' do
        expect(@vehicle).to be_an_instance_of(Vehicle)
        expect(@vehicle.year).to eq('2001')
        expect(@vehicle.make).to eq("Honda")
        expect(@vehicle.model).to eq("Civic")
      end
    end

    describe '#speed' do
      it 'is not speeding by default' do
        expect(@vehicle.speeding?).to be (false)
        
        @vehicle.speed

        expect(@vehicle.speeding?).to be (true)
      end
    end

end