local composer = require( "composer" )
local gameData = require( "gameData" )
local buildLevel = require( "buildLevel" )
local scene = composer.newScene()

local letters = {}

local function changeScene()
	composer.gotoScene( "game" )
	return true
end

function scene:create( event )

   	local sceneGroup = self.view

   	if composer.getSceneName( "previous" ) ~= nil then
   		composer.removeScene( composer.getSceneName( "previous" ) )
   	end

	audio.resume( backgroundMusic )

	local row = 1
	local column = 1
	local squareSize = 30
	local squaresAccross = math.floor( actualWidth / ( squareSize * 1.5 ) ) + 5
	local squaresDown = math.floor ( actualHeight / ( squareSize * 1.5 ) ) + 5

	for x = 1, ( squaresAccross * squaresDown ) do
		local cellResults = buildLevel.buildCell( row, column, squareSize, squaresAccross, squaresDown, "splash", "black" )
		row = cellResults.row
		column = cellResults.column
		transition.to( cellResults.cell, { alpha = cellResults.cell.targetAlpha, time = 500 } )
		sceneGroup:insert( cellResults.cell )
	end

	for x = 1, 5 do
		local letterX = 0
		local letterY = 0
		local finalX = 0
		local image
		if x == 1 then
			letterX = 600
			letterY = 2000
			finalX = display.contentCenterX - 380
			image = "L.png"
		elseif x == 2 then
			letterX = 5000
			letterY = -2000
			finalX = display.contentCenterX - 190
			image = "I.png"
		elseif x == 3 then
			letterX = -2000
			letterY = 300
			finalX = display.contentCenterX
			image = "N.png"
		elseif x == 4 then
			letterX = 300
			letterY = 2000
			finalX = display.contentCenterX + 190
			image = "E.png"
		else
			letterX = 2000
			letterY = -2000
			finalX = display.contentCenterX + 380
			image = "Z.png"
		end
		local letter = display.newImage( "images/splash/" .. image, finalX, -1000 )
		letters[#letters + 1] = letter
		sceneGroup:insert( letter )
	end
end

-- "scene:show()"
function scene:show( event )

   local sceneGroup = self.view
   local phase = event.phase

   if ( phase == "will" ) then

   elseif ( phase == "did" ) then

	   local function returnLetter( id )
		   letters[id].y = -5000
		   transition.to( letters[id], { y = display.contentCenterY, time = 1000, transition = easing.outElastic } )
	   end

		transition.to( letters[1], { y = 2000, time = 150, delay = 1000, iterations = 5, onComplete = function() returnLetter( 1 ) end } )
		transition.to( letters[4], { y = 2000, time = 150, delay = 1100, iterations = 5, onComplete = function() returnLetter( 2 ) end } )
		transition.to( letters[3], { y = 2000, time = 150, delay = 1200, iterations = 5, onComplete = function() returnLetter( 3 ) end } )
		transition.to( letters[2], { y = 2000, time = 150, delay = 1300, iterations = 5, onComplete = function() returnLetter( 4 ) end } )
		transition.to( letters[5], { y = 2000, time = 150, delay = 1400, iterations = 5, onComplete = function() returnLetter( 5 ) end } )

		transition.to( letters[1], { alpha = 0, time = 150, delay = 6000 } )
		transition.to( letters[4], { alpha = 0, time = 150, delay = 6100 } )
		transition.to( letters[3], { alpha = 0, time = 150, delay = 6200 } )
		transition.to( letters[2], { alpha = 0, time = 150, delay = 6300 } )
		transition.to( letters[5], { alpha = 0, time = 150, delay = 6400 } )

		checkMemory()


		timer.performWithDelay( 7000, changeScene )
   end
end

function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then


	elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
	end
end

function scene:destroy( event )

   local sceneGroup = self.view

end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene
