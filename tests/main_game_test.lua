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
   assert_equal(0, #main_game.player1)

   main_game:touched(100, 401)
   assert_equal(1, #main_game.player1)
end

function test_can_create_a_player_2_step()
   main_game:touched(100, 80)
   assert_equal(0, #main_game.player2)

   main_game:touched(100, 79)
   assert_equal(1, #main_game.player2)
end

function test_moves_step_up()
   main_game:touched(100, 410)
   main_game:mainGameLoop()
   assert(96, main_game.player1[1].y)
end

function test_moves_step_down()
   main_game:touched(100, 70)
   main_game:mainGameLoop()
   assert(104, main_game.player2[1].y)
end
