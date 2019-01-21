local areaPelea
local jugador
local enemigos
local vidaJugador

function love.load()
	jugador = {}
	jugador.img = love.graphics.newImage('')
	jugador.direcVista = 1 --sera 1 si esta viendo a la derecha y 0 si esta viendo a la izquierda
	jugador.nroAnimacion = 0 --acorde a la cantidad de cuadros que tendra el jugador
	jugador.heightAnimacion = 0
	jugador.widthAnimacion = 0
	jugador.posX = 0
	jugador.posY = 0

	areaPelea = {}
	areaPelea.posX = 0
	areaPelea.posY = 0
	areaPelea.largo = 0
	areaPelea.alto = 0

	enemigos = {} --los enemigos se trabajara con una lista para mostrarlos y cuando derrote a algunos se dejaran de ver

	vidaJugador = {}
	vidaJugador.salud = 100
	vidaJugador.posX = 0
	vidaJugador.posY = 0
end

function love.updated(dt)
	
end

function love.draw()
	love.graphics.draw(jugador.img,jugador.posX,jugador.posY)
end

function love.keypressed(key, scancode, isrepeat)
	if key == 'right' and jugador.posX < areaPelea.posX + areaPelea.largo then
		jugador.posX = jugador.posX + 2
	elseif key == 'left' and jugador.posX > areaPelea.posX then
		jugador.posX = jugador.posX - 2
	elseif key == 'up' and jugador.posY > areaPelea.posY then
		jugador.posY = jugador.posY - 2
	elseif key == 'down' and jugador.posY < areaPelea.posY + areaPelea.alto then
		jugador.posY = jugador.posY + 2
	elseif key == 'a' then
		--golpear a la izquierda
		--si el personaje esta mirando a la derecha lanzara una patada a la izquierda
		if jugador.direcVista == 1 then
		else
		end
	elseif key == 's' then
		--golpear a la derecha
		--si el personaje esta mirando a la izquierda lanzara una patada a la derecha
		if jugador.direcVista == 1 then
		else
		end
	end
end