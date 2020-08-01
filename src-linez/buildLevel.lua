local gameData = require( "gameData" )
local json = require( "json" )
local class = {}

-- text parameters
local bounceCountParameters = { text = "", x = display.contentCenterX, y = display.screenOriginY + 15, font = gameData.fontNameCounter, fontSize = 20 }
local bounceCounterTextParameters = { text = "", x = display.contentCenterX, y = display.screenOriginY + 15, font = gameData.fontName, fontSize = 18 }
local levelIndicatorParameters = { text = "", font = gameData.fontName, fontSize = 20 }
--local congratulationsTextParameters = { text = "", font = gameData.fontName, fontSize = 55 }
local starTextParameters = { text = "", x = 0, y = 0, font = gameData.fontName, fontSize = 25 }
local starTextParameters = { text = "", x = 0, y = 0, font = gameData.fontName, fontSize = 25 }
local creditTitleParameters = { text = "", x = 0, y = 0, font = gameData.fontNameCounter, fontSize = 25 }
local creditParameters = { text = "", x = 0, y = 0, font = gameData.fontName, fontSize = 25 }
local menuTitleLetterParameters = { text = "", font = gameData.fontName, fontSize = 30 }

function class.buildHintBackground()
	local hintBackground = display.newRect( 0, 0, actualWidth, actualHeight )
	hintBackground.x = display.contentCenterX
	hintBackground.y = display.contentCenterY
	hintBackground.id = "hintBackground"
	--hintBackground:setFillColor( 0, 0, 0 )
	--hintBackground.alpha = .9

	local hint = display.newImage( "images/game/hint" .. gameData.level .. ".png", 0, 0 )
	hint.x = display.contentCenterX
	hint.y = display.contentCenterY

	local hintData = { hintBackground = hintBackground, hint = hint }

	return hintData
end

function class.buildBackGround( backgroundData )
	-- local backgroundWhite = { type = "gradient", color1 = { 255 / 255, 255 / 255, 255 / 255, 1 }, color2 = { 255 / 255, 255 / 255, 255 / 255, 1 }, direction = "down" }
	-- local backgroundBlue = { type = "gradient", color1 = { 7 / 255, 52 / 255, 105 / 255, 1 }, color2 = { 93 / 255, 103 / 255, 164 / 255, 1 }, direction = "down" }
	-- local backgroundGreen = { type = "gradient", color1 = { 86 / 255, 160 / 255, 0, 1 }, color2 = { 172 / 255, 204 / 255, 135 / 255, 1 }, direction = "down" }
	-- local backgroundOrange = { type = "gradient", color1 = { 255, 130 / 255, 0, 1 }, color2 = { 238 / 255, 195 / 255, 155 / 255, 1 }, direction = "down" }
	-- local backgroundPink = { type = "gradient", color1 = { 236 / 255, 118 / 255, 195 / 255, 1 }, color2 = { 240 / 255, 178 / 255, 219 / 255, 1 }, direction = "down" }
	-- local backgroundRed = { type = "gradient", color1 = { 159 / 255, 4 / 255, 27 / 255, 1 }, color2 = { 245 / 255, 81 / 255, 95 / 255, 1 }, direction = "down" }
	--
	-- local paint = backgroundBlue
	-- if backgroundData.color == "green" then
	-- 	paint = backgroundGreen
	-- elseif backgroundData.color == "orange" then
	-- 	paint = backgroundOrange
	-- elseif backgroundData.color == "pink" then
	-- 	paint = backgroundPink
	-- elseif backgroundData.color == "red" then
	-- 	paint = backgroundRed
	-- elseif backgroundData.color == "white" then
	-- 	paint = backgroundWhite
	-- end

	local background = display.newRect( 0, 0, actualWidth, actualHeight )
	background.x = display.contentCenterX
	background.y = display.contentCenterY
	background.id = "background"
	return background

end

function class.buildHeader( starData )

	local imageColor = "Blue"
	local objectColor = { 7 / 255, 52 / 255, 105 / 255, 1 }

	local menuButton = display.newImage( "images/game/menu" .. imageColor .. ".png", display.screenOriginX + 30, display.screenOriginY + 20 )
	menuButton.anchorX = 0
	menuButton.anchorY = 0

	local resetButton = display.newImage( "images/game/reset.png", display.screenOriginX + 100, display.screenOriginY + 20 )
	resetButton.anchorX = 0
	resetButton.anchorY = 0

	local playButton = display.newImage( "images/game/play" .. imageColor .. ".png", display.contentWidth + ( display.screenOriginX * -1 ) - 30, display.screenOriginY + 20 )
	playButton.anchorX = 1
	playButton.anchorY = 0

	

	local bounceCounter = display.newText( bounceCountParameters )
	bounceCounter.text = starData.count
	bounceCounter.anchorY = 0
	bounceCounter.x = display.contentCenterX
	bounceCounter.y = display.screenOriginY + 10
	bounceCounter.fill = objectColor

	local bounceCounterText = display.newText( bounceCounterTextParameters )
	bounceCounterText.text = "B O U N C E S"
	bounceCounterText.anchorY = 0
	bounceCounterText.x = display.contentCenterX
	bounceCounterText.y = bounceCounter.y + bounceCounter.height
	bounceCounterText.fill = objectColor

	local divider = display.newRect( 0, 0, actualWidth, 2 )
	divider.x = display.contentCenterX
	divider.y = playButton.y + playButton.height + 20
	divider.fill = objectColor

	local menuTouchArea = display.newRect( display.screenOriginX, display.screenOriginY, 90, 80 )
	menuTouchArea.anchorX = 0
	menuTouchArea.anchorY = 0
	menuTouchArea.alpha = 0
	menuTouchArea.isHitTestable = true
	menuTouchArea.id = "menuButton"
	menuTouchArea:setFillColor( 0, 0, 0 )

	local resetTouchArea = display.newRect( display.screenOriginX + 90, display.screenOriginY, 90, 80 )
	resetTouchArea.anchorX = 0
	resetTouchArea.anchorY = 0
	resetTouchArea.alpha = 0
	resetTouchArea.isHitTestable = true
	resetTouchArea.id = "clearAllLinez"
	resetTouchArea:setFillColor( 0, 0, 0 )

	local playTouchArea = display.newRect( display.contentWidth + ( display.screenOriginX * -1 ), display.screenOriginY, 90, 80 )
	playTouchArea.anchorX = 1
	playTouchArea.anchorY = 0
	playTouchArea.alpha = 0
	playTouchArea.isHitTestable = true
	playTouchArea.id = "playButton"
	playTouchArea:setFillColor( 255, 255, 255 )

	local headerTable = { menuButton = menuButton, playButton = playButton, resetButton = resetButton, heaerCenter = heaerCenter, bounceCounter = bounceCounter, bounceCounterText = bounceCounterText, menuTouchArea = menuTouchArea, playTouchArea = playTouchArea, resetTouchArea = resetTouchArea, divider = divider }
	return headerTable
end

function class.buildBorders()
	local bottom = display.newRect( display.contentCenterX, actualHeight + 100, actualWidth + 1500, 50 )
	bottom.id = "border"
	local left = display.newRect( display.screenOriginX - 100, display.contentCenterY, 100, actualHeight + 1500 )
	left.id = "border"
	local right = display.newRect( actualWidth + 100, display.contentCenterY, 100, actualHeight + 1500 )
	right.id = "border"
	local top = display.newRect( display.contentCenterX, -600, actualWidth + 1500, 50 )
	top.id = "border"
	local borders = { bottom = bottom, left = left, right = right, top = top }
	return borders
end

function class.buildDeleteLine( x, y, xScale, yScale )
	local deleteLine = display.newImage( "images/game/deleteLine.png", x, y )
	deleteLine.alpha = 1
	deleteLine.xScale = xScale
	deleteLine.yScale = yScale
	return deleteLine
end

function class.buildStar()
	local scale = math.random( 1, 9 ) * .1
	local star = display.newImage( "images/game/star.png", 0, -100 )
	star.x = math.random ( 0, display.contentWidth )
	star.xScale = scale
	star.yScale = scale
	star.alpha = math.random( 1, 9 ) * .1
	return star
end

