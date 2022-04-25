def amountOfSlidingWindowIncreases(array)
    
    # Amount of times the depth increased from the previous depth
    depthIncreasedFromPrev = 0

    # Previous depth
    previousDepth = 0

    # For each depth: compare with previous depth
    # If current depth is greater than previous depth, increment counter and save current depth  
    array.each do |currentDepth|

        if ((currentDepth > previousDepth) and (previousDepth != 0)) 
            depthIncreasedFromPrev = depthIncreasedFromPrev + 1 
        end
        
        previousDepth = currentDepth

    end 

    # Return amount of times the depth increased
    return depthIncreasedFromPrev

end

# Part 1
def slidingWindowIncreasesFromInput

    # AoC Puzzle Input from file
    path = __dir__ + "./PuzzleInput.txt"
    array = File.read(path).split.map(&:to_i)

    return amountOfSlidingWindowIncreases(array)

end

# Part 2 
def sumsOfThreeDepths
    
    # AoC Puzzle Input from file
    path = __dir__ + "./PuzzleInput.txt"
    array = File.read(path).split.map(&:to_i)

    size = array.size

    sums = []

    for index in 0..(size-1) do
        unless (index >= size - 2)
            sum = array[index] + array[index + 1] + array[index + 2]
            sums.push(sum)
        end
    end

    return amountOfSlidingWindowIncreases(sums)

end

# Part 1 - Print amount of times the depth increased compared to previous depth
puts slidingWindowIncreasesFromInput

# Part 2 - Print amount of times the sum of 3 following depths increased compared to previous sum of 3 depths
puts sumsOfThreeDepths