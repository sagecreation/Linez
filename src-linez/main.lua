-- before compiling for itunes change maxLevel = 1, and changing opening scene to studio



display.setStatusBar( display.HiddenStatusBar )
local composer = require("composer")
local gameData = require( "gameData" )
local loadsave = require("loadsave")
local json = require("json")
local settings = loadsave.loadTable( "settings.json" )

if audio.supportsSessionProperty == true then
	audio.setSessionProperty(audio.MixMode, audio.AmbientMixMode)
end

if settings == nil then
	gameData.totalLevels = 44
	gameData.version = 1.3
	gameData.level = 1
	gameData.timeStamp = os.date("!%c")
	gameData.language = "EN"
	gameData.maxLevel = 1
	gameData.attempts = 0
	gameData.fontName = "HelveticaNeue-Thin"
	gameData.fontNameCounter = "HelveticaNeue"
	gameData.sound = true
	loadsave.saveTable( gameData, "settings.json" )
else
	gameData.totalLevels = 44
	gameData.version = settings.version
	gameData.level = settings.level
	gameData.timeStamp = settings.timeStamp
	gameData.language = settings.language
	gameData.maxLevel = settings.maxLevel
	gameData.attempts = settings.attempts
	gameData.appODealAppKey = settings.appODealAppKey
	gameData.appODealTesting = settings.appODealTesting
	gameData.adDisplayInterval = settings.adDisplayInterval
	gameData.fontName = settings.fontName
	gameData.fontNameCounter = settings.fontNameCounter
	gameData.sound = settings.sound
end

local bounce1 = audio.loadSound( "audio/bounce1.m4a" )
local bounce2 = audio.loadSound( "audio/bounce2.m4a" )
local bounce3 = audio.loadSound( "audio/bounce3.m4a" )
local lineCreate = audio.loadSound( "audio/lineCreate.m4a" )
local lineDelete = audio.loadSound( "audio/lineDelete.m4a" )
local goal = audio.loadSound( "audio/goal.m4a" )
local lose = audio.loadSound( "audio/lose.m4a" )
local portal = audio.loadSound( "audio/portal.m4a" )

local soundTrack = audio.loadStream( "audio/LinezMusic.mp3" )
audio.setVolume( .2, { channel = 1 } )
backgroundMusic = audio.play( soundTrack, { channel = 1, loops = -1 } )
audio.reserveChannels( 1 )
audio.pause( backgroundMusic )

local soundTrackReverse = audio.loadStream( "audio/soundtrackReverse.m4a" )
audio.setVolume( .2, { channel = 2 } )
backgroundMusicReverse = audio.play( soundTrackReverse, { channel = 2, loops = -1 } )
audio.reserveChannels( 2 )
audio.pause( backgroundMusicReverse )

function playSound( soundToPlay )

	local volume = 1
	if soundToPlay == "bounce" then
		local soundID = math.random( 1, 3 )
		if soundID == 1 then
			soundToPlay = bounce1
		elseif soundID == 2 then
			soundToPlay = bounce2
		elseif soundID == 3 then
			soundToPlay = bounce3
		end
	end

	if soundToPlay == "lose" then
		soundToPlay = lose
	end

	if soundToPlay == "lineCreate" then
		soundToPlay = lineCreate
	end

	if soundToPlay == "lineDelete" then
		soundToPlay = lineDelete
	end

	if soundToPlay == "goal" then
		soundToPlay = goal
		volume = .7
	end

	if soundToPlay == "portal" then
		soundToPlay = portal
	end

	local availableChannel = audio.findFreeChannel( 3 )
	audio.setVolume( volume, { channel = availableChannel } )
	audio.play( soundToPlay )
end

function saveSettings()
	loadsave.saveTable( gameData, "settings.json" )
	settingsJSON = json.encode( gameData )
end

function onSystemEvent( event )
    local pageName = composer.getSceneName( "current" )
    if pageName == "menu" then
    	composer.gotoScene( "studio" )
    end
end

actualWidth = display.contentWidth
if display.screenOriginX < 0 then
	local margin = ( display.screenOriginX * 2 ) * -1
	actualWidth = actualWidth + margin
end

actualHeight = display.contentHeight
if display.screenOriginY < 0 then
	margin = ( display.screenOriginY * 2 ) * -1
	actualHeight = actualHeight + margin
end

local base = display.newRect( 0, 0, actualWidth, actualHeight )
base.x = display.contentCenterX
base.y = display.contentCenterY
base.isVisible = true

function checkMemory()
    collectgarbage("collect")
    local memUsage_str = string.format( "MEMORY= %.3f KB", collectgarbage( "count" ) )
    print( composer.getSceneName( "current" ) .. " - " .. memUsage_str .. " | TEXTURE= "..(system.getInfo("textureMemoryUsed")/1048576) )
end

function pressKey( event )
	if event.phase == "up" then
		print( event.keyName )
		local fileName = "menuLevel" .. gameData.level .. ".png"
		local screenShot = display.captureScreen( false )
		display.save( screenShot, { filename = fileName, isFullResolution = true } )
		screenShot:removeSelf()
		screenShot = nil
	end
end

local display_stage = display.getCurrentStage()
display_stage:insert( base )
display_stage:insert( composer.stage )

composer.gotoScene("studio")
--composer.gotoScene("game")