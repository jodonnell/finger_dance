require 'class'
require 'explosion'
require 'notes'
system.activate("multitouch")

MainGame = class()

function MainGame:init()
   self.frames = 0
   self.notes = {}
   self.gameOver = false
   display.newLine(0, 80, 360, 80 )
   self.score = 0
   self.scoreDisplay = display.newText(self.score, 0, 0, native.systemFont, 16)

   self:loadSound()
   self:printNotes()

   notes = Notes()
   self:playSong(1)
end

function MainGame:playSong(startTime)
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
   notes:createNote("C3", 1, startTime)
   notes:createNote("C3", 1, startTime + 2)

   notes:createNote("E3", 1, startTime + 3)
   notes:createNote("E3", 1, startTime + 5)

   notes:createNote("A2", 1, startTime + 6)
end

function MainGame:measure2(startTime)
   notes:createNote("A2", 1, startTime)

   notes:createNote("C3", 1, startTime + 1)
   notes:createNote("C3", 1, startTime + 3)

   notes:createNote("D3", 1, startTime + 4)
   notes:createNote("D3", 1, startTime + 6)

   notes:createNote("F3", 1, startTime + 7)
end

function MainGame:measure3(startTime)
   notes:createNote("F3", 1, startTime)

   notes:createNote("G2", 1, startTime + 1)
   notes:createNote("G2", 1, startTime + 3)

   notes:createNote("B2", 1, startTime + 4)
   notes:createNote("B2", 1, startTime + 6)
end

function MainGame:measure4(startTime)
   notes:createNote("C3", 1, startTime)
   notes:createNote("C3", 1, startTime + 2)

   notes:createNote("E3", 1, startTime + 3)
   notes:createNote("E3", 1, startTime + 5)

   notes:createNote("A2", 1, startTime + 6)
end

function MainGame:measure5(startTime)
   notes:createNote("A2", 1, startTime)

   notes:createNote("C3", 1, startTime + 1)
   notes:createNote("C3", 1, startTime + 3)

   notes:createNote("F2", 1, startTime + 4)
   notes:createNote("F2", 1, startTime + 6)

   notes:createNote("A2", 1, startTime + 7)
end

function MainGame:measure6(startTime)
   notes:createNote("A2", 1, startTime)

   notes:createNote("G2", 1, startTime + 1)
   notes:createNote("G2", 1, startTime + 3)

   notes:createNote("B2", 1, startTime + 4)
   notes:createNote("B2", 1, startTime + 6)
end

function MainGame:measure7(startTime)
   notes:createNote("C2", 1, 49)
   notes:createNote("C4", 2, 49)

   notes:createNote("C2", 1, 51)

   notes:createNote("C3", 1, 52)
   notes:createNote("E3", 1, 52)
   notes:createNote("C4", 2, 52)

   notes:createNote("C3", 1, 54)
   notes:createNote("E3", 1, 54)

   notes:createNote("A1", 1, 55)
   notes:createNote("C4", 1, 55)
end

function MainGame:measure8(startTime)
   notes:createNote("A1", 1, 57)

   notes:createNote("A2", 1, startTime + 1)
   notes:createNote("C3", 1, startTime + 1)

   notes:createNote("A2", 1, startTime + 3)
   notes:createNote("C3", 1, startTime + 3)

   notes:createNote("D2", 1, startTime + 4)

   notes:createNote("D2", 1, startTime + 6)
   notes:createNote("C4", 1, startTime + 6)

   notes:createNote("D3", 1, startTime + 7)
   notes:createNote("F3", 1, startTime + 7)
   notes:createNote("B3", 1, startTime + 7)
end

function MainGame:measure9(startTime)
   notes:createNote("D3", 1, startTime)
   notes:createNote("F3", 1, startTime)
   notes:createNote("A3", 1, startTime)

   notes:createNote("G1", 1, startTime + 1)
   notes:createNote("B3", 2, startTime + 1)

   notes:createNote("G1", 1, startTime + 3)
   notes:createNote("C4", 1, startTime + 3)

   notes:createNote("G2", 1, startTime + 4)
   notes:createNote("B2", 1, startTime + 4)
   notes:createNote("D4", 1, startTime + 4)

   notes:createNote("G2", 1, startTime + 6)
   notes:createNote("B2", 1, startTime + 6)
end

