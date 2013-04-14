require 'class'
require 'note'

Notes = class()

function Notes:init(note)
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

function Notes:createNote(note, length, time)
   if note == 'C2' then
      return Note(self.c2, length, time)
   end
end