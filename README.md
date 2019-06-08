# hello-world-c-go

Example of a C++ application using a library written in Go.

## Build and run

A simple [Makefile](Makefile) is provided to build and run the application, using a simple command:

```sh
make run
```

This is equivalent to:

```sh
go build -buildmode=c-archive -o build/golib.a main.go
gcc -I build -pthread main.c build/golib.a -o build/test
build/test
```