function class.buildCell( row, column, squareSize, squaresAccross, squaresDown, owner, cellColor )
	local y = ( row * ( squareSize * 1.5 ) ) - ( 5 * squareSize )
	local x = ( column * ( squareSize * 1.5 ) )  - ( 5 * squareSize )

	local gridDensity = 7
	if owner == "menu" then
		gridDensity = 2
	end

	local cell = display.newImage( "images/grid/" .. cellColor .. "Cell.png", x, y )
	cell.width = squareSize
	cell.height = squareSize
	cell.anchorX = 0
	cell.anchorY = 0
	local cellVisible = math.random( 0, 10 )
	if cellVisible > gridDensity then
		local alpha = math.random( 2, 7 )
		cell.targetAlpha = alpha * .01
	else
		cell.targetAlpha = 0
	end
	cell.alpha = 0
	if column == squaresAccross then
		row = row + 1
		column = 1
	else
		column = column + 1
	end
	local results = { cell = cell, row = row, column = column }
	return results
end

function class.buildTitleMenu()
	local title = display.newImage( "images/menu/title.png", display.contentCenterX, display.screenOriginY + 35 )
	title.anchorY = 0
	title.alpha = 0
	return title
end

function class.buildTitleGame()
	local title = display.newImage( "images/game/titleGame.png", display.contentCenterX, display.contentCenterY )
	return title
end

function class.buildCompletionObjects()
	local accoladeID = math.random( 1, 12 )
	local congratulationsText = display.newImage( "images/game/accolade" .. accoladeID .. ".png", 0, 0 )
	congratulationsText.anchorY = 1
	congratulationsText.x = display.contentCenterX
	congratulationsText.y = display.contentCenterY - 50
	congratulationsText.alpha = 0

	local playButtonLarge = display.newImage( "images/game/nextLarge.png", display.contentCenterX, display.contentCenterY + 25 )
	playButtonLarge.anchorY = 0
	playButtonLarge.id = "playButtonLarge"
	playButtonLarge.type = "button"
	playButtonLarge.alpha = 0

	local menuButtonLarge = display.newImage( "images/game/menuLarge.png", display.contentCenterX - 350, display.contentCenterY + 25 )
	menuButtonLarge.anchorX = 0
	menuButtonLarge.anchorY = 0
	menuButtonLarge.id = "menuButtonLarge"
	menuButtonLarge.type = "button"
	menuButtonLarge.alpha = 0

	local resetButtonLarge = display.newImage( "images/game/retryLarge.png", display.contentCenterX + 350, display.contentCenterY + 25 )
	resetButtonLarge.anchorX = 1
	resetButtonLarge.anchorY = 0
	resetButtonLarge.id = "resetButtonLarge"
	resetButtonLarge.type = "button"
	resetButtonLarge.alpha = 0

	local completedObjects = {
		congratulationsText = congratulationsText,
		playButtonLarge = playButtonLarge,
		menuButtonLarge = menuButtonLarge,
		resetButtonLarge = resetButtonLarge,
	}
	return completedObjects
end

