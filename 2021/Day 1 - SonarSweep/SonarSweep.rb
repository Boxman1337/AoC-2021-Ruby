def amountOfDepthIncreases

    # AoC Puzzle Key
    depths = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263];
    
    # Amount of times the depth increased from the previous depth
    depthIncreasedFromPrev = 0;

    # Previous depth
    previousDepth = 0;

    # For each depth: compare with previous depth
    # If current depth is greater than previous depth, increment counter and save current depth  
    depths.each do |currentDepth|

        if ((currentDepth > previousDepth) and (previousDepth != 0)) 
            depthIncreasedFromPrev = depthIncreasedFromPrev + 1; 
        end
        
        previousDepth = currentDepth;

    end 

    # Return amount of times the depth increased
    return depthIncreasedFromPrev;

end

# Print amount of times the depth increased
print amountOfDepthIncreases;