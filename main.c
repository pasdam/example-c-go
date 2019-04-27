#include "golib.h"

int main(int argc, char **argv) {
    char message[] = "World!!!";
    GoString goMessage = {message, sizeof(message)};
    HelloWorld(goMessage);
    return 0;
}
