module(..., package.seeall)

require "main_game"

function setup()
   main_game = MainGame()
end

function teardown()
   main_game = nil
end

function test_can_move_right()
   local x = main_game.frames
   main_game:mainGameLoop()
   assert_gt(x, main_game.frames)
end

