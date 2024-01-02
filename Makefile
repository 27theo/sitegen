SHELL      := pwsh.exe
SOURCES    := src/entity.c src/main.c src/md4c-html.c src/md4c.c
EXECUTABLE := build/main.exe
CC         := gcc
FLAGS      := -Wall -std=c17

all:
	@if ( !(Test-Path build) ) { [void] (New-Item -ItemType "directory" -Name build -Path .) }
	$(CC) $(FLAGS) -o $(EXECUTABLE) $(SOURCES)

clean:
	@if ( Test-Path build ) { Remove-Item -Recurse build }