require './passenger'

RSpec describe Passenger do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    end

    describe '#initialize' do
    it 'can initialize' do
      expect(@charlie).to be_an_instance_of(Passenger)
      expect(@charlie.name).to eq('Charlie')
      expect(@ccharlie.age).to eq(12)
    end
  end






end