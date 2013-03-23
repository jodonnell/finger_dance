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
     
     if y > 300 then
	myCircle:setFillColor(255,68,228)
	table.insert(self.player1, myCircle)
     end

     if y < 100 then
	myCircle:setFillColor(0,68,228)
	table.insert(self.player2, myCircle)
     end

end

function MainGame:moveSteps()
   for i, step in ipairs(self.player1) do
      step.y = step.y - 4
   end

   for i, step in ipairs(self.player2) do
      step.y = step.y + 4
   end

end


