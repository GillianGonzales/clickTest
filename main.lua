-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On Feb 15 2018
--
-- Change the Background colour, Importing Text on to simulator and Importing image with a
-- event listener 
-----------------------------------------------------------------------------------------

-- Setting the background colour 
 display.setDefault( "background", 1, 1, 1 )

-- Importing text into simulator 
 local myText = display.newText( "Gillian Gonzales", 1024, 500, native.systemFont, 128 )
 myText:setFillColor( 1, 0, 0 )

 -- Importing Image into simulator 
 local Robot = display.newImageRect( "./assets/sprites/Robot.png", 500, 500 )
 Robot.x = display.contentCenterX
 Robot.y = display.contentCenterY
 Robot.id = "Robot"

-- Adding Clicking Function
local function onObjectTouch( event )
	-- Not the best but still works 
	print( "Robot Touched")

	return true
end

Robot:addEventListener("touch", onObjectTouch)