function class.buildHoles( holeData, xScale, yScale )
	local holeObjects = {}
	for x = 1, #holeData do
		local hole = display.newImage( "images/game/" .. holeData[x].type .. "Hole.png", holeData[x].x, holeData[x].y )
		hole.xScale = xScale
		hole.yScale = yScale
		hole.id = x
		hole.family = "hole"
		hole.type = holeData[x].type
		hole.isActive = true
		holeObjects[#holeObjects + 1] = hole
	end
	return holeObjects
end

function class.buildGameObjects( objectData, breakoutFills, xScale, yScale )
	local gameObjects = {}
	for x = 1, #objectData do
		local object
		local scale = true
		if objectData[x].type == "line" then
			object = display.newImage( "images/game/line.png", objectData[x].x, objectData[x].y )
			object.width = objectData[x].width
			object.animating = false
		end
		if objectData[x].type == "line2" then
			object = display.newImage( "images/game/line2.png", objectData[x].x, objectData[x].y )
			object.width = objectData[x].width
			object.animating = false
			scale = false
		end
		if objectData[x].type == "breakoutLine" then
			object = display.newImage( "images/game/breakoutLine.png", objectData[x].x, objectData[x].y )
			object.width = objectData[x].width
		end
		if objectData[x].type == "breakoutLine2" then
			object = display.newImage( "images/game/breakoutLine2.png", objectData[x].x, objectData[x].y )
			object.width = objectData[x].width
			scale = false
		end
		if objectData[x].type == "triangle" then
			local imageOutline = graphics.newOutline( 2, "images/game/objectTriangle.png" )
			object = display.newImage( "images/game/objectTriangle.png", objectData[x].x, objectData[x].y )
			object.imageOutline = imageOutline
		end
		if objectData[x].type == "star" then
			local imageOutline = graphics.newOutline( 2, "images/game/objectStar.png" )
			object = display.newImage( "images/game/objectStar.png", objectData[x].x, objectData[x].y )
			object.imageOutline = imageOutline
		end
		if objectData[x].type == "gravitySwitch" then
			object = display.newRect( objectData[x].x, objectData[x].y, 30, 30 )
			object.alpha = .01
		end
		if objectData[x].type == "portal" then
			object = display.newCircle( objectData[x].x, objectData[x].y, 5 )
			object.alpha = .01
		end
		if objectData[x].type == "bumper" then
			object = display.newImage( "images/game/bumper.png", objectData[x].x, objectData[x].y )
		end
		if objectData[x].type == "bumperRed" then
			object = display.newImage( "images/game/bumperRed.png", objectData[x].x, objectData[x].y )
		end
		if objectData[x].type == "smile" then
			object = display.newImage( "images/game/smile.png", objectData[x].x, objectData[x].y )
		end

		if scale == true then
			object.xScale = xScale
			object.yScale = yScale
		end
		object.type = objectData[x].type
		object.id = objectData[x].id
		object.isActive = true
		object.hidden = false
		object.anchorX = objectData[x].anchorX
		object.anchorY = objectData[x].anchorY
		object.bounce = objectData[x].bounce
		object.originalWidth = objectData[x].width
		object.rotation = objectData[x].rotation
		object.rotationSpeed = objectData[x].rotationSpeed
		object.moveSpeed = objectData[x].moveSpeed
		object.moveDirecton = objectData[x].moveDirecton
		gameObjects[#gameObjects + 1] = object
	end
	return gameObjects
end

function class.buildPlinks( plinkData, backgroundData, xScale, yScale )
	local plinks = {}
	for x = 1, #plinkData do
		local plink = display.newImage( "images/game/" .. plinkData[x].type .. ".png", plinkData[x].x, plinkData[x].y )
		plink.type = plinkData[x].type
		plink.isActive = true
		plink.family = "plink"
		plink.xScale = xScale
		plink.yScale = yScale
		plink.originX = plinkData[x].x
		plink.originY = plinkData[x].y
		plinks[#plinks + 1] = plink
	end
	return plinks
end

function class.buildBounceEmitter()
	local filePath = system.pathForFile( "bounceEmitter.json" )
	local f = io.open( filePath, "r" )
	fileData = f:read( "*a" )
	f:close()
	local bounceEmitterConfig = json.decode( fileData )

	local bounceEmitter = display.newEmitter( bounceEmitterConfig )
	bounceEmitter.x = 0
	bounceEmitter.y = 0
	bounceEmitter:pause()

	return bounceEmitter
end

function class.buildGravityEmitter()
	local filePath = system.pathForFile( "gravityEmitter.json" )
	local f = io.open( filePath, "r" )
	fileData = f:read( "*a" )
	f:close()
	local emitterConfig = json.decode( fileData )

	local emitter = display.newEmitter( emitterConfig )
	emitter.x = 0
	emitter.y = 0
	emitter.alpha = 1
	emitter:stop()

	return emitter
end

function class.buildStarEmitter()
	local filePath = system.pathForFile( "starEmitter.json" )
	local f = io.open( filePath, "r" )
	fileData = f:read( "*a" )
	f:close()
	local emitterConfig = json.decode( fileData )

	local emitter = display.newEmitter( emitterConfig )
	emitter.x = 0
	emitter.y = 0
	emitter:stop()

	return emitter
end

function class.buildPortalEmitter()
	local filePath = system.pathForFile( "portalEmitter.json" )
	local f = io.open( filePath, "r" )
	fileData = f:read( "*a" )
	f:close()
	local emitterConfig = json.decode( fileData )

	local emitter = display.newEmitter( emitterConfig )
	emitter.x = 0
	emitter.y = 0
	emitter.alpha = .3
	emitter:stop()

	return emitter
end

function class.buildBreakoutEmitter()
	local filePath = system.pathForFile( "breakoutEmitter.json" )
	local f = io.open( filePath, "r" )
	fileData = f:read( "*a" )
	f:close()
	local emitterConfig = json.decode( fileData )

	local emitter = display.newEmitter( emitterConfig )
	emitter.x = 0
	emitter.y = 0
	emitter:stop()

	return emitter
end

function class.buildTutorialPlay( playButton )
	local tutorial = display.newImage( "images/game/arrow.png", playButton.x - ( playButton.width / 2 ), playButton.y + 75 )
	tutorial.anchorY = 0
	return tutorial
end

function class.buildTutorialDraw()
	local tutorial = display.newImage( "images/game/drawLine.png", display.contentCenterX - 50, 340 )
	tutorial.rotation = 40
	return tutorial
end

function class.buildCredits()
	local credits = {}

	local creatorTitle = display.newText( creditTitleParameters )
	creatorTitle.text = "CREATOR"
	creatorTitle.x = display.screenOriginX - 500
	creatorTitle.y = 100
	credits[#credits + 1] = creatorTitle

	local creator = display.newText( creditParameters )
	creator.text = "PEPPER FLEMING"
	creator.x = actualWidth + 500
	creator.y = 150
	credits[#credits + 1] = creator

	local testerTitle = display.newText( creditTitleParameters )
	testerTitle.text = "A SPECIAL THANKS TO THE TESTERS"
	testerTitle.x = display.screenOriginX - 500
	testerTitle.y = 250
	credits[#credits + 1] = testerTitle

	local tester1 = display.newText( creditParameters )
	tester1.text = "Gabby King"
	tester1.x = actualWidth + 500
	tester1.y = 300
	credits[#credits + 1] = tester1

	local tester1 = display.newText( creditParameters )
	tester1.text = "Kate King"
	tester1.x = display.screenOriginX - 500
	tester1.y = 350
	credits[#credits + 1] = tester1

	local tester1 = display.newText( creditParameters )
	tester1.text = "Ryann McDougal"
	tester1.x = actualWidth + 500
	tester1.y = 400
	credits[#credits + 1] = tester1

	return credits
end

function class.buildMusicControls()
	local touchArea = display.newRect( display.contentCenterX - 435, display.contentHeight + ( display.screenOriginY * -1 ), 400, 60 )
	touchArea:setFillColor( 0, 0, 0 )
	touchArea.isHitTestable = true
	touchArea.alpha = 0
	touchArea.anchorX = 0
	touchArea.anchorY = 1

	local musicOn = display.newImage( "images/menu/musicOn.png", display.contentCenterX - 435, display.contentHeight + ( display.screenOriginY * -1 ) - 25 )
	musicOn.active = false
	musicOn.anchorX = 0
	musicOn.anchorY = 1
	musicOn.alpha = 0

	local musicOff = display.newImage( "images/menu/musicOff.png", display.contentCenterX - 435, display.contentHeight + ( display.screenOriginY * -1 ) - 25 )
	musicOff.active = true
	musicOff.anchorX = 0
	musicOff.anchorY = 1

	local controls = { touchArea = touchArea, musicOn = musicOn, musicOff = musicOff }
	return controls
end

function class.buildInfoButton()
	local touchArea = display.newRect( display.contentCenterX + 435, display.contentHeight + ( display.screenOriginY * -1 ), 400, 60 )
	touchArea:setFillColor( 0, 0, 0 )
	touchArea.isHitTestable = true
	touchArea.alpha = 0
	touchArea.anchorX = 1
	touchArea.anchorY = 1

	local info = display.newImage( "images/menu/info.png", display.contentCenterX + 435, display.contentHeight + ( display.screenOriginY * -1 ) - 25 )
	info.active = false
	info.anchorX = 1
	info.anchorY = 1

	local about = { touchArea = touchArea, info = info }
	return about
end

function class.buildInfo()
	local thankYou = display.newImage( "images/info/thankYou.png", display.contentCenterX, 150 )
	local review = display.newImage( "images/info/review.png", display.contentCenterX, 250 )
	local gameDesign = display.newImage( "images/info/gameDesign.png", display.contentCenterX, 375 )
	local specialThanks = display.newImage( "images/info/specialThanks.png", display.contentCenterX, 520 )
	local menuButton = display.newImage( "images/game/menuBlue.png", display.screenOriginX + 20, display.screenOriginY + 20 )
	menuButton.anchorX = 0
	menuButton.anchorY = 0

	local info = { thankYou = thankYou, review = review, gameDesign = gameDesign, specialThanks = specialThanks, menuButton = menuButton }
	return info
end


return class
