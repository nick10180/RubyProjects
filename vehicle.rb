class Vehicle
    attr_reader :make, :model, :year, :max_passengers;
    attr_writer :make, :model, :year, :max_passengers;

    def initialize(nmake, nmodel, nyear, nmax_passengers)
        @make = nmake;
        @model = nmodel;
        @year = nyear;
        @max_passengers = nmax_passengers;
    end

    def print()
        return;
    end

end

class Truck < Vehicle
    attr_reader :fuel_type;
    attr_writer :fuel_type;

    def initialize(nfuel_type, nmake, nmodel, nyear, nmax_passengers)
        @fuel_type = nfuel_type;
        super(nmake, nmodel, nyear, nmax_passengers);
    end

    def print()
        puts("Make: "+make.to_s+"\n"+"Model: "+model.to_s+"\n"+"Year: "+year.to_s+"\n"+"Fuel Type: "+fuel_type.to_s+"\n"+"Max Passengers: "+max_passengers.to_s)
    end
end

class Motorcycle < Vehicle
    attr_reader :color;
    attr_writer :color;

    def initialize(ncolor, nmake, nmodel, nyear, nmax_passengers)
        @color = ncolor;
        super(nmake, nmodel, nyear, nmax_passengers);
    end

    def print()
        puts("Make: "+make.to_s+"\n"+"Model: "+model.to_s+"\n"+"Year: "+year.to_s+"\n"+"Color: "+color.to_s+"\n"+"Max Passengers: "+max_passengers.to_s)
    end

end

class Car < Vehicle
    attr_reader :doors;
    attr_writer :doors;

    def initialize(ndoors, nmake, nmodel, nyear, nmax_passengers)
        @doors = ndoors;
        super(nmake, nmodel, nyear, nmax_passengers);
    end

    def print()
        puts("Make: "+make.to_s+"\n"+"Model: "+model.to_s+"\n"+"Year: "+year.to_s+"\n"+"# Doors: "+doors.to_s+"\n"+"Max Passengers: "+max_passengers.to_s)
    end
end

/Behold the power of find and replace/
puts("Truck make: ");
mymake = gets();
puts("Truck Model: ");
mymodel = gets();
puts("Truck Year: ");
myyear = gets();
puts("Truck Fuel Type: ");
myfuel = gets();
puts("Truck Max Passengers: ");
mymax = gets();

myTruck = Truck.new(myfuel, mymake, mymodel, myyear, mymax);

puts("Car make: ");
mymake = gets();
puts("Car Model: ");
mymodel = gets();
puts("Car Year: ");
myyear = gets();
puts("Car Num Doors: ");
mydoors = gets();
puts("Car Max Passengers: ");
mymax = gets();

myCar = Car.new(mydoors, mymake, mymodel, myyear, mymax)

puts("Motorcycle make: ");
mymake = gets();
puts("Motorcycle Model: ");
mymodel = gets();
puts("Motorcycle Year: ");
myyear = gets();
puts("Motorcycle Color: ");
mycolor = gets();
puts("Motorcycle Max Passengers: ");
mymax = gets();

myMotorcycle = Motorcycle.new(mycolor, mymake, mymodel, myyear, mymax)

puts("Truck:\n");
myTruck.print();
puts("Car:\n");
myCar.print();
puts("Motorcycle:\n");
myMotorcycle.print();

gets();