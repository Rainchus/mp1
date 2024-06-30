#ifndef _MACROS_H_
#define _MACROS_H_

#define MAX_PLAYERS 4

#define SQ(x) ((x) * (x))

#define PI      3.142857f

#ifndef ANGLES
#define ANGLES
#define M_PI		3.14159265358979323846
#define M_DTOR		(3.14159265358979323846/180.0)
#endif

#define ARRAY_COUNT(arr) (s32)(sizeof(arr) / sizeof(arr[0]))

#ifndef MIN
#define MIN(a, b)				((a) < (b) ? (a) : (b))
#endif

#ifndef VEC3F_COPY_OBJ
#define VEC3F_COPY_TO_OBJ(obj, vec3f) \
obj->coords.x = vec3f.x; \
obj->coords.y = vec3f.y; \
obj->coords.z = vec3f.z;
#endif

#define ARRLEN(x) ((s32)(sizeof(x) / sizeof(x[0])))

#define ALIGNED(x) __attribute__((aligned(x)))

#define VIRTUAL_TO_PHYSICAL(addr) (u32)((u8*)(addr) - 0x80000000)

#define INTEGER_LOG2(x) ((x) <= 2 ? 1 : (x) <= 4 ? 2 : (x) <= 8 ? 3 : (x) <= 16 ? 4 : (x) <= 32 ? 5 : (x) <= 64 ? 6 : (x) <= 128 ? 7 : 8)

#endif
