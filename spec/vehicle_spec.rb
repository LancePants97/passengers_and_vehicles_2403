require './lib/vehicle'
require './lib/passenger'

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

    describe '#add passenger' do
      it 'is has no passenger by default' do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        expect(@vehicle.passengers).to eq ([])
        
        @vehicle.add_passenger(@charlie)

        expect(@vehicle.passengers).to eq([@charlie])
      end

      it 'is can add passengers' do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        
        expect(@vehicle.passengers).to eq ([])
        
        @vehicle.add_passenger(@charlie)
        @vehicle.add_passenger(@jude)
        @vehicle.add_passenger(@taylor)

        expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
      end
    end

    describe '#num adults' do
      it 'has no adults by default' do
        expect(@vehicle.num_adults).to eq(0)
      end
      it 'can add adults' do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        
        expect(@vehicle.num_adults).to eq(0)

        @vehicle.add_passenger(@charlie)
        @vehicle.add_passenger(@jude)
        @vehicle.add_passenger(@taylor)

        expect(@vehicle.num_adults).to eq(2)        

      end
    end

end