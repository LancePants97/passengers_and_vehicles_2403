require './lib/passenger'

class Vehicle

    attr_reader :year, :make, :model
    attr_accessor :passengers, :num_adults, :add_adults


    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speeding = false
        @passengers = []
        @num_adults = 0
    end

    def speeding?
        @speeding
    end

    def speed
        @speeding = true
    end

    def add_passenger(rider)
        @passengers << rider
    end

    def add_adults
        @passengers.each do |passenger|
            if passenger["age"] >= 18
                @num_adults += 1
            end
        end

    end
end