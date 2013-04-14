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

   self.notesToSounds = {}
   self.notesToSounds["C1"] = self.c1
   self.notesToSounds["C#1"] = self.cs1
   self.notesToSounds["D1"] = self.d1
   self.notesToSounds["D#1"] = self.ds1
   self.notesToSounds["E1"] = self.e1
   self.notesToSounds["F1"] = self.f1
   self.notesToSounds["F#1"] = self.fs1
   self.notesToSounds["G1"] = self.g1
   self.notesToSounds["G#1"] = self.gs1
   self.notesToSounds["A1"] = self.a1
   self.notesToSounds["A#1"] = self.as1
   self.notesToSounds["B1"] = self.b1
   self.notesToSounds["C2"] = self.c2
   self.notesToSounds["C#2"] = self.cs2
   self.notesToSounds["D2"] = self.d2
   self.notesToSounds["D#2"] = self.ds2
   self.notesToSounds["E2"] = self.e2
   self.notesToSounds["F2"] = self.f2
   self.notesToSounds["F#2"] = self.fs2
   self.notesToSounds["G2"] = self.g2
   self.notesToSounds["G#2"] = self.gs2
   self.notesToSounds["A2"] = self.a2
   self.notesToSounds["A#2"] = self.as2
   self.notesToSounds["B2"] = self.b2
   self.notesToSounds["C3"] = self.c3
   self.notesToSounds["C#3"] = self.cs3
   self.notesToSounds["D3"] = self.d3
   self.notesToSounds["D#3"] = self.ds3
   self.notesToSounds["E3"] = self.e3
   self.notesToSounds["F3"] = self.f3
   self.notesToSounds["F#3"] = self.fs3
   self.notesToSounds["G3"] = self.g3
   self.notesToSounds["G#3"] = self.gs3
   self.notesToSounds["A3"] = self.a3
   self.notesToSounds["A#3"] = self.as3
   self.notesToSounds["B3"] = self.b3
   self.notesToSounds["C4"] = self.c4
   self.notesToSounds["C#4"] = self.cs4
   self.notesToSounds["D4"] = self.d4
   self.notesToSounds["D#4"] = self.ds4
   self.notesToSounds["E4"] = self.e4
   self.notesToSounds["F4"] = self.f4
   self.notesToSounds["F#4"] = self.fs4
   self.notesToSounds["G4"] = self.g4
   self.notesToSounds["G#4"] = self.gs4
   self.notesToSounds["A4"] = self.a4
   self.notesToSounds["A#4"] = self.as4
   self.notesToSounds["B4"] = self.b4
end

function Notes:loadSound(note)
   return audio.loadSound("notes/" .. note .. ".mp3")
end

function Notes:createNote(note, length, time)
   return Note(self.notesToSounds[note], length, time)
end