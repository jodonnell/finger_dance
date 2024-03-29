require "main_game"

if os.getenv("LUA_TEST") then
   require "lunatest.lunatest"

   lunatest.suite("tests.main_game_test")

   lunatest.run()
   os.exit()
end

display.setStatusBar( display.HiddenStatusBar )

local main_game = MainGame()

function loop()
   main_game:mainGameLoop()
end

local function onScreenTouch( event )
  if event.phase == "began" then
     main_game:touched(event.x, event.y)
  elseif event.phase == "moved" then
  elseif event.phase == "ended" or event.phase == "cancelled" then
  end

  return true
end

Runtime:addEventListener( "touch", onScreenTouch )


Runtime:addEventListener( "enterFrame", loop )

-- local fps = require("fps")
-- local performance = fps.PerformanceOutput.new();
-- performance.group.x, performance.group.y = display.contentWidth/2,  0;
-- performance.alpha = 0.6;