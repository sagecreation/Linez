local composer = require( "composer" )
local gameData = require( "gameData" )
local levelData = require( "levels.level"  .. gameData.level )
local buildLevel = require( "buildLevel" )
local scene = composer.newScene()

local getLevelData

-------------------------------------------------------  source  -------------------------------------------------------

local function changeScene()
	composer.gotoScene( "game" )
	return true
end

function getLevelData( data )
	local gameData = levelData[1]

	for x = 1, #gameData do
		local dataType = gameData[x].data
		if data == dataType then
			return gameData[x][1]
		end
	end
end

function scene:create( event )

   	local sceneGroup = self.view

   	if composer.getSceneName( "previous" ) ~= nil then
   		composer.removeScene( composer.getSceneName( "previous" ) )
   	end

   	local backgroundData = getLevelData( "background" )

	background = buildLevel.buildBackGround( backgroundData )
		sceneGroup:insert( background )
end

-- "scene:show()"
function scene:show( event )

   local sceneGroup = self.view
   local phase = event.phase

   if ( phase == "will" ) then
	   checkMemory()

   elseif ( phase == "did" ) then
	   changeScene()
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
