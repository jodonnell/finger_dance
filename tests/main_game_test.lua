module(..., package.seeall)

require "main_game"

function setup()
   main_game = MainGame()
end

function teardown()
   main_game = nil
end

function test_can_move_right()
   main_game:touched(100, 100)
   main_game:mainGameLoop()
   assert(96, main_game.player1[1].y)
end

