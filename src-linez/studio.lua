local composer = require( "composer" )
local gameData = require( "gameData" )
local scene = composer.newScene()

local backgroundPaint = { 0, 0, 0 }
local studioBackground
local logo
-------------------------------------------------------  source  -------------------------------------------------------

local function changeScene()
	composer.gotoScene( "splash" )
	return true
end

function scene:create( event )

   	local sceneGroup = self.view

   	if composer.getSceneName( "previous" ) ~= nil then
		composer.removeScene( composer.getSceneName( "previous" ) )
	end
	
	studioBackground = display.newRect( display.contentCenterX, display.contentCenterY, actualWidth, actualHeight )
	studioBackground.fill = backgroundPaint
	sceneGroup:insert( studioBackground )

    logo = display.newImage( "images/studio/quarantineGamesLogo.png", 0, 0 )
   	logo.x = display.contentCenterX
   	logo.y = display.contentCenterY
	sceneGroup:insert( logo )
	   


end

-- "scene:show()"
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
	elseif ( phase == "did" ) then

		transition.to( logo, { alpha = 0, time = 1000, delay = 3000, onComplete = changeScene } )
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
