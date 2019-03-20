function clearLoveCallback()
	love.draw = nil
	love.joystickpressed = nil
	love.joystickreleased = nil
	love.keypressed = nil
	love.keyreleased = nil
	love.mousepressed = nil
	love.mousereleased = nil
	love.update = nil
end

function loadState(name)
	clearLoveCallback()
	local path = "states/" .. name
	require(path.. "/main")
	load() 	
end

function love.load()
	loadState("menu")
end
