package main

import (
    "C"
    "fmt"
)

//export HelloWorld
func HelloWorld(name string) {
    fmt.Printf("Hello %s\n", name)
}

func main() {}
