require 'class'
require 'note'

Notes = class()

function Notes:init()
   self.notesToSounds = {}
   self.numNotes = 0
   self.notes = {}

   local notes = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"}
   for key, noteLetter in pairs(notes) do
      for octave = 1, 4 do
	 local note = noteLetter .. octave
	 self[note] = self:loadSound(note)
	 self.numNotes = self.numNotes + 1
      end
   end
end

function Notes:loadSound(note)
   return audio.loadSound("notes/" .. note .. ".mp3")
end

function Notes:createNote(note, length, time)
   local octave = string.sub(note, -1, -1)
   local letter = string.sub(note, 1, -2)
   table.insert(self.notes, Note(self[note], length, time, octave, letter))
end