class Submarine
    def initialize
        @horisontalPosition = 0
        @depth = 0
    end

    def getDepth
        return @depth
    end

    def getHorizontalPosition
        return @horisontalPosition
    end

    def forward(steps)
        @horisontalPosition += steps
    end

    def up(steps)
        @depth -= steps
    end

    def down(steps)
        @depth += steps
    end

    def parseOrder(order)

        # Splits the order into an array where the first element is the order 
        # and the second element is the amount of steps
        rawOrder = order.split(" ")

        # Case switch of the different valid orders
        case rawOrder[0]
        when "forward"
            self.forward(rawOrder[1].to_i)
        when "up"
            self.up(rawOrder[1].to_i)
        else "down" 
            self.down(rawOrder[1].to_i)
        end
    end
end


def main

    # AoC Puzzle Input from file
    path = __dir__ + "./PuzzleInput.txt"
    array = File.read(path).split

    # Creates submarine instance and parses the input file orders
    submarine = Submarine.new

    # Parses each order from the array
    array.each { |order| submarine.parseOrder(order) }
    
    # Calculates the product (depth * horisontalPosition)
    puts "Product: #{(submarine.getDepth * submarine.getHorizontalPosition)}"
end

main