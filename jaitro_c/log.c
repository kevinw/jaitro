#include <stdio.h>
#include <stdarg.h>

void core_log(int32_t level, const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);
    vprintf(fmt, args);
    va_end(args);
}