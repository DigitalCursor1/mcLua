
local facing=0


local function face(direction)
    
end
local function digLine(dis)
    
end

local function digLevel(x,y)
    
    while y > 0 do
        digLine(x - 1)

        if facing == 0 then
            turtle.turnRight()
            digLine(1)
            turtle.turnRight()
            facing = 2
            
        else
            turtle.turnLeft()
            digLine(1)
            turtle.turnLeft()
            facing = 1
        end
        
        y = y - 1
    end

end