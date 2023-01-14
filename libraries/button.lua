button = {}

function mouseIn(left, top, width, height)
	x, y = love.mouse.getPosition()
	return (x >= left) and (y >= top) and (x <= left + width) and (y <= top + height)
end

function drawCenteredText(left, top, width, height, text)
	local font = love.graphics.getFont()
	local textWidth = font:getWidth(text)
	local textHeight = font:getHeight()
	love.graphics.print(text, left + width / 2, top + height / 2, 0, 1, 1, textWidth / 2, textHeight / 2)
end

function button:new(left, top, width, height, text, action, active)
	local _left = left
	local _top = top
	local _width = width
	local _height = height
	local _text = text
	local _action = action
	local _active = active
	
	current = {}
	
	current.draw = function()
		love.graphics.draw(resources.button.menubutton1, _left, _top)
		if mouseIn(left, top, width, height) then
			if love.mouse.isDown(1) then
				love.graphics.draw(resources.button.menubutton3, _left + 16, _top + 16)
			else
				love.graphics.draw(resources.button.menubutton2, _left + 16, _top + 16)
			end
		end
		if not _active then
			love.graphics.draw(resources.button.menubutton4, _left + 16, _top + 16)
		end
		drawCenteredText(_left, _top, _width, _height, _text)
	end
	
	current.update = function()
		if mouseIn(_left, _top, _width, _height) then
			if love.mouse.isDown(1) then
				_action()
			end
		end
	end
	
	return current
end

return button