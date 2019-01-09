CC=zip
COBJECTS=main.lua conf.lua
main:
	$(CC) juego.zip $(COBJECTS)
	mv juego.zip juego.love
