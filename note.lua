require 'class'

Note = class()

function Note:init(note, length, time, octave, letter)
   self.note = note
   self.octave = octave
   self.letter = letter
   self.length = length * 800
   self.time = time * 1000 / 6
   self.shouldPlay = true
   self.circle = nil

   local function playNote(event)
      self:play()
   end
   timer.performWithDelay(self.time, playNote)

   local function createNote(event)

      self.circle = display.newCircle( math.random(display.contentWidth), self:yOnOctave(), 1 )
      self.circle:setFillColor(math.random(100, 255),math.random(100,255),math.random(100,255))

      local destroy = function(event) self:destroyNote(event) end
      self.destroyTransition = transition.to(self.circle, {xScale=10, yScale=10, time=1000, onComplete=destroy})

   end
   timer.performWithDelay(self.time - 1000, createNote)
end

function Note:destroyNote(event)
   transition.cancel(self.destroyTransition)
   self.circle:removeSelf()
   self.circle = nil
end

function Note:yOnOctave()
   if self.octave == '1' then
      return display.contentHeight - 50
   elseif self.octave == '2' then
      return display.contentHeight - 100
   elseif self.octave == '3' then
      return 100
   elseif self.octave == '4' then
      return display.contentHeight - 300
   end
end

function Note:xOnLetter()
   local oneNoteWidth = display.contentWidth / 7

   if self.letter == 'A' then
      return oneNoteWidth * 0.5
   elseif self.letter == 'B' then
      return oneNoteWidth * 1.5
   elseif self.letter == 'C' then
      return oneNoteWidth * 2.5
   elseif self.letter == 'D' then
      return oneNoteWidth * 3.5
   elseif self.letter == 'E' then
      return oneNoteWidth * 4.5
   elseif self.letter == 'F' then
      return oneNoteWidth * 5.5
   elseif self.letter == 'G' then
      return oneNoteWidth * 6.5
   end
end

function Note:__tostring()
   return self.note
end

function Note:play()
   if self.shouldPlay then
      local channel = audio.play(self.note)
      audio.stopWithDelay( self.length, { channel = channel }  )
   end
end
