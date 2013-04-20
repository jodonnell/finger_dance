require 'class'
require 'explosion'
require 'notes'
system.activate("multitouch")

MainGame = class()

function MainGame:init()
   self.frames = 0
   self.notes = {}
   self.gameOver = false

   self.notes = Notes()
   self.noteBalls = {}
   self.currentNote = 1

   self.gameStart = false
   self:playSong(0)

end

function MainGame:playSong(startTime)
   -- from F1 to A4
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
   self:measure12(startTime + 88)
   self:measure13(startTime + 96)
   self:measure14(startTime + 104)
   self:measure15(startTime + 112)
   self:measure16(startTime + 120)
   self:measure17(startTime + 128)
   self:measure18(startTime + 136)
   self:measure19(startTime + 144)
   self:measure20(startTime + 152)
   self:measure21(startTime + 160)
   self:measure22(startTime + 168)
   self:measure23(startTime + 176)
   self:measure24(startTime + 184)
   self:measure25(startTime + 192)

   self:measure51(startTime + 200)
   self:measure52(startTime + 208)
   self:measure53(startTime + 216)
   self:measure54(startTime + 224)


   -- self:measure26(startTime + 200)
   -- self:measure27(startTime + 208)
   -- self:measure28(startTime + 216)
   -- self:measure29(startTime + 224)
   -- self:measure30(startTime + 232)
   -- self:measure31(startTime + 240)
   -- self:measure32(startTime + 248)
   -- self:measure33(startTime + 256)
   -- self:measure34(startTime + 264)
   -- self:measure35(startTime + 272)
   -- self:measure36(startTime + 280)
   -- self:measure37(startTime + 288)
   -- self:measure38(startTime + 296)
   -- self:measure39(startTime + 304)

   -- to measure 16

end

