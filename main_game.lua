require 'class'
require 'explosion'
require 'notes'
system.activate("multitouch")

MainGame = class()

function MainGame:init()
   self.frames = 0
   self.notes = {}
   self.gameOver = false

   self.notes = Notes()
   self.noteBalls = {}
   self.currentNote = 1

   self.gameStart = false
   self:playSong(0)

end

function MainGame:playSong(startTime)
   -- from F1 to A4
   self:measure1(startTime)
   self:measure2(startTime + 8)
   self:measure3(startTime + 17)
   self:measure4(startTime + 24)
   self:measure5(startTime + 32)
   self:measure6(startTime + 41)
   self:measure7(startTime + 48)
   self:measure8(startTime + 56)
   self:measure9(startTime + 65)
   self:measure10(startTime + 72)
   self:measure11(startTime + 80)
   -- to measure 16

end

function MainGame:measure1(startTime)
   self.notes:createNote("C3", 1, startTime)
   self.notes.notes[1].shouldPlay = true
   self.notes:createNote("C3", 1, startTime + 2)

   self.notes:createNote("E3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 5)

   self.notes:createNote("A2", 1, startTime + 6)
end

function MainGame:measure2(startTime)
   self.notes:createNote("A2", 1, startTime)

   self.notes:createNote("C3", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 3)

   self.notes:createNote("D3", 1, startTime + 4)
   self.notes:createNote("D3", 1, startTime + 6)

   self.notes:createNote("F3", 1, startTime + 7)
end

function MainGame:measure3(startTime)
   self.notes:createNote("F3", 1, startTime)

   self.notes:createNote("G2", 1, startTime + 1)
   self.notes:createNote("G2", 1, startTime + 3)

   self.notes:createNote("B2", 1, startTime + 4)
   self.notes:createNote("B2", 1, startTime + 6)
end

function MainGame:measure4(startTime)
   self.notes:createNote("C3", 1, startTime)
   self.notes:createNote("C3", 1, startTime + 2)

   self.notes:createNote("E3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 5)

   self.notes:createNote("A2", 1, startTime + 6)
end

function MainGame:measure5(startTime)
   self.notes:createNote("A2", 1, startTime)

   self.notes:createNote("C3", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 3)

   self.notes:createNote("F2", 1, startTime + 4)
   self.notes:createNote("F2", 1, startTime + 6)

   self.notes:createNote("A2", 1, startTime + 7)
end

function MainGame:measure6(startTime)
   self.notes:createNote("A2", 1, startTime)

   self.notes:createNote("G2", 1, startTime + 1)
   self.notes:createNote("G2", 1, startTime + 3)

   self.notes:createNote("B2", 1, startTime + 4)
   self.notes:createNote("B2", 1, startTime + 6)
end

function MainGame:measure7(startTime)
   self.notes:createNote("C2", 1, 49)
   self.notes:createNote("C4", 2, startTime)

   self.notes:createNote("C2", 1, startTime + 2)

   self.notes:createNote("C3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 3)
   self.notes:createNote("C4", 2, startTime + 3)

   self.notes:createNote("C3", 1, startTime + 5)
   self.notes:createNote("E3", 1, startTime + 5)

   self.notes:createNote("A1", 1, startTime + 6)
   self.notes:createNote("C4", 1, startTime + 6)
end

function MainGame:measure8(startTime)
   self.notes:createNote("A1", 1, startTime)

   self.notes:createNote("A2", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 1)

   self.notes:createNote("A2", 1, startTime + 3)
   self.notes:createNote("C3", 1, startTime + 3)

   self.notes:createNote("D2", 1, startTime + 4)

   self.notes:createNote("D2", 1, startTime + 6)
   self.notes:createNote("C4", 1, startTime + 6)

   self.notes:createNote("D3", 1, startTime + 7)
   self.notes:createNote("F3", 1, startTime + 7)
   self.notes:createNote("B3", 1, startTime + 7)
end

function MainGame:measure9(startTime)
   self.notes:createNote("D3", 1, startTime)
   self.notes:createNote("F3", 1, startTime)
   self.notes:createNote("A3", 1, startTime)

   self.notes:createNote("G1", 1, startTime + 1)
   self.notes:createNote("B3", 2, startTime + 1)

   self.notes:createNote("G1", 1, startTime + 3)
   self.notes:createNote("C4", 1, startTime + 3)

   self.notes:createNote("G2", 1, startTime + 4)
   self.notes:createNote("B2", 1, startTime + 4)
   self.notes:createNote("D4", 1, startTime + 4)

   self.notes:createNote("G2", 1, startTime + 6)
   self.notes:createNote("B2", 1, startTime + 6)
end

function MainGame:measure10(startTime)
   self.notes:createNote("C2", 1, startTime)
   self.notes:createNote("E4", 2, startTime)

   self.notes:createNote("C2", 1, startTime + 2)

   self.notes:createNote("C3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 3)
   self.notes:createNote("E4", 2, startTime + 3)

   self.notes:createNote("C3", 1, startTime + 5)
   self.notes:createNote("E3", 1, startTime + 5)

   self.notes:createNote("A1", 1, startTime + 6)
   self.notes:createNote("E4", 2, startTime + 6)
end

function MainGame:measure11(startTime)
   self.notes:createNote("A1", 1, startTime)

   self.notes:createNote("A2", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 1)

   self.notes:createNote("A2", 1, startTime + 3)
   self.notes:createNote("C3", 1, startTime + 3)

   self.notes:createNote("F1", 1, startTime + 4)

   self.notes:createNote("F1", 1, startTime + 6)
   self.notes:createNote("E4", 1, startTime + 6)

   self.notes:createNote("F2", 1, startTime + 7)
   self.notes:createNote("A2", 1, startTime + 7)
   self.notes:createNote("D4", 1, startTime + 7)
end

function MainGame:oneNoteWidth()
   return display.contentWidth / self.notes.numNotes
end

function MainGame:mainGameLoop()
   if self.gameOver then return end

   self.frames = self.frames + 1
end


function MainGame:noteIndex(x)
   return math.ceil(x / self:oneNoteWidth())
end

function MainGame:touched(x, y)
   for i,note in ipairs(self.notes.notes) do
      if note.circle then
	 local circle = note.circle

	 if x > circle.x - 25 and x < circle.x + 25 and y > circle.y - 25 and y < circle.y + 25 then
	    note.shouldPlay = true
	    note:destroyNote()
	    -- note.circle = nil
	 end
      end
   end
end
