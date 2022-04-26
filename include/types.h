#ifndef _TYPES_H_
#define _TYPES_H_

#define NULL 0

typedef signed char             s8;
typedef unsigned char           u8;
typedef signed short int        s16;
typedef unsigned short int      u16;
typedef signed int              s32;
typedef unsigned int            u32;
typedef signed long long int    s64;
typedef unsigned long long int  u64;
typedef float                   f32;
typedef double                  f64;

#define va_arg(AP,TYPE) (AP = (__gnuc_va_list) ((char *) (AP) + __va_rounded_size (TYPE)), *((TYPE *) (void *) ((char *) (AP) - ((sizeof (TYPE) < __va_rounded_size (char) ? sizeof (TYPE) : __va_rounded_size (TYPE))))))

#endif
