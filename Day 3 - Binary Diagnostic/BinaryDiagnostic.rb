def calculateGammaRate(array)

    # Standard length of the array elements
    length = 12

    # The most common bit for each index is stored in gammaRate
    gammaRate = []

    # Iterate over each index and calulate the most common bits
    for i in 0..length-1

        # Each bit for index i from the current binary 
        indexes = []

        array.each do |binary|
            indexes.push(binary[i].strip)
        end 

        # Most common bit value for index i from the current binary
        mostCommonValue = mostCommonValue(indexes)

        gammaRate.push(mostCommonValue)
        
    end

    return gammaRate.join("").to_i(2)

end

# Returns the most common value of the input array (".first" means most common bit value)
def mostCommonValue(array)
    return array.group_by(&:itself).values.max_by(&:size).first
end

def bitwiseFlip(bits)
    return bits ^ (1 << bits.bit_length) - 1
end

# Main method
def main

    # AoC Puzzle Input from file
    path = __dir__ + "./PuzzleInput.txt"
    array = File.readlines(path)

    gammaRate = calculateGammaRate(array)
    puts gammaRate

    epsilonRate = bitwiseFlip(gammaRate)
    puts epsilonRate

    puts "Product : #{(gammaRate * epsilonRate)}"

end

main