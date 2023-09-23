compile:
	nasm -felf64 test.asm
	ld test.o -o test

build:
	cmake -S . -B build/
	cmake --build build/

test:
	./build/hydro test.hy