class Passenger
    attr_reader :name, :age

    def initialize(trait)
        @name = trait["name"]
        @age = trait["age"]
    end

    def adult?
        if @age >= 18
            true
        else
            false
    end
end