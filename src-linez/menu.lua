local composer = require( "composer" )
local gameData = require( "gameData" )
local loadsave = require("loadsave")
local json = require("json")
local buildLevel = require( "buildLevel" )
local scene = composer.newScene()

local cellIDParameters = { text = "", font = gameData.fontNameCounter, fontSize = 30 }

local grid = display.newGroup()
grid.anchorChildren = true
grid.anchorY = 1
grid.x = display.contentCenterX
grid.y = display.contentHeight - 75

local musicControls = {}

-------------------------------------------------------  source  -------------------------------------------------------

local function changeScene( event )
	playSound( "lineCreate" )
	gameData.level = event.target.id
	saveSettings()
	composer.gotoScene( "game" )
	return true
end

local function showInfo()
	composer.gotoScene( "info" )
end

local function changeMusic( event )
	if musicControls.changing == true then
		return
	end
	musicControls.changing = true
	if musicControls.musicOn.active == true then
		musicControls.musicOn.active = false
		musicControls.musicOff.active = true
		transition.to( musicControls.musicOn, { alpha = 0, time = 500 } )
		transition.to( musicControls.musicOff, { alpha = 1, time = 500, delay = 500, onComplete = function() musicControls.changing = false end } )
		audio.resume( backgroundMusic )
		gameData.sound = true
	else
		musicControls.musicOn.active = true
		musicControls.musicOff.active = false
		transition.to( musicControls.musicOff, { alpha = 0, time = 500 } )
		transition.to( musicControls.musicOn, { alpha = 1, time = 500, delay = 500, onComplete = function() musicControls.changing = false end } )
		audio.pause( backgroundMusic )
		gameData.sound = false
	end
	return true
end

local function createGridCell( x, y, type, id, row, locked )
	local cell = nil
	local cellText = nil
	if type == "buffer" then
		cell = display.newRect( x, y, 30, 30 )
		cell.anchorX = 0
		cell.alpha = 0
		cell.id = nil
		cell:setFillColor( 0, 0, 0 )
	else
		local image = "cellLocked.png"
		local color = { 255, 255, 255 }
		if locked == false then
			image = "cell.png"
			color =  { 124 / 255, 124 / 255, 124 / 255 }
		end

		cell = display.newImage( "images/menu/" .. image, x, y )
		cell.anchorX = 0
		cell.id = id
		cell.alpha = 0

		if locked == false then
			cell:addEventListener( "tap", changeScene )
			cellText = display.newText( cellIDParameters )
			cellText.text = id
			cellText.x = cell.x + ( cell.width / 2 )
			cellText.y = cell.y
			cellText:setFillColor( unpack( color ) )
			cellText.alpha = 0
		end
	end

	local gridObjects = { cell = cell, cellText = cellText }
	return gridObjects
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
	--local squaresDown = 5

	for x = 1, ( squaresAccross * squaresDown ) do
		local cellResults = buildLevel.buildCell( row, column, squareSize, squaresAccross, squaresDown, "menu", "black" )
		row = cellResults.row
		column = cellResults.column
		transition.to( cellResults.cell, { alpha = cellResults.cell.targetAlpha, time = 500 } )
		sceneGroup:insert( cellResults.cell )
	end

	local title = buildLevel.buildTitleMenu( grid )
	sceneGroup:insert( title )
	transition.to( title, { alpha = 1, time = 1000 } )

	local cellSize = 60
	local bufferSize = 30
	local rowY = 0
	local rowX = 0
	local cellID = 1
	local transitionTime = 50
	local transitionIncrement = 25

	for rows = 1, 5 do
		for columns = 1, 21 do
			local gridObjects = {}
			if ( columns % 2 ~= 0 ) then
				gridObjects = createGridCell( rowX, rowY, "buffer", nil, rows, false )
				sceneGroup:insert( gridObjects.cell )
				grid:insert( gridObjects.cell )
				rowX  = rowX + bufferSize
			else
				local locked = true
				if cellID <= gameData.maxLevel then
					locked = false
				end
				gridObjects = createGridCell( rowX, rowY, "cell", cellID, rows, locked )
				sceneGroup:insert( gridObjects.cell )
				grid:insert( gridObjects.cell )
				if cellID <= gameData.totalLevels then
					transition.to( gridObjects.cell, { alpha = .75, time = transitionTime} )
					if gridObjects.cellText ~= nil then
						sceneGroup:insert( gridObjects.cellText )
						grid:insert( gridObjects.cellText )
						transition.to( gridObjects.cellText, { alpha = .75, time = transitionTime} )
					end
				end
				rowX  = rowX + cellSize
				cellID = cellID + 1
				transitionTime = transitionTime + transitionIncrement
			end
			columns = columns + 1
			if columns == 22 then
				rowX = 0
				rowY = rowY + cellSize + bufferSize
			end
		end
	end

	musicControls = buildLevel.buildMusicControls()
	musicControls.changing = false
	musicControls.touchArea:addEventListener( "tap", changeMusic )
	sceneGroup:insert( musicControls.touchArea )
	sceneGroup:insert( musicControls.musicOn )
	sceneGroup:insert( musicControls.musicOff )

	local information = buildLevel.buildInfoButton()
	information.touchArea:addEventListener( "tap", showInfo )
	sceneGroup:insert( information.touchArea )
	sceneGroup:insert( information.info )

	sceneGroup:insert( grid )
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
