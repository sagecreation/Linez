local composer = require("composer")
local gameData = require("gameData")
local levelData = require("levels.level" .. gameData.level)
local buildLevel = require("buildLevel")
local physics = require("physics")

print(gameData.level)

physics.start()
physics.setGravity(0, 10)
physics.setVelocityIterations(16)
math.randomseed(os.time())

local scene = composer.newScene()

-- tables
local backgroundData = {}
local plinkData = {}
local generalObjects = {}
local grid = {}
local completedObjects = {}
local tutorials = {}
local holes = {}
local transitions = {}
local objects = {}
local plinks = {}
local timers = {}
local lines = {}
local lineTouchPoints = {}
local emitters = {}
local gravityEmitters = {}
local portalEmitters = {}
local breakoutEmitters = {}
local headerObjects = {}
local transitions = {}
local tutorialObjects = {}
local hintData = {}

-- objects
local background
local title

-- methods
local getLevelData
local touchScreen
local animateHole
local moveObject
local showCompletedStars
local showCompleted
local hasGameBeenWon
local changeGravity
local collidePlink
local postCollidePlink
local startStopPhysics
local activateHoles
local resetObjects
local resetLevel
local changeButtons
local startLevel
local stopLevel
local applyTorque
local flashGrid
local changeBounceCounter
local resetPlinks
local buildPlinks
local disposeHint
local adListener
local checkAdLoaded
local checkObjectsAreMoving
local sendStats
local sendCallback

-- variables
local gameIsActive = true
local gravityChanging = false
local startingGravity = "down"
local lineBounce = 1
local resettingLevel = false
local bounces = 0
local levelBounceCount = 0
local currentBounceCount = 0
local levelScale
local xScale
local yScale
local levelCompleted = false
local hintVisible = false
local portalsActive = true

-- emitters
local bounceEmitter
local starEmitter

-- audio
--local starsAudio = audio.loadSound( "audio/stars.m4a" )

-- text parameters
local bounceCountParameters = {text = "", x = 0, y = 0, font = gameData.fontName, fontSize = 25}

-- ad timer
local gameTimer

-------------------------------------------------------  utility methods  -------------------------------------------------------

function sendCallback(event)
	print(event.response)
	if (event.isError) then
		print("Network error: ", event.response)
	else
		print("RESPONSE: " .. event.response)
	end
end

function sendStats(gameStatus)
	print("calling server")
	local deviceID = system.getInfo("deviceID")
	local deviceType = system.getInfo("architectureInfo")
	local deviceName = system.getInfo("name")
	--local URL = "https://linez.herokuapp.com/api/userData?credentials=01123581321345589&build=" .. gameData.version .. "&deviceID=" .. deviceID .. "&deviceType=" .. deviceType .. "&deviceName=" .. deviceName .. "&level=" .. gameData.level .. "&status=" .. gameStatus
	local URL = "https://linez.herokuapp.com/api/userData?credentials=01123581321345589&build=" .. gameData.version .. "&deviceID=" .. deviceID .. "&deviceType=" .. deviceType .. "&deviceName=&level=" .. gameData.level .. "&status=" .. gameStatus
	
	print(URL)
	network.request(URL, "GET", sendCallback)
end

function checkObjectsAreMoving()
	local moving = false
	for x = 1, #plinks do
		local pX, pY = plinks[x]:getLinearVelocity()
		if pX ~= 0 or pY ~= 0 then
			moving = true
		end
	end
	if moving == false then
		for x = 1, #lineTouchPoints do
			transition.to(lineTouchPoints[x].icon, {xScale = 2, yScale = 2, time = 250})
			transition.to(lineTouchPoints[x].icon, {xScale = 1, yScale = 1, time = 250, delay = 251})
		end
	end
end

function adListener(event)
	if (event.phase == "init") then
	-- Successful initialization
	end
end

-- function checkAdLoaded()
-- 	if appodeal.isLoaded("interstitial") == true then
-- 		return true
-- 	else
-- 		return false
-- 	end
-- end

function disposeHint(event)
	hintData.hintBackground:removeEventListener("tap", disposeHint)
	transition.to(hintData.hintBackground, {alpha = 0, time = 500})
	transition.to(hintData.hint, {alpha = 0, time = 500})
	timer.performWithDelay(
		1000,
		function()
			hintVisible = false
		end
	)
	return true
