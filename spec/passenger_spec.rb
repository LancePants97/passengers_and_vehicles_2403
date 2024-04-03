require './lib/passenger'

RSpec.describe Passenger do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    end

    describe '#initialize' do
      it 'can initialize' do
        expect(@charlie).to be_an_instance_of(Passenger)
        expect(@charlie.name).to eq('Charlie')
        expect(@charlie.age).to eq(18)
      end

      it 'can initialize another person' do
        expect(@taylor).to be_an_instance_of(Passenger)
        expect(@taylor.name).to eq('Taylor')
        expect(@taylor.age).to eq(12)
      end
    end

    describe '#adult?' do
      it 'can determine if a person is an adult' do
        expect(@charlie.adult?).to be (true)
        expect(@taylor.adult?).to be (false)
      end
    end

    describe '#drive' do
      it 'is not a driver by default' do
        expect(@charlie.driver?).to be (false)
        
        @charlie.drive

        expect(@charlie.driver?).to be (true)
      end
    end
end