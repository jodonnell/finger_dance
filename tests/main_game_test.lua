module(..., package.seeall)

require "main_game"

function setup()
   main_game = MainGame()
end

function teardown()
   main_game = nil
end

function test_can_create_a_step()
   main_game:touched(100, 400)
   assert_equal(0, #main_game.notes)

   main_game:touched(100, 401)
   assert_equal(1, #main_game.notes)
end

function test_moves_step_up()
   main_game:touched(100, 410)
   main_game:mainGameLoop()
   assert(96, main_game.notes[1].y)
end
