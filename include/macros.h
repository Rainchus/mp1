#ifndef _MACROS_H_
#define _MACROS_H_

#define SQ(x) x*x

#define ARRAY_COUNT(arr) (s32)(sizeof(arr) / sizeof(arr[0]))

#ifndef MIN
#define MIN(a, b)				((a) < (b) ? (a) : (b))
#endif

#endif
