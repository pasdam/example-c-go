.PHONY: run
run: build-c
	build/test

.PHONY: clean
clean:
	rm -rf build

build-go-lib: build/golib.a build/golib.h

build-c: build/golib.h main.c
	gcc -I build -pthread main.c build/golib.a -o build/test

build/golib.%: main.go
	go build -buildmode=c-archive -o build/golib.a main.go

build/ :
	mkdir -p build
