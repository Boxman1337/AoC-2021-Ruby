class Submarine
    
    @@horisontalPosition = 0
    @@depth = 0

    def forward(steps)
        horisontalPosition = horisontalPosition + steps
    end

    def up(steps)
        depth = depth - steps
    end

    def down(steps)
        depth = depth + steps
    end

end