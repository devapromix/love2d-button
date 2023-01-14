local state = {}

buttons = {}
table.insert(buttons, button:new(10, 10, 180, 72, 'CONTINUE', function() end, false))
table.insert(buttons, button:new(10, 90, 180, 72, 'NEW GAME', function() end, true))
table.insert(buttons, button:new(10, 170, 180, 72, 'QUIT', function() love.window.close() end, true))

function state.enter()

end

function state.update(dt)
	for i = 1, #buttons do
		buttons[i].update()
	end
end

function state.draw()
	for i = 1, #buttons do
		buttons[i].draw()
	end
end

function state.keypressed(key, unicode)
	--if key == "return" then
	--	states.switch("game_craft")
	--	states.enter()
	--end
end

function state.mousemoved(x, y, dx, dy, istouch)

end

function state.mousepressed(x,y,b,it)

end

return state