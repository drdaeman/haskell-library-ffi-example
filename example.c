#include <stdio.h>
#include <dlfcn.h>

void test(int value) {
    void *dl = dlopen("./libfoo.so", RTLD_LAZY);
    printf("foo(%d) == %d\n", value, ((int(*)(int)) dlsym(dl, "foo"))(value));
    dlclose(dl);
}

int main(int argc, char *argv[]) {
    test(5);
    return 0;
}