function MainGame:measure1(startTime)
   self.notes:createNote("C3", 1, startTime)
   self.notes.notes[1].shouldPlay = true
   self.notes:createNote("C3", 1, startTime + 2)

   self.notes:createNote("E3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 5)

   self.notes:createNote("A2", 1, startTime + 6)
end

function MainGame:measure2(startTime)
   self.notes:createNote("A2", 1, startTime)

   self.notes:createNote("C3", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 3)

   self.notes:createNote("D3", 1, startTime + 4)
   self.notes:createNote("D3", 1, startTime + 6)

   self.notes:createNote("F3", 1, startTime + 7)
end

function MainGame:measure3(startTime)
   self.notes:createNote("F3", 1, startTime)

   self.notes:createNote("G2", 1, startTime + 1)
   self.notes:createNote("G2", 1, startTime + 3)

   self.notes:createNote("B2", 1, startTime + 4)
   self.notes:createNote("B2", 1, startTime + 6)
end

function MainGame:measure4(startTime)
   self.notes:createNote("C3", 1, startTime)
   self.notes:createNote("C3", 1, startTime + 2)

   self.notes:createNote("E3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 5)

   self.notes:createNote("A2", 1, startTime + 6)
end

function MainGame:measure5(startTime)
   self.notes:createNote("A2", 1, startTime)

   self.notes:createNote("C3", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 3)

   self.notes:createNote("F2", 1, startTime + 4)
   self.notes:createNote("F2", 1, startTime + 6)

   self.notes:createNote("A2", 1, startTime + 7)
end

function MainGame:measure6(startTime)
   self.notes:createNote("A2", 1, startTime)

   self.notes:createNote("G2", 1, startTime + 1)
   self.notes:createNote("G2", 1, startTime + 3)

   self.notes:createNote("B2", 1, startTime + 4)
   self.notes:createNote("B2", 1, startTime + 6)
end

function MainGame:measure7(startTime)
   self.notes:createNote("C2", 1, 49)
   self.notes:createNote("C4", 2, startTime)

   self.notes:createNote("C2", 1, startTime + 2)

   self.notes:createNote("C3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 3)
   self.notes:createNote("C4", 2, startTime + 3)

   self.notes:createNote("C3", 1, startTime + 5)
   self.notes:createNote("E3", 1, startTime + 5)

   self.notes:createNote("A1", 1, startTime + 6)
   self.notes:createNote("C4", 1, startTime + 6)
end

function MainGame:measure8(startTime)
   self.notes:createNote("A1", 1, startTime)

   self.notes:createNote("A2", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 1)

   self.notes:createNote("A2", 1, startTime + 3)
   self.notes:createNote("C3", 1, startTime + 3)

   self.notes:createNote("D2", 1, startTime + 4)

   self.notes:createNote("D2", 1, startTime + 6)
   self.notes:createNote("C4", 1, startTime + 6)

   self.notes:createNote("D3", 1, startTime + 7)
   self.notes:createNote("F3", 1, startTime + 7)
   self.notes:createNote("B3", 1, startTime + 7)
end

function MainGame:measure9(startTime)
   self.notes:createNote("D3", 1, startTime)
   self.notes:createNote("F3", 1, startTime)
   self.notes:createNote("A3", 1, startTime)

   self.notes:createNote("G1", 1, startTime + 1)
   self.notes:createNote("B3", 2, startTime + 1)

   self.notes:createNote("G1", 1, startTime + 3)
   self.notes:createNote("C4", 1, startTime + 3)

   self.notes:createNote("G2", 1, startTime + 4)
   self.notes:createNote("B2", 1, startTime + 4)
   self.notes:createNote("D4", 1, startTime + 4)

   self.notes:createNote("G2", 1, startTime + 6)
   self.notes:createNote("B2", 1, startTime + 6)
end

function MainGame:measure10(startTime)
   self.notes:createNote("C2", 1, startTime)
   self.notes:createNote("E4", 2, startTime)

   self.notes:createNote("C2", 1, startTime + 2)

   self.notes:createNote("C3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 3)
   self.notes:createNote("E4", 2, startTime + 3)

   self.notes:createNote("C3", 1, startTime + 5)
   self.notes:createNote("E3", 1, startTime + 5)

   self.notes:createNote("A1", 1, startTime + 6)
   self.notes:createNote("E4", 2, startTime + 6)
end

function MainGame:measure11(startTime)
   self.notes:createNote("A1", 1, startTime)

   self.notes:createNote("A2", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 1)

   self.notes:createNote("A2", 1, startTime + 3)
   self.notes:createNote("C3", 1, startTime + 3)

   self.notes:createNote("F1", 1, startTime + 4)

   self.notes:createNote("F1", 1, startTime + 6)
   self.notes:createNote("E4", 1, startTime + 6)

   self.notes:createNote("F2", 1, startTime + 7)
   self.notes:createNote("A2", 1, startTime + 7)
   self.notes:createNote("D4", 1, startTime + 7)
end

function MainGame:measure12(startTime)
   self.notes:createNote("F2", 1, startTime + 1)
   self.notes:createNote("A2", 1, startTime + 1)
   self.notes:createNote("C4", 1, startTime + 1)

   self.notes:createNote("G2", 1, startTime + 2)
   self.notes:createNote("D4", 1, startTime + 2)

   self.notes:createNote("G2", 1, startTime + 4)
   self.notes:createNote("E4", 1, startTime + 4)

   self.notes:createNote("G3", 1, startTime + 5)
   self.notes:createNote("B3", 1, startTime + 5)
   self.notes:createNote("F4", 1, startTime + 5)

   self.notes:createNote("G3", 1, startTime + 7)
   self.notes:createNote("B3", 1, startTime + 7)
end

function MainGame:measure13(startTime)
   self.notes:createNote("C2", 1, startTime + 0)
   self.notes:createNote("G4", 1, startTime + 0)

   self.notes:createNote("C2", 1, startTime + 2)

   self.notes:createNote("C3", 1, startTime + 3)
   self.notes:createNote("E2", 1, startTime + 3)

   self.notes:createNote("C3", 1, startTime + 5)
   self.notes:createNote("E2", 1, startTime + 5)

   self.notes:createNote("A1", 1, startTime + 6)
   self.notes:createNote("C3", 1, startTime + 6)
end

function MainGame:measure14(startTime)
   self.notes:createNote("A1", 1, startTime + 0)

   self.notes:createNote("A2", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 1)

   self.notes:createNote("A2", 1, startTime + 3)
   self.notes:createNote("C3", 1, startTime + 3)

   self.notes:createNote("D2", 1, startTime + 4)

   self.notes:createNote("D2", 1, startTime + 6)
   self.notes:createNote("A4", 1, startTime + 6)

   self.notes:createNote("D3", 1, startTime + 7)
   self.notes:createNote("F3", 1, startTime + 7)
   self.notes:createNote("G4", 1, startTime + 7)
end

function MainGame:measure15(startTime)
   self.notes:createNote("D3", 1, startTime + 1)
   self.notes:createNote("F3", 1, startTime + 1)
   self.notes:createNote("F4", 1, startTime + 1)

   self.notes:createNote("G1", 1, startTime + 2)
   self.notes:createNote("E4", 1, startTime + 2)

   self.notes:createNote("G1", 1, startTime + 4)

   self.notes:createNote("G3", 1, startTime + 5)
   self.notes:createNote("B3", 1, startTime + 5)
   self.notes:createNote("D4", 1, startTime + 5)

   self.notes:createNote("G3", 1, startTime + 7)
   self.notes:createNote("B3", 1, startTime + 7)
end

function MainGame:measure16(startTime)
   self.notes:createNote("C2", 1, startTime + 0)
   self.notes:createNote("C4", 1, startTime + 0)

   self.notes:createNote("C2", 1, startTime + 2)

   self.notes:createNote("C3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 3)

   self.notes:createNote("C3", 1, startTime + 5)
   self.notes:createNote("E3", 1, startTime + 5)
   self.notes:createNote("B3", 1, startTime + 5)

   self.notes:createNote("A1", 1, startTime + 6)
   self.notes:createNote("A3", 1, startTime + 6)
end

function MainGame:measure17(startTime)
   self.notes:createNote("A1", 1, startTime + 0)

   self.notes:createNote("A2", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 1)

   self.notes:createNote("A2", 1, startTime + 3)
   self.notes:createNote("C3", 1, startTime + 3)
   self.notes:createNote("G3", 1, startTime + 3)

   self.notes:createNote("F1", 1, startTime + 4)
   self.notes:createNote("F3", 1, startTime + 4)

   self.notes:createNote("F1", 1, startTime + 6)

   self.notes:createNote("F2", 1, startTime + 7)
   self.notes:createNote("A2", 1, startTime + 7)
end

function MainGame:measure18(startTime)
   self.notes:createNote("F2", 1, startTime + 1)
   self.notes:createNote("A2", 1, startTime + 1)
   self.notes:createNote("G3", 1, startTime + 1)

   self.notes:createNote("G1", 1, startTime + 2)
   self.notes:createNote("A3", 1, startTime + 2)

   self.notes:createNote("G1", 1, startTime + 4)
   
   self.notes:createNote("G2", 1, startTime + 5)
   self.notes:createNote("B2", 1, startTime + 5)
   self.notes:createNote("B3", 1, startTime + 5)

   self.notes:createNote("G2", 1, startTime + 7)
   self.notes:createNote("B2", 1, startTime + 7)
end

function MainGame:measure19(startTime)
   self.notes:createNote("C2", 1, startTime + 0)
   self.notes:createNote("C4", 1, startTime + 0)

   self.notes:createNote("C2", 1, startTime + 2)

   self.notes:createNote("C3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 3)
   self.notes:createNote("C4", 2, startTime + 3)

   self.notes:createNote("C3", 1, startTime + 5)
   self.notes:createNote("E3", 1, startTime + 5)

   self.notes:createNote("A1", 1, startTime + 6)
   self.notes:createNote("C4", 2, startTime + 6)
   
end

function MainGame:measure20(startTime)
   self.notes:createNote("A1", 1, startTime + 0)

   self.notes:createNote("A2", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 1)

   self.notes:createNote("A2", 1, startTime + 3)
   self.notes:createNote("C3", 1, startTime + 3)

   self.notes:createNote("D2", 1, startTime + 4)

   self.notes:createNote("D2", 1, startTime + 6)
   self.notes:createNote("C4", 1, startTime + 6)

   self.notes:createNote("D3", 1, startTime + 7)
   self.notes:createNote("F3", 1, startTime + 7)
   self.notes:createNote("B3", 1, startTime + 7)
end

function MainGame:measure21(startTime)
   self.notes:createNote("D3", 1, startTime + 1)
   self.notes:createNote("F3", 1, startTime + 1)
   self.notes:createNote("A3", 1, startTime + 1)

   self.notes:createNote("G2", 1, startTime + 2)
   self.notes:createNote("B3", 1, startTime + 2)

   self.notes:createNote("G2", 1, startTime + 4)
   self.notes:createNote("C4", 1, startTime + 4)

   self.notes:createNote("G3", 1, startTime + 5)
   self.notes:createNote("B3", 1, startTime + 5)
   self.notes:createNote("D4", 1, startTime + 5)

   self.notes:createNote("G3", 1, startTime + 7)
   self.notes:createNote("B3", 1, startTime + 7)
end

function MainGame:measure22(startTime)
   self.notes:createNote("C2", 1, startTime + 0)
   self.notes:createNote("E4", 2, startTime + 0)

   self.notes:createNote("C2", 1, startTime + 2)

   self.notes:createNote("C3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 3)
   self.notes:createNote("E4", 2, startTime + 3)

   self.notes:createNote("C3", 1, startTime + 5)
   self.notes:createNote("E3", 1, startTime + 5)

   self.notes:createNote("A1", 1, startTime + 6)
   self.notes:createNote("E4", 2, startTime + 6)

end

function MainGame:measure23(startTime)
   self.notes:createNote("A1", 1, startTime + 0)

   self.notes:createNote("A2", 1, startTime + 1)
   self.notes:createNote("C3", 1, startTime + 1)

   self.notes:createNote("A2", 1, startTime + 3)
   self.notes:createNote("C3", 1, startTime + 3)

   self.notes:createNote("F1", 1, startTime + 4)

   self.notes:createNote("F1", 1, startTime + 6)
   self.notes:createNote("E4", 1, startTime + 6)

   self.notes:createNote("F2", 1, startTime + 7)
   self.notes:createNote("A2", 1, startTime + 7)
   self.notes:createNote("D4", 1, startTime + 7)
end

function MainGame:measure24(startTime)
   self.notes:createNote("F2", 1, startTime + 1)
   self.notes:createNote("A2", 1, startTime + 1)
   self.notes:createNote("C4", 1, startTime + 1)

   self.notes:createNote("G1", 1, startTime + 2)
   self.notes:createNote("D4", 1, startTime + 2)

   self.notes:createNote("G1", 1, startTime + 4)
   self.notes:createNote("E4", 1, startTime + 4)

   self.notes:createNote("G2", 1, startTime + 5)
   self.notes:createNote("B2", 1, startTime + 5)
   self.notes:createNote("F4", 1, startTime + 5)

   self.notes:createNote("G2", 1, startTime + 7)
   self.notes:createNote("B2", 1, startTime + 7)
end

function MainGame:measure25(startTime)
   self.notes:createNote("C2", 1, startTime + 0)
   self.notes:createNote("G4", 1, startTime + 0)

   self.notes:createNote("C2", 1, startTime + 2)

   self.notes:createNote("C3", 1, startTime + 3)
   self.notes:createNote("E3", 1, startTime + 3)

   self.notes:createNote("C3", 1, startTime + 5)
   self.notes:createNote("E3", 1, startTime + 5)

   self.notes:createNote("A1", 1, startTime + 6)
   self.notes:createNote("C4", 1, startTime + 6)
   
end
function MainGame:measure26(startTime)
end
function MainGame:measure27(startTime)
end
function MainGame:measure28(startTime)
end
function MainGame:measure29(startTime)
end
function MainGame:measure30(startTime)
end
function MainGame:measure31(startTime)
end
function MainGame:measure32(startTime)
end
function MainGame:measure33(startTime)
end
function MainGame:measure34(startTime)
end
function MainGame:measure35(startTime)
end
function MainGame:measure36(startTime)
end
function MainGame:measure37(startTime)
end

function MainGame:measure38(startTime)
end
function MainGame:measure39(startTime)
end

function MainGame:measure51(startTime)
   self.notes:createNote("F3", 1, startTime + 1)
   self.notes:createNote("E3", 1, startTime + 2)
   self.notes:createNote("D3", 1, startTime + 5)
end

function MainGame:measure52(startTime)
   self.notes:createNote("C3", 1, startTime + 0)
   self.notes:createNote("B2", 1, startTime + 5)
   self.notes:createNote("A2", 1, startTime + 6)
end

function MainGame:measure53(startTime)
   self.notes:createNote("G2", 1, startTime + 3)
   self.notes:createNote("F2", 1, startTime + 4)
end

function MainGame:measure54(startTime)
   self.notes:createNote("G2", 1, startTime + 1)
   self.notes:createNote("A2", 1, startTime + 2)
   self.notes:createNote("B2", 1, startTime + 5)
   self.notes:createNote("C3", 2, startTime + 9)
end


function MainGame:oneNoteWidth()
   return display.contentWidth / self.notes.numNotes
end

function MainGame:mainGameLoop()
   if self.gameOver then return end

   self.frames = self.frames + 1
end


function MainGame:noteIndex(x)
   return math.ceil(x / self:oneNoteWidth())
end

function MainGame:touched(x, y)
   for i,note in ipairs(self.notes.notes) do
      if note.circle then
	 local circle = note.circle

	 if x > circle.x - 25 and x < circle.x + 25 and y > circle.y - 25 and y < circle.y + 25 then
	    note.shouldPlay = true
	    note:destroyNote()
	    -- note.circle = nil
	 end
      end
   end
end
