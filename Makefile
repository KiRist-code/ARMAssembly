HelloWorld: HelloWorld.o
	ld -o Helloworld HelloWorld.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

HelloWorld.o: HelloWorld.s
	as -o HelloWorld.o HelloWorld.s
