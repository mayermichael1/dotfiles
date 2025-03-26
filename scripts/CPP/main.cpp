#include <stdio.h>
#include <stdint.h>

typedef int8_t      s8;
typedef int16_t     s16;
typedef int32_t     s32;
typedef int64_t     s64;

typedef uint8_t     u8;
typedef uint16_t    u16;
typedef uint32_t    u32;
typedef uint64_t    u64;

typedef float       f32;
typedef double      f64;

typedef uint8_t     b8;

#define global_variable static
#define internal        static;
#define local_persist   static;

s32 
main (void)
{
    printf("Hello XXXXX\n");
    return 0;
}
