
local rX, rY, rZ = 0,0,0
local sX,sY,sZ
local facing=0
local sFacing

local function face(direction)
    while facing < direction do
        turtle.turnRight()
        facing = facing + 1
    end
    while facing > direction do
        turtle.turnLeft()
        facing = facing - 1
    end
    
end
local function digLine(dis)
    turtle.dig()
    turtle.forward()

    if facing == 0 then
        rX = rX + 1
    end
     if facing == 1 then
        rY = rX + 1
     end
     if facing == 2 then
        rX = rX - 1
     end
     if facing == 3 then
        rY = rY - 1
     end
    

    

    
end

local function digLevel(x,y)
    
    while y > 0 do
        digLine(x - 1)

        if facing == 0 then
            turtle.turnRight()
            facing = 1
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


do
    
end