require 'class'

MainGame = class()

function MainGame:init()
   self.frames = 0
   self.player1 = {}
   self.player2 = {}
   self.gameOver = false
end

function MainGame:mainGameLoop()
   if self.gameOver then return end

   self.frames = self.frames + 1
end

function MainGame:mainGameLoop()
   if self.gameOver then return end

   self:moveSteps()

   self.frames = self.frames + 1
end

function MainGame:touched(x, y)
     local myCircle = display.newCircle( x, y, 10 )
     myCircle:setFillColor(255,68,228)
     table.insert(self.player1, myCircle)
end

function MainGame:moveSteps()
   for i, step in ipairs(self.player1) do
      step.y = step.y - 4
   end
end


