require 'class'
system.activate("multitouch")

MainGame = class()

function MainGame:init()
   self.frames = 0
   self.player1Bullets = {}
   self.player2 = {}
   self.gameOver = false
   display.newLine(0, 80, 360, 80 )
   self.player = 1
   self.score = 0
   self.scoreDisplay = display.newText(self.score, 0, 0, native.systemFont, 16)

   self:loadSound()
   self:printNotes()

end

function MainGame:printNotes()
   local w = display.contentWidth
   local sixths = w / 12
   
   for i=0,12 do
      local rect = display.newRoundedRect(sixths * i, 400, sixths - 10, 60, 3)
      rect:setFillColor(i * 40, 140, 140)

      local letter = nil
      if i == 0 then
	 letter = "C2"
      elseif i == 1 then
	 letter = "C#2"
      elseif i == 2 then
	 letter = "D2"
      elseif i == 3 then
	 letter = "D#2"
      elseif i == 4 then
	 letter = "E2"
      elseif i == 5 then
	 letter = "F2"
      elseif i == 6 then
	 letter = "F#2"
      elseif i == 7 then
	 letter = "G2"
      elseif i == 8 then
	 letter = "G#2"
      elseif i == 9 then
	 letter = "A2"
      elseif i == 10 then
	 letter = "A#2"
      elseif i == 11 then
	 letter = "B2"
      elseif i == 12 then
	 letter = "C3"
      end
      display.newText(letter, sixths * i + 5, 420, native.systemFont, 6)
   end
end

function MainGame:loadSound()
   self.c2 = audio.loadSound("notes/C2.mp3")
   self.cs2 = audio.loadSound("notes/C#2.mp3")
   self.d2 = audio.loadSound("notes/D2.mp3")
   self.ds2 = audio.loadSound("notes/D#2.mp3")
   self.e2 = audio.loadSound("notes/E2.mp3")
   self.f2 = audio.loadSound("notes/F2.mp3")
   self.fs2 = audio.loadSound("notes/F#2.mp3")
   self.g2 = audio.loadSound("notes/G2.mp3")
   self.gs2 = audio.loadSound("notes/G#2.mp3")
   self.a2 = audio.loadSound("notes/A2.mp3")
   self.as2 = audio.loadSound("notes/A#2.mp3")
   self.b2 = audio.loadSound("notes/B2.mp3")
   self.c3 = audio.loadSound("notes/C3.mp3")
end

function MainGame:mainGameLoop()
   if self.gameOver then return end

   local stepToRemove = 0
   if #self.player1Bullets > 0 then
      for i,step in ipairs(self.player1Bullets) do
	 if step.y < -10 then
	    stepToRemove = i
	 end
      end
   end

   if stepToRemove ~= 0 then
      self.player1Bullets[stepToRemove]:removeSelf()
      table.remove(self.player1Bullets, stepToRemove)
      self.score = self.score + 1
      self.scoreDisplay:removeSelf()
      self.scoreDisplay = display.newText(self.score, 0, 0, native.systemFont, 16)
   end

   self:moveSteps()

   self.frames = self.frames + 1
end

function MainGame:playNote(noteIndex)
   if noteIndex == 0 then
      audio.play(self.c2)
   elseif noteIndex == 1 then
      audio.play(self.cs2)
   elseif noteIndex == 2 then
      audio.play(self.d2)
   elseif noteIndex == 3 then
      audio.play(self.ds2)
   elseif noteIndex == 4 then
      audio.play(self.e2)
   elseif noteIndex == 5 then
      audio.play(self.f2)
   elseif noteIndex == 6 then
      audio.play(self.fs2)
   elseif noteIndex == 7 then
      audio.play(self.g2)
   elseif noteIndex == 8 then
      audio.play(self.gs2)
   elseif noteIndex == 9 then
      audio.play(self.a2)
   elseif noteIndex == 10 then
      audio.play(self.as2)
   elseif noteIndex == 11 then
      audio.play(self.b2)
   elseif noteIndex == 12 then
      audio.play(self.c3)
   end
end

function MainGame:touched(x, y)
   if y > 400 and self.player == 1 then
      local myCircle = display.newCircle( x, y, 10 )
      myCircle:setFillColor(255,68,228)
      table.insert(self.player1Bullets, myCircle)

      local w = display.contentWidth
      local sixths = w / 12
      noteIndex = math.ceil(x / sixths)
      self:playNote(noteIndex)
   end

   local stepToRemove = 0
   if y > 40 and y < 120 and self.player == 1 then
      if #self.player1Bullets > 0 then
	 for i,step in ipairs(self.player1Bullets) do
	    -- display.newRect(step.x - 25, 60, 50, 50)
	    if x > step.x - 25 and x < step.x + 25 and step.y > 40 and step.y < 110 then
	       	 stepToRemove = i

		 local w = display.contentWidth
		 local sixths = w / 6
		 noteIndex = math.floor(x / sixths)
		 self:playNote(noteIndex)
		 ShootFirework(step.x, step.y)
	    end
	 end
      end

      if stepToRemove ~= 0 then
	 self.player1Bullets[stepToRemove]:removeSelf()
	 table.remove(self.player1Bullets, stepToRemove)
      end

      -- check with collision of player 1 bullets
      -- make em disappear
   end

   if y < 80 and self.player == 2 then
      myCircle:setFillColor(0,68,228)
      table.insert(self.player2, myCircle)
   end
end

function MainGame:moveSteps()
   for i, step in ipairs(self.player1Bullets) do
      step.y = step.y - 4
      if step.y < 120 then
	 step:setFillColor(0,255,0)
      end

      if step.y < 40 then
	 step:setFillColor(255,68,228)
      end
   end

   for i, step in ipairs(self.player2) do
      step.y = step.y + 4
   end

end







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

function StartShow()
   ShootFirework()
end