function MainGame:measure10(startTime)
   notes:createNote("C2", 1, startTime)
   notes:createNote("E4", 2, startTime)

   notes:createNote("C2", 1, startTime + 2)

   notes:createNote("C3", 1, startTime + 3)
   notes:createNote("E3", 1, startTime + 3)
   notes:createNote("E4", 2, startTime + 3)

   notes:createNote("C3", 1, startTime + 5)
   notes:createNote("E3", 1, startTime + 5)

   notes:createNote("A1", 1, startTime + 6)
   notes:createNote("E4", 2, startTime + 6)
end

function MainGame:measure11(startTime)
   notes:createNote("A1", 1, startTime)

   notes:createNote("A2", 1, startTime + 1)
   notes:createNote("C3", 1, startTime + 1)

   notes:createNote("A2", 1, startTime + 3)
   notes:createNote("C3", 1, startTime + 3)

   notes:createNote("F1", 1, startTime + 4)

   notes:createNote("F1", 1, startTime + 6)
   notes:createNote("E4", 1, startTime + 6)

   notes:createNote("F2", 1, startTime + 7)
   notes:createNote("A2", 1, startTime + 7)
   notes:createNote("D4", 1, startTime + 7)

end

function MainGame:oneNoteWidth()
   return display.contentWidth / 13
end

function MainGame:printNotes()
   local w = display.contentWidth
   local noteWidth = self:oneNoteWidth()
   
   for i=0,12 do
      local rect = display.newRoundedRect(noteWidth * i, 400, noteWidth - 10, 60, 3)
      rect:setFillColor(i * 40, 140, 140)
      display.newText(self:getLetterFromIndex(i), noteWidth * i + 5, 420, native.systemFont, 6)
   end
end

function MainGame:getLetterFromIndex(i)
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
   return letter
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

   self:removeMissedNotes()
   self:moveNotes()

   self.frames = self.frames + 1
end

function MainGame:removeMissedNotes()
   local noteToRemove = 0
   if #self.notes > 0 then
      for i,note in ipairs(self.notes) do
	 if note.y < -10 then
	    noteToRemove = i
	 end
      end
   end

   if noteToRemove ~= 0 then
      self.notes[noteToRemove]:removeSelf()
      table.remove(self.notes, noteToRemove)
      self:increaseScore()
   end
end

function MainGame:increaseScore()
   self.score = self.score + 1
   self.scoreDisplay:removeSelf()
   self.scoreDisplay = display.newText(self.score, 0, 0, native.systemFont, 16)
end

function MainGame:playNote(noteIndex)
   if noteIndex == 1 then
      audio.play(self.c2)
   elseif noteIndex == 2 then
      audio.play(self.cs2)
   elseif noteIndex == 3 then
      audio.play(self.d2)
   elseif noteIndex == 4 then
      audio.play(self.ds2)
   elseif noteIndex == 5 then
      audio.play(self.e2)
   elseif noteIndex == 6 then
      audio.play(self.f2)
   elseif noteIndex == 7 then
      audio.play(self.fs2)
   elseif noteIndex == 8 then
      audio.play(self.g2)
   elseif noteIndex == 9 then
      audio.play(self.gs2)
   elseif noteIndex == 10 then
      audio.play(self.a2)
   elseif noteIndex == 11 then
      audio.play(self.as2)
   elseif noteIndex == 12 then
      audio.play(self.b2)
   elseif noteIndex == 13 then
      audio.play(self.c3)
   end
end

function MainGame:noteIndex(x)
   return math.ceil(x / self:oneNoteWidth())
end

function MainGame:createNote(x, y)
   local myCircle = display.newCircle( x, y, 10 )
   myCircle:setFillColor(255,68,228)
   table.insert(self.notes, myCircle)

   self:playNote(self:noteIndex(x))
end

function MainGame:destroyNote(x, y)
   local noteToRemove = 0
   if #self.notes > 0 then
      for i,note in ipairs(self.notes) do
	 if x > note.x - 25 and x < note.x + 25 and note.y > 40 and note.y < 110 then
	    noteToRemove = i

	    self:playNote(self:noteIndex(x))
	    ShootFirework(note.x, note.y)
	 end
      end
   end

   if noteToRemove ~= 0 then
      self.notes[noteToRemove]:removeSelf()
      table.remove(self.notes, noteToRemove)
   end
end

function MainGame:touched(x, y)
   if y > 400 then
      self:createNote(x, y)
   end

   if y > 40 and y < 120 then
      self:destroyNote(x, y)
   end
end

function MainGame:moveNotes()
   for i, note in ipairs(self.notes) do
      note.y = note.y - 4
      if note.y < 120 then
	 note:setFillColor(0,255,0)
      end

      if note.y < 40 then
	 note:setFillColor(255,68,228)
      end
   end
end
