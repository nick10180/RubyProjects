class Circle
    /
    Class that implements a circle
    Methods: radius, getArea, getCircumference
    Requires: Ruby::Math
    Nicholas Pullara 4:07 P.M. EST 8-29-23
    Last edited: 2:41 P.M. EST 9-11-23
    /
    
    #The @@ is like a static variable in cpp, only one memory location is allocated for the whole class.
    @@pi = Math::PI

        attr_reader :radius
        attr_writer :radius

    def initialize(radius = 0)
        @radius = radius
    end

    def getArea
        @@pi * radius * radius
    end
    /This somehow blocks getCircumference from being inherited/
      
    def +(obj)
        return Circle.new(self.radius + obj.radius)
    end

    def getCircumference
        @@pi * 2 * radius
    end

    /The self.inherited method is a mystery to me some guy on stackoverflow said that this is how you stop inhertence for a single method, it broke./
    #def self.inherited(magicword)
    #    magicword.send(:define_method , getCircumference) do
    #        raise NoMethodError
    #    end
    #end

    def getDiameter
        2 * radius
    end

end

class Sphere < Circle
    def getVolume
        @@pi * 4/3 * radius * radius * radius
    end
end

/A circle of radius five/
badCricle = Circle.new()
puts "Radius of Default Circle is: " +badCricle.radius.to_s
puts "What is the radius of your circle? : "
/Create the new instance/
myradius = gets.to_f
myCircle = Circle.new(myradius)

/Print the calculations/
puts "The Radius of the circle is: " + myCircle.radius.to_s
puts "The Diameter of the circle is: " + myCircle.getDiameter.to_s
puts "The area of the circle is: " + myCircle.getArea.to_s
puts "The Circumference of the circle is: " + myCircle.getCircumference.to_s

badCricle.radius = 5
puts "The circumference of a circle if you added the radius of \na second circle of radius five to yours: " + (badCricle + myCircle).getCircumference.to_s

puts "What is the radius of another circle? : "

/Demonstrate attr_writer/   
myradius = gets.to_f
myCircle.radius = myradius
puts myradius.to_s

/Demonstrate Overriding/
mySphere = Sphere.new(myradius)
puts "Volume of a sphere of new radius" + mySphere.getVolume.to_s
/puts "The circumference of a sphere?!? : " + mySphere.getCircumference.to_s/