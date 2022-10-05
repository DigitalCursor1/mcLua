---@diagnostic disable: unused-label


--[[
    Author: Aidan Cork, Aka Digital Cursor
    Project: cc:tweaked turlte quarry script
]]

::start::
print("Begin by placing the turtle and a chest behind it and another chest to the right. Put fuel in the left sided chest.The turtle will deposit its inventory into the back one. To begin type y")
local response = io.read()


if not response == "y" then
print("thats not y, try again")

goto start

end

local rX, rY ,rZ = 0,0,0 --reletive x y z
local facing = 0 -- 0=frwd, 1 = right, 1 = back , 
local lX, lY, lZ         --last x y z, used to rember were it left off to get fue 







print("How many blocks forward?")
local gX = io.read("*n")

print("How Many blocks to the right?")
local gZ = io.read("*n")

print("How many blocks down?")
local gY = io.read("*n")

turtle.select(0)
turtle.turnLeft()
turtle.suck()


turtle.digDown()
turtle.down()

digLine(gX)





local function digLine(dis)
    repeat
        turtle.dig()
        turtle.forward()
        local mv = mv + 1

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
        
    until mv == dis

    
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
