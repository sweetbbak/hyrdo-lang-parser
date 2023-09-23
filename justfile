compile:
	nasm -felf64 out.asm
	ld test.o -o out

build:
	bash -c '[ ! -d build ] && mkdir build'
	cmake -S . -B build/
	cmake --build build/

test:
	./build/hydro test.hy