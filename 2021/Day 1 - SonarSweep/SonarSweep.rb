def amountOfDepthIncreases

    # AoC Puzzle Key
    path = __dir__ + "./PuzzleInput.txt"
    data = File.read(path).split.map(&:to_i)

    # Amount of times the depth increased from the previous depth
    depthIncreasedFromPrev = 0

    # Previous depth
    previousDepth = 0

    # For each depth: compare with previous depth
    # If current depth is greater than previous depth, increment counter and save current depth  
    data.each do |currentDepth|

        if ((currentDepth > previousDepth) and (previousDepth != 0)) 
            depthIncreasedFromPrev = depthIncreasedFromPrev + 1 
        end
        
        previousDepth = currentDepth

    end 

    # Return amount of times the depth increased
    return depthIncreasedFromPrev

end

def sumsOfThreeDepths
    
    # AoC Puzzle Key
    path = __dir__ + "./PuzzleInput.txt"
    data = File.read(path).split.map(&:to_i)

    for 

end

# Print amount of times the depth increased
puts amountOfDepthIncreases

# Print amount of times the sum of 3 depths increased
puts 