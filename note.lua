require 'class'

Note = class()

function Note:init(note, length, time)
   self.note = note
   self.length = length
   self.time = time
end

function Note:__tostring()
   return self.note
end

function Note:play()
   audio.play(self.note)
end