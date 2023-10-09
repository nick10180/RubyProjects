class Coin
    /
    Class that implements a coin
    Methods: sideUp, toss
    Requires: None
    Nicholas Pullara 1:30 P.M. EST 10-09-23
    Last edited: 3:00 P.M. EST 10-09-23
    /
    attr_reader :sideUp
    attr_writer :sideUp
    
    def initialize(sideUp="tails")
        @sideUp = sideUp
    end

    def toss()
       #Oh my god in Ruby 0 is truthy.
      @sideUp = rand(100) % 2  == 1 ? "tails" : "heads"
    end


end

bal = 0
wins = 0
losses = 0

dime = Coin.new()
quarter = Coin.new()
nickel = Coin.new()

while 1
input = ""
#Ruby arrays are practicallly just like python lists, you can do ridiculous stuff.
message = [["Nickel", nickel.sideUp], ["Dime", dime.sideUp], ["Quarter", quarter.sideUp]]
dbal = bal.to_f/100
puts sprintf("Balance: $%0.02f\n", dbal)
message.each { |name, value| puts name.ljust(10) + value}
puts "Press enter to flip the coins."
gets

dime.toss()
quarter.toss()
nickel.toss()
    if dime.sideUp == "heads"
        bal = bal + 10
    elsif quarter.sideUp == "heads"
        bal = bal + 25
    elsif nickel.sideUp == "heads"
        bal = bal + 5
    end
    if bal >= 100
        losses = losses + 1
        message = [["Nickel", nickel.sideUp], ["Dime", dime.sideUp], ["Quarter", quarter.sideUp]]
        dbal = bal.to_f/100
        puts sprintf("Balance: $%0.02f\n", dbal)
        message.each { |name, value| puts name.ljust(10) + value}
    end
    if bal == 100
        wins = wins + 1
        puts "Congradutation! You win! " + wins.to_s + " wins! Try again? \"y\" or \"n\""
        while (input != "n\n" && input != "y\n")
            input = gets
         end
        if input == "n\n"
            puts wins.to_s + " wins! " + losses.to_s + " losses."
            gets
            break
        elsif input == "y\n"
            bal = 0
            dbal = 0
        end
        
    elsif bal > 100
            puts "Bust, " +  + wins.to_s + " wins. try again? \"y\" or \"n\""
            while (input != "n\n" && input != "y\n")
                input = gets
             end
        if input == "n\n"
            puts wins.to_s + " wins! " + losses.to_s + " losses."
            gets
            break
        elsif input == "y\n"
            bal = 0            
            dbal = 0
        end
    end
    

end