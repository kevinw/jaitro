#include <stdio.h>
#include <stdarg.h>

// workaround for jai not supporting varargs in #c_call yet
void core_log(int32_t level, const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);
    printf("[%d] ", level);
    vprintf(fmt, args);
    va_end(args);
}