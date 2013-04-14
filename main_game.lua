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
   notes:createNote("C3", 1, 0)
   note = notes:createNote("C2", 1, 2)
   note = notes:createNote("F3", 1, 3)
   note = notes:createNote("A3", 1, 4)
   note = notes:createNote("C4", 1, 5)

   note = notes:createNote("D2", 1, 7)
   note = notes:createNote("D3", 1, 9)
   note = notes:createNote("F3", 1, 11)
   note = notes:createNote("A3", 1, 12)

   note = notes:createNote("G2", 1, 14)
   note = notes:createNote("G3", 1, 16)
   note = notes:createNote("A#3", 1, 18)
   note = notes:createNote("D4", 1, 19)

   note = notes:createNote("C4", 1, 20)
   note = notes:createNote("C2", 1, 20)

   note = notes:createNote("C2", 1, 21)
   note = notes:createNote("D2", 1, 22)
   note = notes:createNote("E2", 1, 23)
   note = notes:createNote("F2", 1, 24)

   note = notes:createNote("F2", 1, 24)
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
