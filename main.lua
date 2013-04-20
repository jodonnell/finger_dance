require "main_game"

if os.getenv("LUA_TEST") then
   require "lunatest.lunatest"

   lunatest.suite("tests.main_game_test")

   lunatest.run()
   os.exit()
end

display.setStatusBar( display.HiddenStatusBar )


local physics = require "physics"
physics.start()

local ball = display.newImage( "ball.png", 10, display.contentHeight / 2 )
physics.addBody( ball, { density = 10.0, friction = 0.2, bounce = 0.7, radius=10 } )


local floor = display.newLine( 0, display.contentHeight, display.contentWidth, display.contentHeight )
physics.addBody( floor, "static", { density = 1.0, friction = 0.3, bounce = 0.2} )
-- local main_game = MainGame()

-- function loop()
--    main_game:mainGameLoop()
-- end

local function onScreenTouch( event )
   if event.phase == "began" then
      ball:applyLinearImpulse(100, -20, ball.x, ball.y)
   elseif event.phase == "moved" then
   elseif event.phase == "ended" or event.phase == "cancelled" then
   end
   return true
end

Runtime:addEventListener( "touch", onScreenTouch )


-- Runtime:addEventListener( "enterFrame", loop )

-- local fps = require("fps")
-- local performance = fps.PerformanceOutput.new();
-- performance.group.x, performance.group.y = display.contentWidth/2,  0;
-- performance.alpha = 0.6;