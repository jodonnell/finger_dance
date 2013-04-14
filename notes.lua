require 'class'
require 'note'

Notes = class()

function Notes:init()
   self.notesToSounds = {}

   local notes = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"}
   for key, noteLetter in pairs(notes) do
      for octave = 1, 4 do
	 local note = noteLetter .. octave
	 self[note] = self:loadSound(note)
      end
   end
end

function Notes:loadSound(note)
   return audio.loadSound("notes/" .. note .. ".mp3")
end

function Notes:createNote(note, length, time)
   return Note(self[note], length, time)
end