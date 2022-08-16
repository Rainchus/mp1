#ifndef _MACROS_H_
#define _MACROS_H_

#define SQ(x) x*x

#define PI      3.142857f

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

#endif
