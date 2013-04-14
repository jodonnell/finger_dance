require 'class'
require 'note'

Notes = class()

function Notes:init()
   self.c1 = self:loadSound("C1")
   self.cs1 = self:loadSound("C#1")
   self.d1 = self:loadSound("D1")
   self.ds1 = self:loadSound("D#1")
   self.e1 = self:loadSound("E1")
   self.f1 = self:loadSound("F1")
   self.fs1 = self:loadSound("F#1")
   self.g1 = self:loadSound("G1")
   self.gs1 = self:loadSound("G#1")
   self.a1 = self:loadSound("A1")
   self.as1 = self:loadSound("A#1")
   self.b1 = self:loadSound("B1")

   self.c2 = self:loadSound("C2")
   self.cs2 = self:loadSound("C#2")
   self.d2 = self:loadSound("D2")
   self.ds2 = self:loadSound("D#2")
   self.e2 = self:loadSound("E2")
   self.f2 = self:loadSound("F2")
   self.fs2 = self:loadSound("F#2")
   self.g2 = self:loadSound("G2")
   self.gs2 = self:loadSound("G#2")
   self.a2 = self:loadSound("A2")
   self.as2 = self:loadSound("A#2")
   self.b2 = self:loadSound("B2")

   self.c3 = self:loadSound("C3")
   self.cs3 = self:loadSound("C#3")
   self.d3 = self:loadSound("D3")
   self.ds3 = self:loadSound("D#3")
   self.e3 = self:loadSound("E3")
   self.f3 = self:loadSound("F3")
   self.fs3 = self:loadSound("F#3")
   self.g3 = self:loadSound("G3")
   self.gs3 = self:loadSound("G#3")
   self.a3 = self:loadSound("A3")
   self.as3 = self:loadSound("A#3")
   self.b3 = self:loadSound("B3")

   self.c4 = self:loadSound("C4")
   self.cs4 = self:loadSound("C#4")
   self.d4 = self:loadSound("D4")
   self.ds4 = self:loadSound("D#4")
   self.e4 = self:loadSound("E4")
   self.f4 = self:loadSound("F4")
   self.fs4 = self:loadSound("F#4")
   self.g4 = self:loadSound("G4")
   self.gs4 = self:loadSound("G#4")
   self.a4 = self:loadSound("A4")
   self.as4 = self:loadSound("A#4")
   self.b4 = self:loadSound("B4")
end

function Notes:loadSound(note)
   return audio.loadSound("notes/" .. note .. ".mp3")
end

function Notes:createNote(note, length, time)
   local loadedNote
   if note == 'C2' then
      loadedNote = self.c2
   elseif note == 'F2' then
      loadedNote = self.f2
   elseif note == 'F3' then
      loadedNote = self.f3
   elseif note == 'A3' then
      loadedNote = self.a3
   elseif note == 'C4' then
      loadedNote = self.c4
   elseif note == 'D2' then
      loadedNote = self.d2
   elseif note == 'D3' then
      loadedNote = self.d3
   elseif note == 'C3' then
      loadedNote = self.c3
   elseif note == 'G3' then
      loadedNote = self.g3
   elseif note == 'G2' then
      loadedNote = self.g2
   elseif note == 'A#3' then
      loadedNote = self.as3
   elseif note == 'D4' then
      loadedNote = self.d4
   end
   return Note(loadedNote, length, time)
end