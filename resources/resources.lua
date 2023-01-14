local resources = {
    font = {},
	music = {},
	button = {},
}

function resources.load()
	resources.font.menu = love.graphics.newFont("resources/fonts/livingst.ttf", 20)

	--resources.music.menuTheme = love.audio.newSource("assets/musics/menuTheme.mp3", "stream")	
	--resources.music.mainTheme = love.audio.newSource("assets/musics/mainTheme.mp3", "stream")	

	resources.button.menubutton1 = love.graphics.newImage("resources/images/button/1.png")	
	resources.button.menubutton2 = love.graphics.newImage("resources/images/button/2.png")	
	resources.button.menubutton3 = love.graphics.newImage("resources/images/button/3.png")	
	resources.button.menubutton4 = love.graphics.newImage("resources/images/button/4.png")	
end

return resources