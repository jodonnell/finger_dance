require 'class'

Note = class()

function Note:init(note, length, time)
   self.note = note
   self.length = length * 400
   self.time = time * 1000 / 6

   local function playNote(event)
      self:play()
   end
   timer.performWithDelay(self.time, playNote)
end

function Note:__tostring()
   return self.note
end

function Note:play()
   local channel = audio.play(self.note)
   audio.stopWithDelay( self.length, { channel = channel }  )
end