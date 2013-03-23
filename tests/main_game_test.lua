module(..., package.seeall)

require "main_game"

function setup()
   main_game = MainGame()
end

function teardown()
   main_game = nil
end

function test_can_create_a_step()
   main_game:touched(100, 300)
   assert_equal(0, #main_game.player1)

   main_game:touched(100, 301)
   assert_equal(1, #main_game.player1)
end

function test_can_create_a_player_2_step()
   main_game:touched(100, 100)
   assert_equal(0, #main_game.player2)

   main_game:touched(100, 99)
   assert_equal(1, #main_game.player2)
end

function test_moves_step_up()
   main_game:touched(100, 310)
   main_game:mainGameLoop()
   assert(96, main_game.player1[1].y)
end

function test_moves_step_down()
   main_game:touched(100, 90)
   main_game:mainGameLoop()
   assert(104, main_game.player2[1].y)
end
