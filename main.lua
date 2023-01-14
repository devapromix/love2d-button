states = require("libraries.states")
resources = require("resources.resources")
button = require "libraries.button"

function mousein(left, top, width, height)
	x, y = love.mouse.getPosition()
	return (x >= left) and (y >= top) and (x <= left + width) and (y <= top + height)
end

function love.load()
	math.randomseed(os.time())
	love.graphics.setDefaultFilter("nearest")
	
	resources.load()

	love.graphics.setFont(resources.font.menu)
	--love.graphics.setColor(1, 1, 0)


	states.setup()
	states.switch("main_menu")
	states.enter()
end

function love.draw()
	states.draw()
end

function love.update(dt)
	states.update(dt)
end

function love.keypressed(key, unicode)
	states.keypressed(key, unicode)
end

function love.mousemoved(x, y, dx, dy, istouch)
	states.mousemoved(x, y, dx, dy, istouch)
end

function love.mousepressed(x,y,b,it)
	states.mousepressed(x,y,b,it)
end