end

function getLevelData(data)
	local gameData = levelData[1]

	for x = 1, #gameData do
		local dataType = gameData[x].data
		if data == dataType then
			return gameData[x][1]
		end
	end
end

function touchScreen(event)
	local phase = event.phase
	local target = event.target
	local id = target.id

	if hintVisible == true then
		return
	end

	if event.phase == "began" then
		display.getCurrentStage():setFocus(target)
		target.isFocus = true
		if id == "background" and levelCompleted == false and gameData.level > 1 then
			local line = display.newLine(event.xStart, event.yStart, event.x, event.y)
			lines[#lines + 1] = line
		end
	end
	if event.phase == "moved" then
		if id == "background" and levelCompleted == false and #lines > 0 then
			lines[#lines]:removeSelf()
			local line = display.newLine(event.xStart, event.yStart, event.x, event.y)
			line.strokeWidth = 7
			if levelScale > 1 then
				line.strokeWidth = 3.5
			end
			--line:setStrokeColor( 46 / 255, 75 / 255, 131 / 255, 1 )
			--line:setStrokeColor( 74 / 255, 74 / 255, 74 / 255, 1 )
			line:setStrokeColor(155 / 255, 155 / 255, 155 / 255)
			line.alpha = 1
			line.family = "line"
			lines[#lines] = line
		end
	end
	if event.phase == "ended" then
		display.getCurrentStage():setFocus(nil)
		target.isFocus = false
		if id == "playButton" then
			transition.to(headerObjects.playButton, {xScale = 1.2, yScale = 1.2, time = 50})
			transition.to(headerObjects.playButton, {xScale = 1, yScale = 1, time = 50, alpha = .25, delay = 50})
			headerObjects.playTouchArea:removeEventListener("touch", touchScreen)
			transition.to(headerObjects.menuButton, {time = 50, alpha = .25, delay = 50})
			headerObjects.menuTouchArea:removeEventListener("touch", touchScreen)
			playSound("lineCreate")
			startLevel()
		end
		if id == "menuButton" then
			playSound("lineDelete")
			composer.gotoScene("menu")
		end
		if id == "menuButtonLarge" then
			composer.gotoScene("menu")
		end
		if id == "playButtonLarge" then
			if gameData.level < gameData.totalLevels then
				gameData.level = gameData.level + 1
			end
			composer.gotoScene("resetGame")
		end
		if id == "resetButtonLarge" then
			composer.gotoScene("resetGame")
		end
		if id == "background" and levelCompleted == false and #lines > 0 then
			local lineMinimum = 15
			if levelScale > 1 then
				lineMinimum = 9
			end
			if lines[#lines].height < lineMinimum then
				lines[#lines].alpha = 0
				return
			end

			physics.addBody(lines[#lines], "static", {density = 85.5, friction = .1, bounce = lineBounce})

			local lineIcon = buildLevel.buildDeleteLine(lines[#lines].x, lines[#lines].y, xScale, yScale)

			local lineTouchPointDiameter = 25
			if levelScale > 1 then
				lineTouchPointDiameter = 12.5
			end
			local lineTouchPoint = display.newCircle(lineIcon.x, lineIcon.y, lineTouchPointDiameter)
			lineTouchPoint:setFillColor(255, 255, 255)
			lineTouchPoint.alpha = 0
			lineTouchPoint.isHitTestable = true
			lineTouchPoint:addEventListener("touch", touchScreen)
			lineTouchPoint.id = "touchPoint"
			lineTouchPoint.parentID = #lines
			lineTouchPoint.icon = lineIcon
			lineTouchPoints[#lineTouchPoints + 1] = lineTouchPoint
			playSound("lineCreate")
		end
		if id == "touchPoint" then
			physics.removeBody(lines[event.target.parentID])
			transition.to(lines[event.target.parentID], {alpha = 0, time = 250})
			--transition.to( event.target.icon, { alpha = 0, time = 250, delay = 100 } )
			transition.to(event.target.icon, {xScale = 4, yScale = 4, alpha = 0, time = 200, delay = 200})
			transition.to(event.target, {alpha = 0, time = 50})
			event.target:removeEventListener("touch", touchScreen)
			playSound("lineDelete")
		end
		if id == "clearAllLinez" then
			for x = #lineTouchPoints, 1, -1 do
				lineTouchPoints[x].icon:removeSelf()
				lineTouchPoints[x].icon = nil
				lineTouchPoints[x]:removeEventListener("touch", touchScreen)
				lineTouchPoints[x]:removeSelf()
				lineTouchPoints[x] = nil
			end
			for x = #lines, 1, -1 do
				lines[x]:removeSelf()
				lines[x] = nil
			end
		end
	end
	return true
end

function animateHole(hole, xScale, yScale)
	local function shrinkHole(hole, xScale, yScale)
		transition.to(
			hole,
			{
				xScale = xScale,
				yScale = yScale,
				time = 1500,
				onComplete = function()
					animateHole(hole, xScale, yScale)
				end
			}
		)
	end
	transition.to(
		hole,
		{
			xScale = xScale * .7,
			yScale = yScale * .7,
			time = 1500,
			onComplete = function()
				shrinkHole(hole, xScale, yScale)
			end
		}
	)
end

function moveObject(object)
	if object.isActive == false then
		return
	end

	if object.moveDirecton == "left" then
		transitions[#transitions + 1] =
			transition.to(
			object,
			{
				x = display.screenOriginX - object.width,
				time = object.moveSpeed,
				onComplete = function()
					object.x = display.contentWidth + (display.screenOriginX * -1)
					moveObject(object)
				end
			}
		)
	end
	if object.moveDirecton == "up" then
		transitions[#transitions + 1] =
			transition.to(
			object,
			{
				y = display.screenOriginY + 25,
				time = object.moveSpeed,
				onComplete = function()
					object.y = display.contentHeight + (display.screenOriginY * -1) + 25
					moveObject(object)
				end
			}
		)
	end
	if object.rotationSpeed ~= nil then
		transitions[#transitions + 1] =
			transition.to(
			object,
			{
				rotation = object.rotation + 360,
				time = object.rotationSpeed,
				onComplete = function()
					moveObject(object)
				end
			}
		)
	end
end

function showCompletedStars()
	local function shower()
		local star = buildLevel.buildStar()
		transition.to(
			star,
			{
				y = display.contentHeight + 300,
				time = math.random(3000, 6000),
				onComplete = function()
					star:removeSelf()
					star = nil
				end
			}
		)
	end
	local function startShower()
		timers[#timers + 1] = timer.performWithDelay(10, shower, -1)
	end
	timers[#timers + 1] = timer.performWithDelay(250, startShower)
end

function showCompleted()
	levelCompleted = true
	timer.pause(gameTimer)
	local time = 500
	print(gameData.maxLevel, gameData.totalLevels)
	if gameData.maxLevel < gameData.totalLevels then
		gameData.maxLevel = gameData.maxLevel + 1
	end
	saveSettings()
	if gameData.sound == true then
		audio.resume(backgroundMusic)
		audio.pause(backgroundMusicReverse)
	end

	for x = #lineTouchPoints, 1, -1 do
		lineTouchPoints[x].icon:removeSelf()
		lineTouchPoints[x].icon = nil
		lineTouchPoints[x]:removeEventListener("touch", touchScreen)
		lineTouchPoints[x]:removeSelf()
		lineTouchPoints[x] = nil
	end
	for x = #lines, 1, -1 do
		lines[x]:removeSelf()
		lines[x] = nil
	end
	for x = 1, #holes do
		holes[x].isActive = false
		holes[x].alpha = 0
	end
	for x = 1, #objects do
		objects[x].alpha = 0
		objects[x].isActive = false
	end
	for x = 1, #gravityEmitters do
		if gravityEmitters[x].state == "playing" then
			gravityEmitters[x]:stop()
		end
		gravityEmitters[x].alpha = 0
	end
	for x = 1, #portalEmitters do
		portalEmitters[x].alpha = 0
	end

	if gameData.level < gameData.totalLevels + 1 then
		for x = 1, #completedObjects do
			transition.to(completedObjects[x], {alpha = 1, time = 1000})
		end
	end
	for x = 1, #tutorialObjects do
		tutorialObjects[x].alpha = 0
	end

	local time = 500
	transition.to(headerObjects.menuButton, {y = display.screenOriginY - 100, time = time})
	transition.to(headerObjects.playButton, {y = display.screenOriginY - 100, time = time})
	transition.to(headerObjects.bounceCounter, {y = display.screenOriginY - 100, time = time})
	transition.to(headerObjects.bounceCounterText, {y = display.screenOriginY - 100, time = time})
	transition.to(headerObjects.menuTouchArea, {y = display.screenOriginY - 100, time = time})
	transition.to(headerObjects.playTouchArea, {y = display.screenOriginY - 100, time = time})
	transition.to(headerObjects.divider, {y = display.screenOriginY - 100, time = time})
	transition.to(title, {y = display.contentHeight / 5, time = 250})

	resetPlinks(false)

	timer.performWithDelay(500, showCompletedStars)
end

function hasGameBeenWon(target, hole)
	local activeCount = 0
	for x = 1, #holes do
		if holes[x].isActive == true then
			activeCount = activeCount + 1
		end
	end
	if activeCount == 0 and gameIsActive == true then
		sendStats("Completed")
		playSound("goal")
		timer.performWithDelay(1500, showCompleted)
	end
end

function changeGravity()
	if gravityChanging == true then
		return
	end
	gravityChanging = true
	timer.performWithDelay(
		1000,
		function()
			gravityChanging = false
		end
	)
	local gx, gy = physics.getGravity()

	if gy > 0 then
		physics.setGravity(0, -20)
		if gameData.sound == true then
			audio.pause(backgroundMusic)
			audio.resume(backgroundMusicReverse)
		end
		for x = 1, #objects do
			if objects[x].type == "gravitySwitch" then
				timer.performWithDelay(
					1,
					function()
						objects[x].rotation = 180
					end
				)
			end
		end
	else
		physics.setGravity(0, 10)
		if gameData.sound == true then
			audio.resume(backgroundMusic)
			audio.pause(backgroundMusicReverse)
		end
		for x = 1, #objects do
			if objects[x].type == "gravitySwitch" then
				timer.performWithDelay(
					1,
					function()
						objects[x].rotation = 0
					end
				)
			end
		end
	end
end

function collidePlink(event)
	local phase = event.phase
	local id = event.other.id

	if phase == "began" and event.other.family == "hole" then
		if event.target.type == event.other.type then
			timer.performWithDelay(
				1,
				function()
					event.target.isBodyActive = false
				end
			)
			timer.performWithDelay(
				1,
				function()
					event.other.isBodyActive = false
				end
			)
			transition.to(event.target, {x = event.other.x, y = event.other.y, time = 100})
			event.other.isActive = false
			transition.to(
				event.target,
				{
					xScale = .01,
					yScale = .01,
					time = 200,
					delay = 100,
					onComplete = function()
						event.other.alpha = 0
					end
				}
			)
			transition.to(event.target, {xScale = 7, yScale = 7, alpha = 0, time = 200, delay = 200})
			timer.performWithDelay(
				600,
				function()
					hasGameBeenWon(event.target, event.other)
				end
			)
		end
	end
	if phase == "began" and event.other.type == "gravitySwitch" then
		for x = 1, #gravityEmitters do
			transition.to(gravityEmitters[x], {xScale = 3, yScale = 3, time = 200})
			transition.to(gravityEmitters[x], {xScale = 1, yScale = 1, time = 200, delay = 201})
		end
		changeGravity()
	end
	if phase == "began" and event.other.type == "portal" then
		if portalsActive == false then
			return
		end

		playSound("portal")
		portalsActive = false
		local id = event.other.id
		local targetX
		local targetY
		if id < #portalEmitters then
			targetX = portalEmitters[id + 1].x
			targetY = portalEmitters[id + 1].y
		else
			targetX = portalEmitters[1].x
			targetY = portalEmitters[1].y
		end
		timer.performWithDelay(
			1,
			function()
				event.target.x = targetX
				event.target.y = targetY
			end
		)
		timer.performWithDelay(
			500,
			function()
				portalsActive = true
			end
		)
	end

	if phase == "began" and (event.other.type == "line" or event.other.type == "line2") then
		if event.other.animating == true then
			return
		end
		event.other.animating = true
		local oWidth = event.other.width
		local function shrink()
			transition.to(
				event.other,
				{
					width = oWidth,
					time = 100,
					onComplete = function()
						event.other.animating = false
					end
				}
			)
		end
		transition.to(event.other, {width = event.other.width + 50, time = 100, onComplete = shrink})
	end

	if phase == "began" and event.other.type == "bumper" then
		local oWidth = event.other.width
		local oHeight = event.other.height
		local function shrink()
			transition.to(event.other, {width = oWidth, height = oHeight, time = 100})
		end
		transition.to(
			event.other,
			{width = event.other.width + 50, height = event.other.height + 50, time = 100, onComplete = shrink}
		)
	end

	if phase == "began" and (event.other.type == "breakoutLine" or event.other.type == "breakoutLine2") then
		timer.performWithDelay(
			10,
			function()
				event.other.isBodyActive = false
			end
		)
		event.other.alpha = 0
		event.other.emitter:start()
	end

	if phase == "began" and id == "border" then
		gameIsActive = false
		playSound("lose")
		resetLevel()
	end
	return true
end

function postCollidePlink(event)
	if event.target.isActive == false then
		return
	end
	if event.other.id == "border" then
		return
	end
	if event.other.family == "hole" then
		return
	end
	if event.force >= .025 then
		event.target.isActive = false
		playSound("bounce")
		currentBounceCount = currentBounceCount - 1
		if currentBounceCount < 0 then
			gameIsActive = false
			resetLevel()
			return
		end
		event.target.bounceEmitter.x = event.target.x
		event.target.bounceEmitter.y = event.target.y
		event.target.bounceEmitter:start()
		local bounceCounter = display.newText(bounceCountParameters)
		bounceCounter.text = currentBounceCount
		bounceCounter.x = event.target.x
		bounceCounter.y = event.target.y
		bounceCounter:setFillColor(7 / 255, 52 / 255, 105 / 255, 1)
		transition.to(
			bounceCounter,
			{
				y = bounceCounter.y - 200,
				alpha = 1,
				onComplete = function()
					bounceCounter:removeSelf()
					bounceCounter = nil
				end
			}
		)
		changeBounceCounter()
		timer.performWithDelay(
			250,
			function()
				event.target.isActive = true
			end
		)
	end
end

function startStopPhysics(status)
	if status == "start" then
		physics.start()
	else
		physics.pause()
	end
end

function activateHoles()
	for x = 1, #holes do
		timer.performWithDelay(
			100,
			function()
				holes[x].isBodyActive = true
				holes[x].isActive = true
			end
		)
		holes[x].xScale = 1
		holes[x].yScale = 1
		holes[x].alpha = 1
	end
end

function resetObjects()
	for x = 1, #objects do
		if objects[x].type == "line" then
			objects[x].width = objects[x].originalWidth
		end
	end
end

function resetBreakoutLines()
	for x = 1, #objects do
		if objects[x].type == "breakoutLine" or objects[x].type == "breakoutLine2" then
			timer.performWithDelay(
				1,
				function()
					objects[x].isBodyActive = true
					objects[x].alpha = 1
				end
			)
		end
	end
end

function resetLevel()
	gameData.attempts = gameData.attempts + 1
	currentBounceCount = levelBounceCount
	gravityChanging = false
	if startingGravity == "down" then
		physics.setGravity(0, 10)
	else
		physics.setGravity(0, -20)
	end
	if gameData.sound == true then
		audio.resume(backgroundMusic)
		audio.pause(backgroundMusicReverse)
	end
	timer.pause(gameTimer)
	startStopPhysics("stop")

	for x = 1, #plinks do
		if plinks[x].isBodyActive == true then
			plinks[x].alpha = 0
		end
	end

	timer.performWithDelay(500, changeBounceCounter)
	timer.performWithDelay(
		500,
		function()
			resetPlinks(true)
		end
	)
	timer.performWithDelay(500, resetBreakoutLines)
	timer.performWithDelay(500, activateHoles)
	timer.performWithDelay(500, resetObjects)
	timer.performWithDelay(
		500,
		function()
			headerObjects.playButton.alpha = 1
			headerObjects.playTouchArea:addEventListener("touch", touchScreen)
			headerObjects.menuButton.alpha = 1
			headerObjects.menuTouchArea:addEventListener("touch", touchScreen)
		end
	)
	timer.performWithDelay(
		500,
		function()
			gameIsActive = true
		end
	)

	-- local showAd = checkAdLoaded()
	-- if showAd == true and gameData.attempts == gameData.adDisplayInterval then
	-- 	gameData.attempts = 0
	-- 	timer.performWithDelay( 500, function() appodeal.show( "interstitial" ) end )
	-- end
end

function startLevel()
	if startingGravity == "up" then
		physics.setGravity(0, -20)
	end
	sendStats("newGame")
	startStopPhysics("start")
	applyTorque()
	timer.resume(gameTimer)
end

function stopLevel()
	resetLevel()
end

function applyTorque()
	for x = 1, #plinks do
		plinks[x]:applyTorque(.5)
	end
end

function flashGrid()
	for x = 1, 50 do
		local cellAlpha = 0
		local cellVisible = math.random(0, 10)
		if cellVisible > 6 then
			local alpha = math.random(2, 7)
			cellAlpha = alpha * .01
		end

		transition.to(grid[math.random(1, #grid)], {alpha = cellAlpha, time = 250})
	end
end

function changeBounceCounter()
	headerObjects.bounceCounter.text = currentBounceCount
end

function resetPlinks(rebuild)
	if resettingLevel == true then
		return
	end
	resettingLevel = true

	for x = #plinks, 1, -1 do
		plinks[x]:removeEventListener("collision", collidePlink)
		plinks[x]:removeEventListener("postCollision", postCollidePlink)
		plinks[x]:removeSelf()
		plinks[x] = nil
	end

	if rebuild == true then
		timer.performWithDelay((#plinks + 1) * 2, buildPlinks)
	end
end

function buildPlinks()
	local plinkObjets = buildLevel.buildPlinks(plinkData, backgroundData, xScale, yScale)
	for x = 1, #plinkObjets do
		physics.addBody(plinkObjets[x])
		plinkObjets[x]:addEventListener("collision", collidePlink)
		plinkObjets[x]:addEventListener("postCollision", postCollidePlink)
		bounceEmitter = buildLevel.buildBounceEmitter()
		emitters[#emitters + 1] = bounceEmitter
		plinkObjets[x].bounceEmitter = bounceEmitter
		plinks[#plinks + 1] = plinkObjets[x]
	end
	resettingLevel = false
end

-------------------------------------------------------  composer methods  -------------------------------------------------------

function scene:create(event)
	local sceneGroup = self.view

	if composer.getSceneName("previous") ~= nil then
		composer.removeScene(composer.getSceneName("previous"))
	end

	startStopPhysics("stop")

	-- get level configuration data
	backgroundData = getLevelData("background")
	local gridData = getLevelData("grid")
	local starData = getLevelData("stars")
	local tutorialData = getLevelData("tutorial")
	local holeData = getLevelData("holes")
	local objectData = getLevelData("objects")
	plinkData = getLevelData("plinks")

	-- set levelBounceCount
	levelBounceCount = starData.count
	currentBounceCount = starData.count

	-- setup level scaling
	levelScale = backgroundData.scale
	xScale = 100 / levelScale * .01
	yScale = 100 / levelScale * .01

	-- is gravity reversed
	if backgroundData.gravity ~= nil then
		startingGravity = "up"
	end

	background = buildLevel.buildBackGround(backgroundData)
	background:addEventListener("touch", touchScreen)
	sceneGroup:insert(background)

	-- title = buildLevel.buildTitleGame()
	-- 	sceneGroup:insert( title )

	headerObjects = buildLevel.buildHeader(starData)
	headerObjects.menuTouchArea:addEventListener("touch", touchScreen)
	headerObjects.resetTouchArea:addEventListener("touch", touchScreen)
	headerObjects.playTouchArea:addEventListener("touch", touchScreen)
	sceneGroup:insert(headerObjects.menuButton)
	sceneGroup:insert(headerObjects.resetButton)
	sceneGroup:insert(headerObjects.playButton)
	sceneGroup:insert(headerObjects.bounceCounter)
	sceneGroup:insert(headerObjects.bounceCounterText)
	sceneGroup:insert(headerObjects.menuTouchArea)
	sceneGroup:insert(headerObjects.resetTouchArea)
	sceneGroup:insert(headerObjects.playTouchArea)
	sceneGroup:insert(headerObjects.divider)

	local borders = buildLevel.buildBorders()
	physics.addBody(borders.bottom, "static", {isSensor = true})
	physics.addBody(borders.left, "static", {isSensor = true})
	physics.addBody(borders.right, "static", {isSensor = true})
	physics.addBody(borders.top, "static", {isSensor = true})
	sceneGroup:insert(borders.bottom)
	sceneGroup:insert(borders.left)
	sceneGroup:insert(borders.right)
	sceneGroup:insert(borders.top)

	local row = 1
	local column = 1
	local squareSize = 30 / levelScale
	local squaresAccross = math.floor(actualWidth / (squareSize * 1.5)) + 5
	local squaresDown = math.floor(actualHeight / (squareSize * 1.5)) + 5

	--print("calling background grid color", backgroundData.grid)
	for x = 1, (squaresAccross * squaresDown) do
		local cellResults =
			buildLevel.buildCell(row, column, squareSize, squaresAccross, squaresDown, "game", backgroundData.grid)
		grid[#grid + 1] = cellResults.cell
		row = cellResults.row
		column = cellResults.column
		transition.to(cellResults.cell, {alpha = cellResults.cell.targetAlpha, time = 500})
		sceneGroup:insert(cellResults.cell)
	end

	local completionObjects = buildLevel.buildCompletionObjects()
	completedObjects[#completedObjects + 1] = completionObjects.congratulationsText
	completedObjects[#completedObjects + 1] = completionObjects.playButtonLarge
	completedObjects[#completedObjects + 1] = completionObjects.menuButtonLarge
	completedObjects[#completedObjects + 1] = completionObjects.resetButtonLarge
	completionObjects.playButtonLarge:addEventListener("touch", touchScreen)
	completionObjects.menuButtonLarge:addEventListener("touch", touchScreen)
	completionObjects.resetButtonLarge:addEventListener("touch", touchScreen)
	sceneGroup:insert(completionObjects.congratulationsText)
	sceneGroup:insert(completionObjects.playButtonLarge)
	sceneGroup:insert(completionObjects.menuButtonLarge)
	sceneGroup:insert(completionObjects.resetButtonLarge)

	local holeObjects = buildLevel.buildHoles(holeData, xScale, yScale)
	for x = 1, #holeObjects do
		holes[#holes + 1] = holeObjects[x]
		physics.addBody(holeObjects[x], "static")
		animateHole(holeObjects[x], xScale, yScale)
		sceneGroup:insert(holeObjects[x])
	end

	local gameObjects = buildLevel.buildGameObjects(objectData, breakoutFills, xScale, yScale)
	for x = 1, #gameObjects do
		if gameObjects[x].type == "gravitySwitch" then
			physics.addBody(gameObjects[x], "static", {bounce = objectData[x].bounce})

			local emitter = buildLevel.buildGravityEmitter()
			emitter.x = gameObjects[x].x
			emitter.y = gameObjects[x].y
			emitter.xScale = xScale
			emitter.yScale = yScale
			gravityEmitters[#gravityEmitters + 1] = emitter
			sceneGroup:insert(emitter)
		elseif gameObjects[x].type == "portal" then
			physics.addBody(gameObjects[x], "static", {isSensor = true})

			local emitter = buildLevel.buildPortalEmitter()
			emitter.x = gameObjects[x].x
			emitter.y = gameObjects[x].y
			emitter.xScale = xScale
			emitter.yScale = yScale
			portalEmitters[#portalEmitters + 1] = emitter
			sceneGroup:insert(emitter)
		elseif gameObjects[x].type == "breakoutLine" or gameObjects[x].type == "breakoutLine2" then
			physics.addBody(gameObjects[x], "static", {bounce = objectData[x].bounce})

			local emitter = buildLevel.buildBreakoutEmitter()
			emitter.x = gameObjects[x].x
			emitter.y = gameObjects[x].y
			emitter.xScale = xScale
			emitter.yScale = yScale
			breakoutEmitters[#breakoutEmitters + 1] = emitter
			sceneGroup:insert(emitter)

			gameObjects[x].emitter = emitter
		elseif gameObjects[x].type == "triangle" then
			physics.addBody(gameObjects[x], "static", {outline = gameObjects[x].imageOutline, bounce = objectData[x].bounce})
		elseif gameObjects[x].type == "bumper" then
			physics.addBody(gameObjects[x], "static", {bounce = objectData[x].bounce, radius = 20})
		elseif gameObjects[x].type == "bumperRed" then
			physics.addBody(gameObjects[x], "static", {bounce = objectData[x].bounce, radius = 20})
		elseif gameObjects[x].type == "smile" then
			physics.addBody(gameObjects[x], "static", {bounce = objectData[x].bounce, radius = 120})
		else
			physics.addBody(gameObjects[x], "static", {bounce = objectData[x].bounce})
		end
		objects[#objects + 1] = gameObjects[x]
		sceneGroup:insert(gameObjects[x])
		if gameObjects[x].moveSpeed ~= nil then
			moveObject(gameObjects[x])
		end
		if gameObjects[x].rotationSpeed ~= nil then
			moveObject(gameObjects[x])
		end
	end

	starEmitter = buildLevel.buildStarEmitter()
	emitters[#emitters + 1] = starEmitter

	if gameData.level == 1 or gameData.level == 2 then
		local tutorial = buildLevel.buildTutorialPlay(headerObjects.playButton)
		sceneGroup:insert(tutorial)
		tutorialObjects[#tutorialObjects + 1] = tutorial
	end
	if gameData.level == 2 then
		local tutorial2 = buildLevel.buildTutorialDraw(plinks[1], holes[1])
		sceneGroup:insert(tutorial2)
		tutorialObjects[#tutorialObjects + 1] = tutorial2
	end

	buildPlinks()
	for x = 1, #plinks do
		sceneGroup:insert(plinks[x])
	end

	if backgroundData.hint ~= nil then
		hintVisible = true
		hintData = buildLevel.buildHintBackground()
		sceneGroup:insert(hintData.hintBackground)
		sceneGroup:insert(hintData.hint)
		timer.performWithDelay(
			500,
			function()
				hintData.hintBackground:addEventListener("tap", disposeHint)
			end
		)
	end
	gameTimer = timer.performWithDelay(3000, checkObjectsAreMoving, -1)
	timer.pause(gameTimer)
end

function scene:show(event)
	local sceneGroup = self.view
	local phase = event.phase

	if (phase == "will") then
	elseif (phase == "did") then
		checkMemory()
		for x = 1, #objects do
			-- if objects[x].type == "gravitySwitch" then
			-- 	objects[x]:setSequence( "gravityNormal")
			-- 	objects[x]:play()
			-- end
		end
		for x = 1, #gravityEmitters do
			gravityEmitters[x]:start()
		end
		for x = 1, #portalEmitters do
			portalEmitters[x]:start()
		end
		timers[#timers + 1] = timer.performWithDelay(1500, flashGrid, -1)
	--timer.performWithDelay( 1000, checkMemory, -1 )
	end
end

function scene:hide(event)
	local sceneGroup = self.view
	local phase = event.phase

	Runtime:removeEventListener("key", pressKey)

	if (phase == "will") then
		if transitions ~= nil then
			for x = 1, #transitions do
				if transitions[x] ~= nil then
					transition.cancel(transitions[x])
				end
			end
			transitions = nil
		end
		if timers ~= nil then
			for x = 1, #timers do
				if timers[x] ~= nil then
					timer.cancel(timers[x])
					timers[x] = nil
				end
			end
			timers = nil
		end
		-- audio.stop( 32 )
		-- audio.dispose( starsAudio )
		-- starsAudio = nil
		for x = #lineTouchPoints, 1, -1 do
			lineTouchPoints[x].icon:removeSelf()
			lineTouchPoints[x].icon = nil
			lineTouchPoints[x]:removeEventListener("touch", touchScreen)
			lineTouchPoints[x]:removeSelf()
			lineTouchPoints[x] = nil
		end
		for x = #lines, 1, -1 do
			lines[x]:removeSelf()
			lines[x] = nil
		end
		for x = 1, #holes do
			holes[x].isActive = false
		end
		resetPlinks(false)
	elseif (phase == "did") then
	end
end

function scene:destroy(event)
	local sceneGroup = self.view
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

---------------------------------------------------------------------------------

return scene
