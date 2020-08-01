local composer = require( "composer" )
local buildLevel = require( "buildLevel" )
local scene = composer.newScene()

local credits = {}

-------------------------------------------------------  source  -------------------------------------------------------

local function changeScene( event )
	composer.gotoScene( "menu" )
	return true
end

function scene:create( event )

	local sceneGroup = self.view

	if composer.getSceneName( "previous" ) ~= nil then
		composer.removeScene( composer.getSceneName( "previous" ) )
	end

	local titleText = buildLevel.buildTitle()
		sceneGroup:insert( titleText )

	credits = buildLevel.buildCredits()
		for x = 1, #credits do
			sceneGroup:insert( credits[x] )
		end
end

-- "scene:show()"
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then


	elseif ( phase == "did" ) then
		checkMemory()
		for x = 1, #credits do
			transition.to( credits[x], { x = display.contentCenterX, time = 500 } )
		end

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
