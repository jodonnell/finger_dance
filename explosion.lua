local lib_emitter = require("lib_emitter")

local Random = math.random

local screenW = display.contentWidth
local screenH = display.contentHeight
local screenHW = screenW *.5
local screenHH = screenH *.5

--Base emitter props
local radiusRange = 100

local duration = 1200 --800
local startAlpha = 1
local endAlpha = 0
local pImage = nil
local pImageWidth = nil
local pImageHeight = nil
local emitterDensity = 40

--Mortar props
local mortarSpeed = 200
local mortarEmitterDensity = 40
local mortarRadiusRange = 100
local mortarThickness = 4
local mortarEmitter = emitterLib:createEmitter(radiusRange, mortarThickness, duration, startAlpha, endAlpha, pImage, pImageWidth, pImageHeight)

--Sprayer props
local sprayerSpeed = 200
local sprayerEmitterDensity = 40
local sprayerRadiusRange = 70
local sprayerThickness = 3
local sprayerEmitter = emitterLib:createEmitter(sprayerRadiusRange, sprayerThickness, duration, startAlpha, endAlpha, pImage, pImageWidth, pImageHeight)
--This will be a random color emitter
sprayerEmitter:setColor(-1)

--Keep it tidy
local levelGroup = display.newGroup()

local function SprayStyleEmitter(px, py)
  timer.performWithDelay(10, function()
    sprayerEmitter:emit(levelGroup, px, py)
  end, sprayerEmitterDensity)
end

local function ExplodeStyleEmitter(px, py)
  mortarEmitter:setColor(Random(20,255),Random(20,255),Random(20,255))
    
  for i=1,mortarEmitterDensity do
    mortarEmitter:emit(levelGroup, px, py)
  end
end

function ShootFirework(x, y)
   --How about a little poof to boot
   local pop = display.newCircle(levelGroup, x, y, Random(20,30))
   local function DestroyPop(Obj)
      display.remove(Obj)
      Obj = nil
   end
   transition.to(pop, {time=400, alpha = 0, onComplete=DestroyPop})
   --end of extra poof code
   ExplodeStyleEmitter(x, y)
end

local function StartSprayer()
  local px = Random(30, screenW-30)
  local py = Random(screenH-60, screenH-30)
  
  SprayStyleEmitter(px, py)
end
