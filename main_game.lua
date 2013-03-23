require 'class'

MainGame = class()

function MainGame:init()
   self.frames = 0
   self.gameOver = false
end

function MainGame:mainGameLoop()
   if self.gameOver then return end

   self.frames = self.frames + 1
end

local function onScreenTouch( event )
  if event.phase == "began" then
     local myCircle = display.newCircle( 100, 100, 30 )
     myCircle:setFillColor(128,128,128)
  elseif event.phase == "moved" then
  elseif event.phase == "ended" or event.phase == "cancelled" then
  end

  return true
end

Runtime:addEventListener( "touch", onScreenTouch )
