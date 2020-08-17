local composer = require( "composer" )
local gameData = require( "gameData" )
local buildLevel = require( "buildLevel" )
local scene = composer.newScene()

local function changeScene()
	composer.gotoScene( "menu" )
	return true
end

function scene:create( event )

   	local sceneGroup = self.view

   	if composer.getSceneName( "previous" ) ~= nil then
   		composer.removeScene( composer.getSceneName( "previous" ) )
   	end

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

	local title = buildLevel.buildTitleMenu( grid )
	sceneGroup:insert( title )
	transition.to( title, { alpha = 1, time = 1000 } )

	local info = buildLevel.buildInfo()
	info.menuButton:addEventListener( "tap", changeScene )
	sceneGroup:insert( info.menuButton )
	sceneGroup:insert( info.gameDesign )
	sceneGroup:insert( info.music )
	sceneGroup:insert( info.specialThanks )

end

-- "scene:show()"
function scene:show( event )

   local sceneGroup = self.view
   local phase = event.phase

   if ( phase == "will" ) then

   elseif ( phase == "did" ) then



		checkMemory()

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
