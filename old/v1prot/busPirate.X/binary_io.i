# 1 "../binary_io.c"
# 1 "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../binary_io.c"
# 18 "../binary_io.c"
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdbool.h" 1 3 4
# 19 "../binary_io.c" 2



# 1 "../aux_pin.h" 1
# 28 "../aux_pin.h"
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 20 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdint.h" 3 4
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 1 3 4
# 10 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 3 4
typedef long double _Double;
# 154 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 3 4
typedef signed char int8_t;





typedef signed int int16_t;
# 172 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 3 4
typedef signed long int int32_t;




typedef signed long long int int64_t;




typedef long long int intmax_t;




typedef unsigned char uint8_t;





typedef unsigned int uint16_t;
# 205 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 3 4
typedef unsigned long int uint32_t;




typedef unsigned long long int uint64_t;




typedef unsigned long long int uintmax_t;
# 235 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 3 4
typedef unsigned int uintptr_t;
# 269 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 3 4
typedef int intptr_t;
# 21 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdint.h" 2 3 4


typedef int int_fast8_t;





typedef long long int int_fast64_t;





typedef signed char int_least8_t;





typedef int int_least16_t;





typedef long int int_least24_t;





typedef long int int_least32_t;





typedef long long int int_least64_t;





typedef unsigned int uint_fast8_t;





typedef long unsigned int uint_fast24_t;





typedef long long unsigned int uint_fast64_t;





typedef unsigned char uint_least8_t;





typedef unsigned int uint_least16_t;





typedef long unsigned int uint_least24_t;





typedef long unsigned int uint_least32_t;





typedef long long unsigned int uint_least64_t;
# 387 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdint.h" 3 4
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/stdint.h" 1 3 4

typedef int int_fast16_t;





typedef long int int_fast32_t;





typedef unsigned int uint_fast16_t;





typedef long unsigned int uint_fast32_t;
# 388 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdint.h" 2 3 4
# 29 "../aux_pin.h" 2
# 72 "../aux_pin.h"
void bp_update_pwm(const uint16_t frequency, const uint16_t duty_cycle);
# 84 "../aux_pin.h"
void bp_update_duty_cycle(const uint16_t duty_cycle);




void bp_aux_pin_set_high_impedance(void);




void bp_aux_pin_set_high(void);




void bp_aux_pin_set_low(void);






_Bool bp_aux_pin_read(void);




void bp_servo_setup(void);




void bp_frequency_counter_setup(void);






unsigned long bp_measure_frequency(void);




void bp_pwm_setup(void);
# 23 "../binary_io.c" 2
# 1 "../base.h" 1
# 32 "../base.h"
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 1 3 4
# 12 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/subordinate_errors.h" 1 3 4
# 13 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 2 3 4
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stddef.h" 1 3 4
# 17 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stddef.h" 3 4
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 1 3 4
# 42 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 3 4
typedef short unsigned int wchar_t;
# 221 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 3 4
typedef unsigned int size_t;
# 249 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 3 4
typedef int ptrdiff_t;
# 18 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stddef.h" 2 3 4
# 14 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 2 3 4
# 25 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern int __attach_input_file(const char *f);
void __close_input_file(void);
# 36 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern int __C30_UART;
# 46 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern void __delay32(unsigned long cycles);
# 84 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern __attribute__((space(prog))) int _PROGRAM_END;
# 97 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern void _dump_heap_info(void);
# 116 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
typedef unsigned long _prog_addressT;

extern _prog_addressT _memcpy_helper(_prog_addressT src, void *dst,
                                     unsigned int len, int flags);
# 129 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern void *_memcpy_df(__pack_upper_byte void *src,void *dst,unsigned int len);
# 148 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
_prog_addressT _memcpy_p2d16(void *dest, _prog_addressT src,
                             unsigned int len);
# 160 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
_prog_addressT _memcpy_p2d24(void *dest, _prog_addressT src,
                             unsigned int len);
# 173 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
_prog_addressT _strncpy_p2d16(char *dest, _prog_addressT src,
                              unsigned int len);
# 186 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
_prog_addressT _strncpy_p2d24(char *dest, _prog_addressT src,
                              unsigned int len);







void *_memcpy_packed(char *dest, const __pack_upper_byte void *src,
                     unsigned int len);



extern char *_strcpy_packed(char *dest, const __pack_upper_byte void *src);
extern char *_strncpy_packed(char *dest, const __pack_upper_byte void *src,
                             unsigned int len);






extern __eds__ void *_memcpy_eds_3(const __eds__ void *src, __eds__ void *dst,
                                   int len);
# 224 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern __eds__ char *_strcpy_eds(const __eds__ void *src, __eds__ void *dst);
extern __eds__ char *_strncpy_eds(const __eds__ void *src, __eds__ void *dst,
                                  int len);
# 235 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern __eds__ void *_memchr_eds(__eds__ void *s, int c, size_t n);
# 371 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern void _eedata_helper1 (_prog_addressT dst, int len);
extern void _eedata_helper2 (void);
extern void _eedata_helper3 (_prog_addressT dst, int dat);
extern void _eedata_helper4 (_prog_addressT dst, int *src);
extern void _eedata_helper5 (_prog_addressT dst, int len);
extern void _eedata_helper6 (void);
extern void _eedata_helper7 (_prog_addressT dst, int dat);
# 393 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
extern void _flash_helper1 (_prog_addressT dst, int code)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper2 (_prog_addressT dst, int *src, int len)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper3 (_prog_addressT dst, long *src, int len)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper4 (_prog_addressT dst, int dat)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper5 (_prog_addressT dst, long dat)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper6 (int code)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper7 (_prog_addressT dst, int len)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper8 (_prog_addressT dst, int *src, int len)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper9 (_prog_addressT dst, long *src, int len)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper10 (_prog_addressT dst, int dat1, int empty, int dat2)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
extern void _flash_helper11 (_prog_addressT dst, long dat1, long dat2)
            __attribute__((deprecated("consider migrating to Microchip Code Configurator https://www.microchip.com/mcc")));
# 538 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
void _erase_flash(_prog_addressT dst);
# 554 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
void _write_flash16(_prog_addressT dst, int *src);
# 570 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
void _write_flash24(_prog_addressT dst, long *src);
# 589 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
void _write_flash_word16(_prog_addressT dst, int dat);
# 607 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/libpic30.h" 3 4
void _write_flash_word24(_prog_addressT dst, long dat);
# 33 "../base.h" 2

# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdio.h" 1 3 4







# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/features.h" 1 3 4
# 9 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdio.h" 2 3 4
# 22 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdio.h" 3 4
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 1 3 4
# 22 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 3 4
typedef __builtin_va_list __isoc_va_list;
# 623 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 3 4
typedef struct _IO_FILE FILE;
# 23 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdio.h" 2 3 4
# 50 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdio.h" 3 4
typedef union _G_fpos64_t {
 char __opaque[16];
 double __align;
} fpos_t;

extern FILE *const *_stdout;
extern FILE *const *_stderr;
extern FILE *const *_stdin;





FILE *fopen(const char *restrict, const char *restrict);
FILE *freopen(const char *restrict, const char *restrict, FILE *restrict);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *restrict, fpos_t *restrict);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *restrict, size_t, size_t, FILE *restrict);
size_t fwrite(const void *restrict, size_t, size_t, FILE *restrict);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);
int ungetc(int, FILE *);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);

char *fgets(char *restrict, int, FILE *restrict);

char *gets(char *);


int fputs(const char *restrict, FILE *restrict);
int puts(const char *);

int printf(const char *restrict, ...);
int fprintf(FILE *restrict, const char *restrict, ...);
int sprintf(char *restrict, const char *restrict, ...);
int snprintf(char *restrict, size_t, const char *restrict, ...);

int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

int scanf(const char *restrict, ...);
int fscanf(FILE *restrict, const char *restrict, ...);
int sscanf(const char *restrict, const char *restrict, ...);
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsscanf(const char *restrict, const char *restrict, __isoc_va_list);

void perror(const char *);

int setvbuf(FILE *restrict, char *restrict, int, size_t);
void setbuf(FILE *restrict, char *restrict);

char *tmpnam(char *);
FILE *tmpfile(void);
# 35 "../base.h" 2
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdlib.h" 1 3 4
# 19 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdlib.h" 3 4
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 1 3 4
# 20 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/stdlib.h" 2 3 4

int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);

long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);
void *aligned_alloc(size_t, size_t);

__attribute__((__noreturn__)) void abort (void);
int atexit (void (*) (void));
__attribute__((__noreturn__)) void exit (int);
__attribute__((__noreturn__)) void _Exit (int);
int at_quick_exit (void (*) (void));
__attribute__((__noreturn__)) void quick_exit (int);

char *getenv (const char *);

int system (const char *);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));
void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

int mblen (const char *, size_t);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int wctomb (char *, wchar_t);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);




size_t __ctype_get_mb_cur_max(void);
# 36 "../base.h" 2
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/string.h" 1 3 4
# 23 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/string.h" 3 4
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h" 1 3 4
# 24 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/string.h" 2 3 4

void *memcpy (void *restrict, const void *restrict, size_t);
void *memmove (void *, const void *, size_t);
void *memset (void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void *memchr (const void *, int, size_t);

char *strcpy (char *restrict, const char *restrict);
char *strncpy (char *restrict, const char *restrict, size_t);

char *strcat (char *restrict, const char *restrict);
char *strncat (char *restrict, const char *restrict, size_t);

int strcmp (const char *, const char *);
int strncmp (const char *, const char *, size_t);

int strcoll (const char *, const char *);
size_t strxfrm (char *restrict, const char *restrict, size_t);

char *strchr (const char *, int);
char *strrchr (const char *, int);

size_t strcspn (const char *, const char *);
size_t strspn (const char *, const char *);
char *strpbrk (const char *, const char *);
char *strstr (const char *, const char *);
char *strtok (char *restrict, const char *restrict);

size_t strlen (const char *);

char *strerror (int);
# 37 "../base.h" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\generic\\h/xc.h" 1 3 4
# 46 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\generic\\h/xc.h" 3 4
# 1 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/builtins.h" 1 3 4
# 44 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\support\\generic\\h/builtins.h" 3 4
void __builtin_write_OSCCONL(
        uint16_t);
void __builtin_write_OSCCONH(
        uint16_t);
void __builtin_write_DISICNT(
        uint16_t);
void __builtin_write_NVM(
        void);
void __builtin_write_CRYOTP(
        void);
void __builtin_write_DATAFLASH(
        void);
void __builtin_write_NVM_secure(
        uint16_t,
        uint16_t);
void __builtin_write_DATAFLASH_secure(
        uint16_t,
        uint16_t);
void __builtin_write_RTCWEN(
        void);
void __builtin_write_RTCC_WRLOCK(
        void);
void __builtin_write_PWMSFR(
        volatile uint16_t *,
        uint16_t,
        volatile uint16_t *);
void __builtin_write_RPCON(
        uint16_t);
uint16_t __builtin_readsfr(
        volatile void *);
void __builtin_writesfr(
        volatile void *,
        uint16_t);

uint16_t __builtin_edspage();
uint16_t __builtin_tblpage();
uint16_t __builtin_edsoffset();
uint16_t __builtin_dataflashoffset();
uint16_t __builtin_tbloffset();
uint16_t __builtin_psvpage();
uint16_t __builtin_psvoffset();
uint16_t __builtin_dmaoffset();
uint16_t __builtin_dmapage();
uint32_t __builtin_tbladdress();

void __builtin_nop(
        void);
int16_t __builtin_divsd(
        const int32_t,
        const int16_t);
int16_t __builtin_modsd(
        const int32_t,
        const int16_t);
int16_t __builtin_divmodsd(
        const int32_t,
        const int16_t,
        int16_t *);
uint16_t __builtin_divud(
        const uint32_t,
        const uint16_t);
uint16_t __builtin_modud(
        const uint32_t,
        const uint16_t);
uint16_t __builtin_divmodud(
        const uint32_t,
        const uint16_t,
        uint16_t *);
uint16_t __builtin_divf(
        uint16_t,
        uint16_t);
int32_t __builtin_mulss(
        const int16_t,
        const int16_t);
uint32_t __builtin_muluu(
        const uint16_t,
        const uint16_t);
int32_t __builtin_mulsu(
        const int16_t,
        const uint16_t);
int32_t __builtin_mulus(
        const uint16_t,
        const int16_t);
void __builtin_btg(
        uint16_t *,
        const uint16_t);
int16_t __builtin_addab(
        int16_t,
        int16_t);
int16_t __builtin_add(
        int16_t,
        int16_t,
        int16_t);
int16_t __builtin_clr(
        void);
int16_t __builtin_clr_prefetch(
        int16_t * *,
        int16_t *,
        int16_t,
        int16_t * *,
        int16_t *,
        int16_t,
        int16_t *,
        int16_t);
int16_t __builtin_ed(
        int16_t,
        int16_t * *,
        int16_t,
        int16_t * *,
        int16_t,
        int16_t *);
int16_t __builtin_edac(
        int16_t,
        int16_t,
        int16_t * *,
        int16_t,
        int16_t * *,
        int16_t,
        int16_t *);
int16_t __builtin_fbcl(
        int16_t);
int16_t __builtin_lac(
        int16_t,
        int16_t);
int16_t __builtin_lacd(
        int32_t,
        int16_t);
int16_t __builtin_mac(
        int16_t,
        int16_t,
        int16_t,
        int16_t * *,
        int16_t *,
        int16_t,
        int16_t * *,
        int16_t *,
        int16_t,
        int16_t *,
        int16_t);
void __builtin_movsac(
        int16_t * *,
        int16_t *,
        int16_t,
        int16_t * *,
        int16_t *,
        int16_t,
        int16_t *,
        int16_t);
int16_t __builtin_mpy(
        int16_t,
        int16_t,
        int16_t * *,
        int16_t *,
        int16_t,
        int16_t * *,
        int16_t *,
        int16_t);
int16_t __builtin_mpyn(
        int16_t,
        int16_t,
        int16_t * *,
        int16_t *,
        int16_t,
        int16_t * *,
        int16_t *,
        int16_t);
int16_t __builtin_msc(
        int16_t,
        int16_t,
        int16_t,
        int16_t * *,
        int16_t *,
        int16_t,
        int16_t * *,
        int16_t *,
        int16_t,
        int16_t *,
        int16_t);
int16_t __builtin_sac(
        int16_t,
        int16_t);
int32_t __builtin_sacd(
        int16_t,
        int16_t);
int16_t __builtin_sacr(
        int16_t,
        int16_t);
int16_t __builtin_sftac(
        int16_t,
        int16_t);
int16_t __builtin_subab(
        int16_t,
        int16_t);
int16_t __builtin_ACCL(
        int16_t);
int16_t __builtin_ACCH(
        int16_t);
int16_t __builtin_ACCU(
        int16_t);
uint16_t __builtin_tblrdl(
        uint16_t);
uint16_t __builtin_tblrdh(
        uint16_t);
unsigned char __builtin_tblrdhb(
        uint16_t);
unsigned char __builtin_tblrdlb(
        uint16_t);
void __builtin_tblwtl(
        uint16_t,
        uint16_t);
void __builtin_tblwth(
        uint16_t,
        uint16_t);
void __builtin_tblwtlb(
        uint16_t,
        unsigned char);
void __builtin_tblwthb(
        uint16_t,
        unsigned char);
void __builtin_disi(
        int16_t);
uint32_t __builtin_section_begin(
        const char *);
uint32_t __builtin_section_size(
        const char *);
uint32_t __builtin_section_end(
        const char *);
uint16_t __builtin_get_isr_state(
        void);
void __builtin_set_isr_state(
        uint16_t);
void __builtin_disable_interrupts(
        void);
void __builtin_enable_interrupts(
        void);
void __builtin_software_breakpoint(
        void);

uint16_t __builtin_addr_low();
uint16_t __builtin_addr_high();
uint32_t __builtin_addr();

void __builtin_pwrsav(
        uint16_t);
void __builtin_clrwdt(
        void);
void _Static_assert(
        uint16_t,
        const char *);
uint16_t __builtin_ff1l(
        uint16_t);
uint16_t __builtin_ff1r(
        uint16_t);
uint16_t __builtin_swap(
        uint16_t);
unsigned char __builtin_swap_byte(
        unsigned char);
int16_t __builtin_flim(
        int16_t,
        int16_t,
        int16_t);
int16_t __builtin_flim_excess(
        int16_t,
        int16_t,
        int16_t,
        int16_t *);
int16_t __builtin_flimv_excess(
        int16_t,
        int16_t,
        int16_t,
        int16_t *);
int16_t __builtin_min(
        int16_t,
        int16_t);
int16_t __builtin_max(
        int16_t,
        int16_t);
int16_t __builtin_min_excess(
        int16_t,
        int16_t,
        int16_t *);
int16_t __builtin_minv_excess(
        int16_t,
        int16_t,
        int16_t *);
int16_t __builtin_max_excess(
        int16_t,
        int16_t,
        int16_t *);
int16_t __builtin_maxv_excess(
        int16_t,
        int16_t,
        int16_t *);
uint32_t __builtin_lshiftrt_32_16(
        uint32_t,
        uint16_t);
int32_t __builtin_ashiftrt_32_16(
        int32_t,
        uint16_t);
# 47 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\generic\\h/xc.h" 2 3 4
# 347 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\generic\\h/xc.h" 3 4
# 1 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h" 1 3 4
# 56 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h" 3 4
extern volatile uint16_t WREG0 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG1 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG2 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG3 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG4 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG5 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG6 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG7 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG8 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG9 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG10 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG11 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG12 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG13 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG14 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t WREG15 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile uint16_t SPLIM __attribute__((__sfr__));

extern volatile uint16_t PCL __attribute__((__sfr__));

extern volatile uint8_t PCH __attribute__((__sfr__));

extern volatile uint8_t TBLPAG __attribute__((__sfr__));

extern volatile uint8_t PSVPAG __attribute__((__sfr__));

extern volatile uint16_t RCOUNT __attribute__((__sfr__));

extern volatile uint16_t SR __attribute__((__sfr__));
__extension__ typedef struct tagSRBITS {
  union {
    struct {
      uint16_t C:1;
      uint16_t Z:1;
      uint16_t OV:1;
      uint16_t N:1;
      uint16_t RA:1;
      uint16_t IPL:3;
      uint16_t DC:1;
    };
    struct {
      uint16_t :5;
      uint16_t IPL0:1;
      uint16_t IPL1:1;
      uint16_t IPL2:1;
    };
  };
} SRBITS;
extern volatile SRBITS SRbits __attribute__((__sfr__));


extern volatile uint16_t CORCON __attribute__((__sfr__));
typedef struct tagCORCONBITS {
  uint16_t :2;
  uint16_t PSV:1;
  uint16_t IPL3:1;
} CORCONBITS;
extern volatile CORCONBITS CORCONbits __attribute__((__sfr__));


extern volatile uint16_t DISICNT __attribute__((__sfr__));

extern volatile uint16_t CNEN1 __attribute__((__sfr__));
typedef struct tagCNEN1BITS {
  uint16_t CN0IE:1;
  uint16_t CN1IE:1;
  uint16_t CN2IE:1;
  uint16_t CN3IE:1;
  uint16_t CN4IE:1;
  uint16_t CN5IE:1;
  uint16_t CN6IE:1;
  uint16_t CN7IE:1;
  uint16_t :3;
  uint16_t CN11IE:1;
  uint16_t CN12IE:1;
  uint16_t CN13IE:1;
  uint16_t CN14IE:1;
  uint16_t CN15IE:1;
} CNEN1BITS;
extern volatile CNEN1BITS CNEN1bits __attribute__((__sfr__));


extern volatile uint16_t CNEN2 __attribute__((__sfr__));
typedef struct tagCNEN2BITS {
  uint16_t CN16IE:1;
  uint16_t :4;
  uint16_t CN21IE:1;
  uint16_t CN22IE:1;
  uint16_t CN23IE:1;
  uint16_t CN24IE:1;
  uint16_t :2;
  uint16_t CN27IE:1;
  uint16_t :1;
  uint16_t CN29IE:1;
  uint16_t CN30IE:1;
} CNEN2BITS;
extern volatile CNEN2BITS CNEN2bits __attribute__((__sfr__));


extern volatile uint16_t CNPU1 __attribute__((__sfr__));
typedef struct tagCNPU1BITS {
  uint16_t CN0PUE:1;
  uint16_t CN1PUE:1;
  uint16_t CN2PUE:1;
  uint16_t CN3PUE:1;
  uint16_t CN4PUE:1;
  uint16_t CN5PUE:1;
  uint16_t CN6PUE:1;
  uint16_t CN7PUE:1;
  uint16_t :3;
  uint16_t CN11PUE:1;
  uint16_t CN12PUE:1;
  uint16_t CN13PUE:1;
  uint16_t CN14PUE:1;
  uint16_t CN15PUE:1;
} CNPU1BITS;
extern volatile CNPU1BITS CNPU1bits __attribute__((__sfr__));


extern volatile uint16_t CNPU2 __attribute__((__sfr__));
typedef struct tagCNPU2BITS {
  uint16_t CN16PUE:1;
  uint16_t :4;
  uint16_t CN21PUE:1;
  uint16_t CN22PUE:1;
  uint16_t CN23PUE:1;
  uint16_t CN24PUE:1;
  uint16_t :2;
  uint16_t CN27PUE:1;
  uint16_t :1;
  uint16_t CN29PUE:1;
  uint16_t CN30PUE:1;
} CNPU2BITS;
extern volatile CNPU2BITS CNPU2bits __attribute__((__sfr__));


extern volatile uint16_t INTCON1 __attribute__((__sfr__));
typedef struct tagINTCON1BITS {
  uint16_t :1;
  uint16_t OSCFAIL:1;
  uint16_t STKERR:1;
  uint16_t ADDRERR:1;
  uint16_t MATHERR:1;
  uint16_t :10;
  uint16_t NSTDIS:1;
} INTCON1BITS;
extern volatile INTCON1BITS INTCON1bits __attribute__((__sfr__));


extern volatile uint16_t INTCON2 __attribute__((__sfr__));
typedef struct tagINTCON2BITS {
  uint16_t INT0EP:1;
  uint16_t INT1EP:1;
  uint16_t INT2EP:1;
  uint16_t :11;
  uint16_t DISI:1;
  uint16_t ALTIVT:1;
} INTCON2BITS;
extern volatile INTCON2BITS INTCON2bits __attribute__((__sfr__));


extern volatile uint16_t IFS0 __attribute__((__sfr__));
typedef struct tagIFS0BITS {
  uint16_t INT0IF:1;
  uint16_t IC1IF:1;
  uint16_t OC1IF:1;
  uint16_t T1IF:1;
  uint16_t :1;
  uint16_t IC2IF:1;
  uint16_t OC2IF:1;
  uint16_t T2IF:1;
  uint16_t T3IF:1;
  uint16_t SPF1IF:1;
  uint16_t SPI1IF:1;
  uint16_t U1RXIF:1;
  uint16_t U1TXIF:1;
  uint16_t AD1IF:1;
} IFS0BITS;
extern volatile IFS0BITS IFS0bits __attribute__((__sfr__));


extern volatile uint16_t IFS1 __attribute__((__sfr__));
typedef struct tagIFS1BITS {
  uint16_t SI2C1IF:1;
  uint16_t MI2C1IF:1;
  uint16_t CMIF:1;
  uint16_t CNIF:1;
  uint16_t INT1IF:1;
  uint16_t :4;
  uint16_t OC3IF:1;
  uint16_t OC4IF:1;
  uint16_t T4IF:1;
  uint16_t T5IF:1;
  uint16_t INT2IF:1;
  uint16_t U2RXIF:1;
  uint16_t U2TXIF:1;
} IFS1BITS;
extern volatile IFS1BITS IFS1bits __attribute__((__sfr__));


extern volatile uint16_t IFS2 __attribute__((__sfr__));
typedef struct tagIFS2BITS {
  uint16_t SPF2IF:1;
  uint16_t SPI2IF:1;
  uint16_t :3;
  uint16_t IC3IF:1;
  uint16_t IC4IF:1;
  uint16_t IC5IF:1;
  uint16_t :1;
  uint16_t OC5IF:1;
  uint16_t :3;
  uint16_t PMPIF:1;
} IFS2BITS;
extern volatile IFS2BITS IFS2bits __attribute__((__sfr__));


extern volatile uint16_t IFS3 __attribute__((__sfr__));
typedef struct tagIFS3BITS {
  uint16_t :1;
  uint16_t SI2C2IF:1;
  uint16_t MI2C2IF:1;
  uint16_t :11;
  uint16_t RTCIF:1;
} IFS3BITS;
extern volatile IFS3BITS IFS3bits __attribute__((__sfr__));


extern volatile uint16_t IFS4 __attribute__((__sfr__));
typedef struct tagIFS4BITS {
  uint16_t :1;
  uint16_t U1ERIF:1;
  uint16_t U2ERIF:1;
  uint16_t CRCIF:1;
  uint16_t :4;
  uint16_t LVDIF:1;
} IFS4BITS;
extern volatile IFS4BITS IFS4bits __attribute__((__sfr__));


extern volatile uint16_t IEC0 __attribute__((__sfr__));
typedef struct tagIEC0BITS {
  uint16_t INT0IE:1;
  uint16_t IC1IE:1;
  uint16_t OC1IE:1;
  uint16_t T1IE:1;
  uint16_t :1;
  uint16_t IC2IE:1;
  uint16_t OC2IE:1;
  uint16_t T2IE:1;
  uint16_t T3IE:1;
  uint16_t SPF1IE:1;
  uint16_t SPI1IE:1;
  uint16_t U1RXIE:1;
  uint16_t U1TXIE:1;
  uint16_t AD1IE:1;
} IEC0BITS;
extern volatile IEC0BITS IEC0bits __attribute__((__sfr__));


extern volatile uint16_t IEC1 __attribute__((__sfr__));
typedef struct tagIEC1BITS {
  uint16_t SI2C1IE:1;
  uint16_t MI2C1IE:1;
  uint16_t CMIE:1;
  uint16_t CNIE:1;
  uint16_t INT1IE:1;
  uint16_t :4;
  uint16_t OC3IE:1;
  uint16_t OC4IE:1;
  uint16_t T4IE:1;
  uint16_t T5IE:1;
  uint16_t INT2IE:1;
  uint16_t U2RXIE:1;
  uint16_t U2TXIE:1;
} IEC1BITS;
extern volatile IEC1BITS IEC1bits __attribute__((__sfr__));


extern volatile uint16_t IEC2 __attribute__((__sfr__));
typedef struct tagIEC2BITS {
  uint16_t SPF2IE:1;
  uint16_t SPI2IE:1;
  uint16_t :3;
  uint16_t IC3IE:1;
  uint16_t IC4IE:1;
  uint16_t IC5IE:1;
  uint16_t :1;
  uint16_t OC5IE:1;
  uint16_t :3;
  uint16_t PMPIE:1;
} IEC2BITS;
extern volatile IEC2BITS IEC2bits __attribute__((__sfr__));


extern volatile uint16_t IEC3 __attribute__((__sfr__));
typedef struct tagIEC3BITS {
  uint16_t :1;
  uint16_t SI2C2IE:1;
  uint16_t MI2C2IE:1;
  uint16_t :11;
  uint16_t RTCIE:1;
} IEC3BITS;
extern volatile IEC3BITS IEC3bits __attribute__((__sfr__));


extern volatile uint16_t IEC4 __attribute__((__sfr__));
typedef struct tagIEC4BITS {
  uint16_t :1;
  uint16_t U1ERIE:1;
  uint16_t U2ERIE:1;
  uint16_t CRCIE:1;
  uint16_t :4;
  uint16_t LVDIE:1;
} IEC4BITS;
extern volatile IEC4BITS IEC4bits __attribute__((__sfr__));


extern volatile uint16_t IPC0 __attribute__((__sfr__));
__extension__ typedef struct tagIPC0BITS {
  union {
    struct {
      uint16_t INT0IP:3;
      uint16_t :1;
      uint16_t IC1IP:3;
      uint16_t :1;
      uint16_t OC1IP:3;
      uint16_t :1;
      uint16_t T1IP:3;
    };
    struct {
      uint16_t INT0IP0:1;
      uint16_t INT0IP1:1;
      uint16_t INT0IP2:1;
      uint16_t :1;
      uint16_t IC1IP0:1;
      uint16_t IC1IP1:1;
      uint16_t IC1IP2:1;
      uint16_t :1;
      uint16_t OC1IP0:1;
      uint16_t OC1IP1:1;
      uint16_t OC1IP2:1;
      uint16_t :1;
      uint16_t T1IP0:1;
      uint16_t T1IP1:1;
      uint16_t T1IP2:1;
    };
  };
} IPC0BITS;
extern volatile IPC0BITS IPC0bits __attribute__((__sfr__));


extern volatile uint16_t IPC1 __attribute__((__sfr__));
__extension__ typedef struct tagIPC1BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t IC2IP:3;
      uint16_t :1;
      uint16_t OC2IP:3;
      uint16_t :1;
      uint16_t T2IP:3;
    };
    struct {
      uint16_t :4;
      uint16_t IC2IP0:1;
      uint16_t IC2IP1:1;
      uint16_t IC2IP2:1;
      uint16_t :1;
      uint16_t OC2IP0:1;
      uint16_t OC2IP1:1;
      uint16_t OC2IP2:1;
      uint16_t :1;
      uint16_t T2IP0:1;
      uint16_t T2IP1:1;
      uint16_t T2IP2:1;
    };
  };
} IPC1BITS;
extern volatile IPC1BITS IPC1bits __attribute__((__sfr__));


extern volatile uint16_t IPC2 __attribute__((__sfr__));
__extension__ typedef struct tagIPC2BITS {
  union {
    struct {
      uint16_t T3IP:3;
      uint16_t :1;
      uint16_t SPF1IP:3;
      uint16_t :1;
      uint16_t SPI1IP:3;
      uint16_t :1;
      uint16_t U1RXIP:3;
    };
    struct {
      uint16_t T3IP0:1;
      uint16_t T3IP1:1;
      uint16_t T3IP2:1;
      uint16_t :1;
      uint16_t SPF1IP0:1;
      uint16_t SPF1IP1:1;
      uint16_t SPF1IP2:1;
      uint16_t :1;
      uint16_t SPI1IP0:1;
      uint16_t SPI1IP1:1;
      uint16_t SPI1IP2:1;
      uint16_t :1;
      uint16_t U1RXIP0:1;
      uint16_t U1RXIP1:1;
      uint16_t U1RXIP2:1;
    };
  };
} IPC2BITS;
extern volatile IPC2BITS IPC2bits __attribute__((__sfr__));


extern volatile uint16_t IPC3 __attribute__((__sfr__));
__extension__ typedef struct tagIPC3BITS {
  union {
    struct {
      uint16_t U1TXIP:3;
      uint16_t :1;
      uint16_t AD1IP:3;
    };
    struct {
      uint16_t U1TXIP0:1;
      uint16_t U1TXIP1:1;
      uint16_t U1TXIP2:1;
      uint16_t :1;
      uint16_t AD1IP0:1;
      uint16_t AD1IP1:1;
      uint16_t AD1IP2:1;
    };
  };
} IPC3BITS;
extern volatile IPC3BITS IPC3bits __attribute__((__sfr__));


extern volatile uint16_t IPC4 __attribute__((__sfr__));
__extension__ typedef struct tagIPC4BITS {
  union {
    struct {
      uint16_t SI2C1P:3;
      uint16_t :1;
      uint16_t MI2C1P:3;
      uint16_t :1;
      uint16_t CMIP:3;
      uint16_t :1;
      uint16_t CNIP:3;
    };
    struct {
      uint16_t SI2C1IP:3;
      uint16_t :1;
      uint16_t MI2C1IP:3;
    };
    struct {
      uint16_t SI2C1IP0:1;
      uint16_t SI2C1IP1:1;
      uint16_t SI2C1IP2:1;
      uint16_t :1;
      uint16_t MI2C1IP0:1;
      uint16_t MI2C1IP1:1;
      uint16_t MI2C1IP2:1;
      uint16_t :1;
      uint16_t CMIP0:1;
      uint16_t CMIP1:1;
      uint16_t CMIP2:1;
      uint16_t :1;
      uint16_t CNIP0:1;
      uint16_t CNIP1:1;
      uint16_t CNIP2:1;
    };
    struct {
      uint16_t SI2C1P0:1;
      uint16_t SI2C1P1:1;
      uint16_t SI2C1P2:1;
      uint16_t :1;
      uint16_t MI2C1P0:1;
      uint16_t MI2C1P1:1;
      uint16_t MI2C1P2:1;
    };
  };
} IPC4BITS;
extern volatile IPC4BITS IPC4bits __attribute__((__sfr__));


extern volatile uint16_t IPC5 __attribute__((__sfr__));
__extension__ typedef struct tagIPC5BITS {
  union {
    struct {
      uint16_t INT1IP:3;
    };
    struct {
      uint16_t INT1IP0:1;
      uint16_t INT1IP1:1;
      uint16_t INT1IP2:1;
    };
  };
} IPC5BITS;
extern volatile IPC5BITS IPC5bits __attribute__((__sfr__));


extern volatile uint16_t IPC6 __attribute__((__sfr__));
__extension__ typedef struct tagIPC6BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t OC3IP:3;
      uint16_t :1;
      uint16_t OC4IP:3;
      uint16_t :1;
      uint16_t T4IP:3;
    };
    struct {
      uint16_t :4;
      uint16_t OC3IP0:1;
      uint16_t OC3IP1:1;
      uint16_t OC3IP2:1;
      uint16_t :1;
      uint16_t OC4IP0:1;
      uint16_t OC4IP1:1;
      uint16_t OC4IP2:1;
      uint16_t :1;
      uint16_t T4IP0:1;
      uint16_t T4IP1:1;
      uint16_t T4IP2:1;
    };
  };
} IPC6BITS;
extern volatile IPC6BITS IPC6bits __attribute__((__sfr__));


extern volatile uint16_t IPC7 __attribute__((__sfr__));
__extension__ typedef struct tagIPC7BITS {
  union {
    struct {
      uint16_t T5IP:3;
      uint16_t :1;
      uint16_t INT2IP:3;
      uint16_t :1;
      uint16_t U2RXIP:3;
      uint16_t :1;
      uint16_t U2TXIP:3;
    };
    struct {
      uint16_t T5IP0:1;
      uint16_t T5IP1:1;
      uint16_t T5IP2:1;
      uint16_t :1;
      uint16_t INT2IP0:1;
      uint16_t INT2IP1:1;
      uint16_t INT2IP2:1;
      uint16_t :1;
      uint16_t U2RXIP0:1;
      uint16_t U2RXIP1:1;
      uint16_t U2RXIP2:1;
      uint16_t :1;
      uint16_t U2TXIP0:1;
      uint16_t U2TXIP1:1;
      uint16_t U2TXIP2:1;
    };
  };
} IPC7BITS;
extern volatile IPC7BITS IPC7bits __attribute__((__sfr__));


extern volatile uint16_t IPC8 __attribute__((__sfr__));
__extension__ typedef struct tagIPC8BITS {
  union {
    struct {
      uint16_t SPF2IP:3;
      uint16_t :1;
      uint16_t SPI2IP:3;
    };
    struct {
      uint16_t SPF2IP0:1;
      uint16_t SPF2IP1:1;
      uint16_t SPF2IP2:1;
      uint16_t :1;
      uint16_t SPI2IP0:1;
      uint16_t SPI2IP1:1;
      uint16_t SPI2IP2:1;
    };
  };
} IPC8BITS;
extern volatile IPC8BITS IPC8bits __attribute__((__sfr__));


extern volatile uint16_t IPC9 __attribute__((__sfr__));
__extension__ typedef struct tagIPC9BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t IC3IP:3;
      uint16_t :1;
      uint16_t IC4IP:3;
      uint16_t :1;
      uint16_t IC5IP:3;
    };
    struct {
      uint16_t :4;
      uint16_t IC3IP0:1;
      uint16_t IC3IP1:1;
      uint16_t IC3IP2:1;
      uint16_t :1;
      uint16_t IC4IP0:1;
      uint16_t IC4IP1:1;
      uint16_t IC4IP2:1;
      uint16_t :1;
      uint16_t IC5IP0:1;
      uint16_t IC5IP1:1;
      uint16_t IC5IP2:1;
    };
  };
} IPC9BITS;
extern volatile IPC9BITS IPC9bits __attribute__((__sfr__));


extern volatile uint16_t IPC10 __attribute__((__sfr__));
__extension__ typedef struct tagIPC10BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t OC5IP:3;
    };
    struct {
      uint16_t :4;
      uint16_t OC5IP0:1;
      uint16_t OC5IP1:1;
      uint16_t OC5IP2:1;
    };
  };
} IPC10BITS;
extern volatile IPC10BITS IPC10bits __attribute__((__sfr__));


extern volatile uint16_t IPC11 __attribute__((__sfr__));
__extension__ typedef struct tagIPC11BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t PMPIP:3;
    };
    struct {
      uint16_t :4;
      uint16_t PMPIP0:1;
      uint16_t PMPIP1:1;
      uint16_t PMPIP2:1;
    };
  };
} IPC11BITS;
extern volatile IPC11BITS IPC11bits __attribute__((__sfr__));


extern volatile uint16_t IPC12 __attribute__((__sfr__));
__extension__ typedef struct tagIPC12BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t SI2C2P:3;
      uint16_t :1;
      uint16_t MI2C2P:3;
    };
    struct {
      uint16_t :4;
      uint16_t SI2C2IP:3;
      uint16_t :1;
      uint16_t MI2C2IP:3;
    };
    struct {
      uint16_t :4;
      uint16_t SI2C2IP0:1;
      uint16_t SI2C2IP1:1;
      uint16_t SI2C2IP2:1;
      uint16_t :1;
      uint16_t MI2C2IP0:1;
      uint16_t MI2C2IP1:1;
      uint16_t MI2C2IP2:1;
    };
    struct {
      uint16_t :4;
      uint16_t SI2C2P0:1;
      uint16_t SI2C2P1:1;
      uint16_t SI2C2P2:1;
      uint16_t :1;
      uint16_t MI2C2P0:1;
      uint16_t MI2C2P1:1;
      uint16_t MI2C2P2:1;
    };
  };
} IPC12BITS;
extern volatile IPC12BITS IPC12bits __attribute__((__sfr__));


extern volatile uint16_t IPC15 __attribute__((__sfr__));
__extension__ typedef struct tagIPC15BITS {
  union {
    struct {
      uint16_t :8;
      uint16_t RTCIP:3;
    };
    struct {
      uint16_t :8;
      uint16_t RTCIP0:1;
      uint16_t RTCIP1:1;
      uint16_t RTCIP2:1;
    };
  };
} IPC15BITS;
extern volatile IPC15BITS IPC15bits __attribute__((__sfr__));


extern volatile uint16_t IPC16 __attribute__((__sfr__));
__extension__ typedef struct tagIPC16BITS {
  union {
    struct {
      uint16_t :4;
      uint16_t U1ERIP:3;
      uint16_t :1;
      uint16_t U2ERIP:3;
      uint16_t :1;
      uint16_t CRCIP:3;
    };
    struct {
      uint16_t :4;
      uint16_t U1ERIP0:1;
      uint16_t U1ERIP1:1;
      uint16_t U1ERIP2:1;
      uint16_t :1;
      uint16_t U2ERIP0:1;
      uint16_t U2ERIP1:1;
      uint16_t U2ERIP2:1;
      uint16_t :1;
      uint16_t CRCIP0:1;
      uint16_t CRCIP1:1;
      uint16_t CRCIP2:1;
    };
  };
} IPC16BITS;
extern volatile IPC16BITS IPC16bits __attribute__((__sfr__));


extern volatile uint16_t IPC18 __attribute__((__sfr__));
__extension__ typedef struct tagIPC18BITS {
  union {
    struct {
      uint16_t LVDIP:3;
    };
    struct {
      uint16_t LVDIP0:1;
      uint16_t LVDIP1:1;
      uint16_t LVDIP2:1;
    };
  };
} IPC18BITS;
extern volatile IPC18BITS IPC18bits __attribute__((__sfr__));


extern volatile uint16_t INTTREG __attribute__((__sfr__));
__extension__ typedef struct tagINTTREGBITS {
  union {
    struct {
      uint16_t VECNUM:7;
      uint16_t :1;
      uint16_t ILR:4;
      uint16_t :1;
      uint16_t VHOLD:1;
      uint16_t :1;
      uint16_t CPUIRQ:1;
    };
    struct {
      uint16_t VECNUM0:1;
      uint16_t VECNUM1:1;
      uint16_t VECNUM2:1;
      uint16_t VECNUM3:1;
      uint16_t VECNUM4:1;
      uint16_t VECNUM5:1;
      uint16_t VECNUM6:1;
      uint16_t :1;
      uint16_t ILR0:1;
      uint16_t ILR1:1;
      uint16_t ILR2:1;
      uint16_t ILR3:1;
    };
  };
} INTTREGBITS;
extern volatile INTTREGBITS INTTREGbits __attribute__((__sfr__));


extern volatile uint16_t TMR1 __attribute__((__sfr__));

extern volatile uint16_t PR1 __attribute__((__sfr__));

extern volatile uint16_t T1CON __attribute__((__sfr__));
__extension__ typedef struct tagT1CONBITS {
  union {
    struct {
      uint16_t :1;
      uint16_t TCS:1;
      uint16_t TSYNC:1;
      uint16_t :1;
      uint16_t TCKPS:2;
      uint16_t TGATE:1;
      uint16_t :6;
      uint16_t TSIDL:1;
      uint16_t :1;
      uint16_t TON:1;
    };
    struct {
      uint16_t :4;
      uint16_t TCKPS0:1;
      uint16_t TCKPS1:1;
    };
  };
} T1CONBITS;
extern volatile T1CONBITS T1CONbits __attribute__((__sfr__));


extern volatile uint16_t TMR2 __attribute__((__sfr__));

extern volatile uint16_t TMR3HLD __attribute__((__sfr__));

extern volatile uint16_t TMR3 __attribute__((__sfr__));

extern volatile uint16_t PR2 __attribute__((__sfr__));

extern volatile uint16_t PR3 __attribute__((__sfr__));

extern volatile uint16_t T2CON __attribute__((__sfr__));
__extension__ typedef struct tagT2CONBITS {
  union {
    struct {
      uint16_t :1;
      uint16_t TCS:1;
      uint16_t :1;
      uint16_t T32:1;
      uint16_t TCKPS:2;
      uint16_t TGATE:1;
      uint16_t :6;
      uint16_t TSIDL:1;
      uint16_t :1;
      uint16_t TON:1;
    };
    struct {
      uint16_t :4;
      uint16_t TCKPS0:1;
      uint16_t TCKPS1:1;
    };
  };
} T2CONBITS;
extern volatile T2CONBITS T2CONbits __attribute__((__sfr__));


extern volatile uint16_t T3CON __attribute__((__sfr__));
__extension__ typedef struct tagT3CONBITS {
  union {
    struct {
      uint16_t :1;
      uint16_t TCS:1;
      uint16_t :2;
      uint16_t TCKPS:2;
      uint16_t TGATE:1;
      uint16_t :6;
      uint16_t TSIDL:1;
      uint16_t :1;
      uint16_t TON:1;
    };
    struct {
      uint16_t :4;
      uint16_t TCKPS0:1;
      uint16_t TCKPS1:1;
    };
  };
} T3CONBITS;
extern volatile T3CONBITS T3CONbits __attribute__((__sfr__));


extern volatile uint16_t TMR4 __attribute__((__sfr__));

extern volatile uint16_t TMR5HLD __attribute__((__sfr__));

extern volatile uint16_t TMR5 __attribute__((__sfr__));

extern volatile uint16_t PR4 __attribute__((__sfr__));

extern volatile uint16_t PR5 __attribute__((__sfr__));

extern volatile uint16_t T4CON __attribute__((__sfr__));
__extension__ typedef struct tagT4CONBITS {
  union {
    struct {
      uint16_t :1;
      uint16_t TCS:1;
      uint16_t :1;
      uint16_t T32:1;
      uint16_t TCKPS:2;
      uint16_t TGATE:1;
      uint16_t :6;
      uint16_t TSIDL:1;
      uint16_t :1;
      uint16_t TON:1;
    };
    struct {
      uint16_t :4;
      uint16_t TCKPS0:1;
      uint16_t TCKPS1:1;
    };
  };
} T4CONBITS;
extern volatile T4CONBITS T4CONbits __attribute__((__sfr__));


extern volatile uint16_t T5CON __attribute__((__sfr__));
__extension__ typedef struct tagT5CONBITS {
  union {
    struct {
      uint16_t :1;
      uint16_t TCS:1;
      uint16_t :2;
      uint16_t TCKPS:2;
      uint16_t TGATE:1;
      uint16_t :6;
      uint16_t TSIDL:1;
      uint16_t :1;
      uint16_t TON:1;
    };
    struct {
      uint16_t :4;
      uint16_t TCKPS0:1;
      uint16_t TCKPS1:1;
    };
  };
} T5CONBITS;
extern volatile T5CONBITS T5CONbits __attribute__((__sfr__));



typedef struct tagIC {
        uint16_t icxbuf;
        uint16_t icxcon;
} IC, *PIC;


extern volatile IC ACC1 __attribute__((__sfr__));


extern volatile uint16_t IC1BUF __attribute__((__sfr__));

extern volatile uint16_t IC1CON __attribute__((__sfr__));
__extension__ typedef struct tagIC1CONBITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t ICTMR:1;
      uint16_t :5;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
    };
  };
} IC1CONBITS;
extern volatile IC1CONBITS IC1CONbits __attribute__((__sfr__));



extern volatile IC ACC2 __attribute__((__sfr__));


extern volatile uint16_t IC2BUF __attribute__((__sfr__));

extern volatile uint16_t IC2CON __attribute__((__sfr__));
__extension__ typedef struct tagIC2CONBITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t ICTMR:1;
      uint16_t :5;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
    };
  };
} IC2CONBITS;
extern volatile IC2CONBITS IC2CONbits __attribute__((__sfr__));



extern volatile IC ACC3 __attribute__((__sfr__));


extern volatile uint16_t IC3BUF __attribute__((__sfr__));

extern volatile uint16_t IC3CON __attribute__((__sfr__));
__extension__ typedef struct tagIC3CONBITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t ICTMR:1;
      uint16_t :5;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
    };
  };
} IC3CONBITS;
extern volatile IC3CONBITS IC3CONbits __attribute__((__sfr__));



extern volatile IC ACC4 __attribute__((__sfr__));


extern volatile uint16_t IC4BUF __attribute__((__sfr__));

extern volatile uint16_t IC4CON __attribute__((__sfr__));
__extension__ typedef struct tagIC4CONBITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t ICTMR:1;
      uint16_t :5;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
    };
  };
} IC4CONBITS;
extern volatile IC4CONBITS IC4CONbits __attribute__((__sfr__));



extern volatile IC ACC5 __attribute__((__sfr__));


extern volatile uint16_t IC5BUF __attribute__((__sfr__));

extern volatile uint16_t IC5CON __attribute__((__sfr__));
__extension__ typedef struct tagIC5CONBITS {
  union {
    struct {
      uint16_t ICM:3;
      uint16_t ICBNE:1;
      uint16_t ICOV:1;
      uint16_t ICI:2;
      uint16_t ICTMR:1;
      uint16_t :5;
      uint16_t ICSIDL:1;
    };
    struct {
      uint16_t ICM0:1;
      uint16_t ICM1:1;
      uint16_t ICM2:1;
      uint16_t :2;
      uint16_t ICI0:1;
      uint16_t ICI1:1;
    };
  };
} IC5CONBITS;
extern volatile IC5CONBITS IC5CONbits __attribute__((__sfr__));



typedef struct tagOC {
        uint16_t ocxrs;
        uint16_t ocxr;
        uint16_t ocxcon;
} OC, *POC;


extern volatile OC OC1 __attribute__((__sfr__));


extern volatile uint16_t OC1RS __attribute__((__sfr__));

extern volatile uint16_t OC1R __attribute__((__sfr__));

extern volatile uint16_t OC1CON __attribute__((__sfr__));
__extension__ typedef struct tagOC1CONBITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t OCTSEL:1;
      uint16_t OCFLT:1;
      uint16_t :8;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
    };
  };
} OC1CONBITS;
extern volatile OC1CONBITS OC1CONbits __attribute__((__sfr__));



extern volatile uint16_t OC2RS __attribute__((__sfr__));

extern volatile uint16_t OC2R __attribute__((__sfr__));

extern volatile uint16_t OC2CON __attribute__((__sfr__));
__extension__ typedef struct tagOC2CONBITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t OCTSEL:1;
      uint16_t OCFLT:1;
      uint16_t :8;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
    };
  };
} OC2CONBITS;
extern volatile OC2CONBITS OC2CONbits __attribute__((__sfr__));



extern volatile uint16_t OC3RS __attribute__((__sfr__));

extern volatile uint16_t OC3R __attribute__((__sfr__));

extern volatile uint16_t OC3CON __attribute__((__sfr__));
__extension__ typedef struct tagOC3CONBITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t OCTSEL:1;
      uint16_t OCFLT:1;
      uint16_t :8;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
    };
  };
} OC3CONBITS;
extern volatile OC3CONBITS OC3CONbits __attribute__((__sfr__));



extern volatile uint16_t OC4RS __attribute__((__sfr__));

extern volatile uint16_t OC4R __attribute__((__sfr__));

extern volatile uint16_t OC4CON __attribute__((__sfr__));
__extension__ typedef struct tagOC4CONBITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t OCTSEL:1;
      uint16_t OCFLT:1;
      uint16_t :8;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
    };
  };
} OC4CONBITS;
extern volatile OC4CONBITS OC4CONbits __attribute__((__sfr__));



extern volatile uint16_t OC5RS __attribute__((__sfr__));

extern volatile uint16_t OC5R __attribute__((__sfr__));

extern volatile uint16_t OC5CON __attribute__((__sfr__));
__extension__ typedef struct tagOC5CONBITS {
  union {
    struct {
      uint16_t OCM:3;
      uint16_t OCTSEL:1;
      uint16_t OCFLT:1;
      uint16_t :8;
      uint16_t OCSIDL:1;
    };
    struct {
      uint16_t OCM0:1;
      uint16_t OCM1:1;
      uint16_t OCM2:1;
    };
  };
} OC5CONBITS;
extern volatile OC5CONBITS OC5CONbits __attribute__((__sfr__));


extern volatile uint16_t I2C1RCV __attribute__((__sfr__));

extern volatile uint16_t I2C1TRN __attribute__((__sfr__));

extern volatile uint16_t I2C1BRG __attribute__((__sfr__));

extern volatile uint16_t I2C1CON __attribute__((__sfr__));
typedef struct tagI2C1CONBITS {
  uint16_t SEN:1;
  uint16_t RSEN:1;
  uint16_t PEN:1;
  uint16_t RCEN:1;
  uint16_t ACKEN:1;
  uint16_t ACKDT:1;
  uint16_t STREN:1;
  uint16_t GCEN:1;
  uint16_t SMEN:1;
  uint16_t DISSLW:1;
  uint16_t A10M:1;
  uint16_t IPMIEN:1;
  uint16_t SCLREL:1;
  uint16_t I2CSIDL:1;
  uint16_t :1;
  uint16_t I2CEN:1;
} I2C1CONBITS;
extern volatile I2C1CONBITS I2C1CONbits __attribute__((__sfr__));


extern volatile uint16_t I2C1STAT __attribute__((__sfr__));
__extension__ typedef struct tagI2C1STATBITS {
  union {
    struct {
      uint16_t TBF:1;
      uint16_t RBF:1;
      uint16_t R_NOT_W:1;
      uint16_t S:1;
      uint16_t P:1;
      uint16_t D_NOT_A:1;
      uint16_t I2COV:1;
      uint16_t IWCOL:1;
      uint16_t ADD10:1;
      uint16_t GCSTAT:1;
      uint16_t BCL:1;
      uint16_t :3;
      uint16_t TRSTAT:1;
      uint16_t ACKSTAT:1;
    };
    struct {
      uint16_t :2;
      uint16_t R_W:1;
      uint16_t :2;
      uint16_t D_A:1;
    };
  };
} I2C1STATBITS;
extern volatile I2C1STATBITS I2C1STATbits __attribute__((__sfr__));


extern volatile uint16_t I2C1ADD __attribute__((__sfr__));

extern volatile uint16_t I2C1MSK __attribute__((__sfr__));

extern volatile uint16_t I2C2RCV __attribute__((__sfr__));

extern volatile uint16_t I2C2TRN __attribute__((__sfr__));

extern volatile uint16_t I2C2BRG __attribute__((__sfr__));

extern volatile uint16_t I2C2CON __attribute__((__sfr__));
typedef struct tagI2C2CONBITS {
  uint16_t SEN:1;
  uint16_t RSEN:1;
  uint16_t PEN:1;
  uint16_t RCEN:1;
  uint16_t ACKEN:1;
  uint16_t ACKDT:1;
  uint16_t STREN:1;
  uint16_t GCEN:1;
  uint16_t SMEN:1;
  uint16_t DISSLW:1;
  uint16_t A10M:1;
  uint16_t IPMIEN:1;
  uint16_t SCLREL:1;
  uint16_t I2CSIDL:1;
  uint16_t :1;
  uint16_t I2CEN:1;
} I2C2CONBITS;
extern volatile I2C2CONBITS I2C2CONbits __attribute__((__sfr__));


extern volatile uint16_t I2C2STAT __attribute__((__sfr__));
__extension__ typedef struct tagI2C2STATBITS {
  union {
    struct {
      uint16_t TBF:1;
      uint16_t RBF:1;
      uint16_t R_NOT_W:1;
      uint16_t S:1;
      uint16_t P:1;
      uint16_t D_NOT_A:1;
      uint16_t I2COV:1;
      uint16_t IWCOL:1;
      uint16_t ADD10:1;
      uint16_t GCSTAT:1;
      uint16_t BCL:1;
      uint16_t :3;
      uint16_t TRSTAT:1;
      uint16_t ACKSTAT:1;
    };
    struct {
      uint16_t :2;
      uint16_t R_W:1;
      uint16_t :2;
      uint16_t D_A:1;
    };
  };
} I2C2STATBITS;
extern volatile I2C2STATBITS I2C2STATbits __attribute__((__sfr__));


extern volatile uint16_t I2C2ADD __attribute__((__sfr__));

extern volatile uint16_t I2C2MSK __attribute__((__sfr__));


typedef struct tagUART {
        uint16_t uxmode;
        uint16_t uxsta;
        uint16_t uxtxreg;
        uint16_t uxrxreg;
        uint16_t uxbrg;
} UART, *PUART;
# 1443 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h" 3 4
extern volatile UART UART1 __attribute__((__sfr__));


extern volatile uint16_t U1MODE __attribute__((__sfr__));
__extension__ typedef struct tagU1MODEBITS {
  union {
    struct {
      uint16_t STSEL:1;
      uint16_t PDSEL:2;
      uint16_t BRGH:1;
      uint16_t RXINV:1;
      uint16_t ABAUD:1;
      uint16_t LPBACK:1;
      uint16_t WAKE:1;
      uint16_t UEN:2;
      uint16_t :1;
      uint16_t RTSMD:1;
      uint16_t IREN:1;
      uint16_t USIDL:1;
      uint16_t :1;
      uint16_t UARTEN:1;
    };
    struct {
      uint16_t :1;
      uint16_t PDSEL0:1;
      uint16_t PDSEL1:1;
      uint16_t :5;
      uint16_t UEN0:1;
      uint16_t UEN1:1;
    };
  };
} U1MODEBITS;
extern volatile U1MODEBITS U1MODEbits __attribute__((__sfr__));


extern volatile uint16_t U1STA __attribute__((__sfr__));
__extension__ typedef struct tagU1STABITS {
  union {
    struct {
      uint16_t URXDA:1;
      uint16_t OERR:1;
      uint16_t FERR:1;
      uint16_t PERR:1;
      uint16_t RIDLE:1;
      uint16_t ADDEN:1;
      uint16_t URXISEL:2;
      uint16_t TRMT:1;
      uint16_t UTXBF:1;
      uint16_t UTXEN:1;
      uint16_t UTXBRK:1;
      uint16_t :1;
      uint16_t UTXISEL0:1;
      uint16_t UTXINV:1;
      uint16_t UTXISEL1:1;
    };
    struct {
      uint16_t :6;
      uint16_t URXISEL0:1;
      uint16_t URXISEL1:1;
    };
  };
} U1STABITS;
extern volatile U1STABITS U1STAbits __attribute__((__sfr__));


extern volatile uint16_t U1TXREG __attribute__((__sfr__));

extern volatile uint16_t U1RXREG __attribute__((__sfr__));

extern volatile uint16_t U1BRG __attribute__((__sfr__));


extern volatile UART UART2 __attribute__((__sfr__));


extern volatile uint16_t U2MODE __attribute__((__sfr__));
__extension__ typedef struct tagU2MODEBITS {
  union {
    struct {
      uint16_t STSEL:1;
      uint16_t PDSEL:2;
      uint16_t BRGH:1;
      uint16_t RXINV:1;
      uint16_t ABAUD:1;
      uint16_t LPBACK:1;
      uint16_t WAKE:1;
      uint16_t UEN:2;
      uint16_t :1;
      uint16_t RTSMD:1;
      uint16_t IREN:1;
      uint16_t USIDL:1;
      uint16_t :1;
      uint16_t UARTEN:1;
    };
    struct {
      uint16_t :1;
      uint16_t PDSEL0:1;
      uint16_t PDSEL1:1;
      uint16_t :5;
      uint16_t UEN0:1;
      uint16_t UEN1:1;
    };
  };
} U2MODEBITS;
extern volatile U2MODEBITS U2MODEbits __attribute__((__sfr__));


extern volatile uint16_t U2STA __attribute__((__sfr__));
__extension__ typedef struct tagU2STABITS {
  union {
    struct {
      uint16_t URXDA:1;
      uint16_t OERR:1;
      uint16_t FERR:1;
      uint16_t PERR:1;
      uint16_t RIDLE:1;
      uint16_t ADDEN:1;
      uint16_t URXISEL:2;
      uint16_t TRMT:1;
      uint16_t UTXBF:1;
      uint16_t UTXEN:1;
      uint16_t UTXBRK:1;
      uint16_t :1;
      uint16_t UTXISEL0:1;
      uint16_t UTXINV:1;
      uint16_t UTXISEL1:1;
    };
    struct {
      uint16_t :6;
      uint16_t URXISEL0:1;
      uint16_t URXISEL1:1;
    };
  };
} U2STABITS;
extern volatile U2STABITS U2STAbits __attribute__((__sfr__));


extern volatile uint16_t U2TXREG __attribute__((__sfr__));

extern volatile uint16_t U2RXREG __attribute__((__sfr__));

extern volatile uint16_t U2BRG __attribute__((__sfr__));


typedef struct tagSPI {
        uint16_t spixstat;
        uint16_t spixcon1;
        uint16_t spixcon2;
        uint16_t unused;
        uint16_t spixbuf;
} SPI, *PSPI;





extern volatile SPI SPI1 __attribute__((__sfr__));


extern volatile uint16_t SPI1STAT __attribute__((__sfr__));
__extension__ typedef struct tagSPI1STATBITS {
  union {
    struct {
      uint16_t SPIRBF:1;
      uint16_t SPITBF:1;
      uint16_t SISEL:3;
      uint16_t SRXMPT:1;
      uint16_t SPIROV:1;
      uint16_t SRMPT:1;
      uint16_t SPIBEC:3;
      uint16_t :2;
      uint16_t SPISIDL:1;
      uint16_t :1;
      uint16_t SPIEN:1;
    };
    struct {
      uint16_t :2;
      uint16_t SISEL0:1;
      uint16_t SISEL1:1;
      uint16_t SISEL2:1;
      uint16_t :3;
      uint16_t SPIBEC0:1;
      uint16_t SPIBEC1:1;
      uint16_t SPIBEC2:1;
    };
  };
} SPI1STATBITS;
extern volatile SPI1STATBITS SPI1STATbits __attribute__((__sfr__));


extern volatile uint16_t SPI1CON1 __attribute__((__sfr__));
__extension__ typedef struct tagSPI1CON1BITS {
  union {
    struct {
      uint16_t PPRE:2;
      uint16_t SPRE:3;
      uint16_t MSTEN:1;
      uint16_t CKP:1;
      uint16_t SSEN:1;
      uint16_t CKE:1;
      uint16_t SMP:1;
      uint16_t MODE16:1;
      uint16_t DISSDO:1;
      uint16_t DISSCK:1;
    };
    struct {
      uint16_t PPRE0:1;
      uint16_t PPRE1:1;
      uint16_t SPRE0:1;
      uint16_t SPRE1:1;
      uint16_t SPRE2:1;
    };
  };
} SPI1CON1BITS;
extern volatile SPI1CON1BITS SPI1CON1bits __attribute__((__sfr__));


extern volatile uint16_t SPI1CON2 __attribute__((__sfr__));
typedef struct tagSPI1CON2BITS {
  uint16_t SPIBEN:1;
  uint16_t SPIFE:1;
  uint16_t :11;
  uint16_t SPIFPOL:1;
  uint16_t SPIFSD:1;
  uint16_t FRMEN:1;
} SPI1CON2BITS;
extern volatile SPI1CON2BITS SPI1CON2bits __attribute__((__sfr__));


extern volatile uint16_t SPI1BUF __attribute__((__sfr__));


extern volatile SPI SPI2 __attribute__((__sfr__));


extern volatile uint16_t SPI2STAT __attribute__((__sfr__));
__extension__ typedef struct tagSPI2STATBITS {
  union {
    struct {
      uint16_t SPIRBF:1;
      uint16_t SPITBF:1;
      uint16_t SISEL:3;
      uint16_t SRXMPT:1;
      uint16_t SPIROV:1;
      uint16_t SRMPT:1;
      uint16_t SPIBEC:3;
      uint16_t :2;
      uint16_t SPISIDL:1;
      uint16_t :1;
      uint16_t SPIEN:1;
    };
    struct {
      uint16_t :2;
      uint16_t SISEL0:1;
      uint16_t SISEL1:1;
      uint16_t SISEL2:1;
      uint16_t :3;
      uint16_t SPIBEC0:1;
      uint16_t SPIBEC1:1;
      uint16_t SPIBEC2:1;
    };
  };
} SPI2STATBITS;
extern volatile SPI2STATBITS SPI2STATbits __attribute__((__sfr__));


extern volatile uint16_t SPI2CON1 __attribute__((__sfr__));
__extension__ typedef struct tagSPI2CON1BITS {
  union {
    struct {
      uint16_t PPRE:2;
      uint16_t SPRE:3;
      uint16_t MSTEN:1;
      uint16_t CKP:1;
      uint16_t SSEN:1;
      uint16_t CKE:1;
      uint16_t SMP:1;
      uint16_t MODE16:1;
      uint16_t DISSDO:1;
      uint16_t DISSCK:1;
    };
    struct {
      uint16_t PPRE0:1;
      uint16_t PPRE1:1;
      uint16_t SPRE0:1;
      uint16_t SPRE1:1;
      uint16_t SPRE2:1;
    };
  };
} SPI2CON1BITS;
extern volatile SPI2CON1BITS SPI2CON1bits __attribute__((__sfr__));


extern volatile uint16_t SPI2CON2 __attribute__((__sfr__));
typedef struct tagSPI2CON2BITS {
  uint16_t SPIBEN:1;
  uint16_t SPIFE:1;
  uint16_t :11;
  uint16_t SPIFPOL:1;
  uint16_t SPIFSD:1;
  uint16_t FRMEN:1;
} SPI2CON2BITS;
extern volatile SPI2CON2BITS SPI2CON2bits __attribute__((__sfr__));


extern volatile uint16_t SPI2BUF __attribute__((__sfr__));

extern volatile uint16_t TRISA __attribute__((__sfr__));
typedef struct tagTRISABITS {
  uint16_t TRISA0:1;
  uint16_t TRISA1:1;
  uint16_t TRISA2:1;
  uint16_t TRISA3:1;
  uint16_t TRISA4:1;
} TRISABITS;
extern volatile TRISABITS TRISAbits __attribute__((__sfr__));


extern volatile uint16_t PORTA __attribute__((__sfr__));
typedef struct tagPORTABITS {
  uint16_t RA0:1;
  uint16_t RA1:1;
  uint16_t RA2:1;
  uint16_t RA3:1;
  uint16_t RA4:1;
} PORTABITS;
extern volatile PORTABITS PORTAbits __attribute__((__sfr__));


extern volatile uint16_t LATA __attribute__((__sfr__));
typedef struct tagLATABITS {
  uint16_t LATA0:1;
  uint16_t LATA1:1;
  uint16_t LATA2:1;
  uint16_t LATA3:1;
  uint16_t LATA4:1;
} LATABITS;
extern volatile LATABITS LATAbits __attribute__((__sfr__));


extern volatile uint16_t ODCA __attribute__((__sfr__));
typedef struct tagODCABITS {
  uint16_t ODA0:1;
  uint16_t ODA1:1;
  uint16_t ODA2:1;
  uint16_t ODA3:1;
  uint16_t ODA4:1;
} ODCABITS;
extern volatile ODCABITS ODCAbits __attribute__((__sfr__));


extern volatile uint16_t TRISB __attribute__((__sfr__));
typedef struct tagTRISBBITS {
  uint16_t TRISB0:1;
  uint16_t TRISB1:1;
  uint16_t TRISB2:1;
  uint16_t TRISB3:1;
  uint16_t TRISB4:1;
  uint16_t TRISB5:1;
  uint16_t TRISB6:1;
  uint16_t TRISB7:1;
  uint16_t TRISB8:1;
  uint16_t TRISB9:1;
  uint16_t TRISB10:1;
  uint16_t TRISB11:1;
  uint16_t TRISB12:1;
  uint16_t TRISB13:1;
  uint16_t TRISB14:1;
  uint16_t TRISB15:1;
} TRISBBITS;
extern volatile TRISBBITS TRISBbits __attribute__((__sfr__));


extern volatile uint16_t PORTB __attribute__((__sfr__));
typedef struct tagPORTBBITS {
  uint16_t RB0:1;
  uint16_t RB1:1;
  uint16_t RB2:1;
  uint16_t RB3:1;
  uint16_t RB4:1;
  uint16_t RB5:1;
  uint16_t RB6:1;
  uint16_t RB7:1;
  uint16_t RB8:1;
  uint16_t RB9:1;
  uint16_t RB10:1;
  uint16_t RB11:1;
  uint16_t RB12:1;
  uint16_t RB13:1;
  uint16_t RB14:1;
  uint16_t RB15:1;
} PORTBBITS;
extern volatile PORTBBITS PORTBbits __attribute__((__sfr__));


extern volatile uint16_t LATB __attribute__((__sfr__));
typedef struct tagLATBBITS {
  uint16_t LATB0:1;
  uint16_t LATB1:1;
  uint16_t LATB2:1;
  uint16_t LATB3:1;
  uint16_t LATB4:1;
  uint16_t LATB5:1;
  uint16_t LATB6:1;
  uint16_t LATB7:1;
  uint16_t LATB8:1;
  uint16_t LATB9:1;
  uint16_t LATB10:1;
  uint16_t LATB11:1;
  uint16_t LATB12:1;
  uint16_t LATB13:1;
  uint16_t LATB14:1;
  uint16_t LATB15:1;
} LATBBITS;
extern volatile LATBBITS LATBbits __attribute__((__sfr__));


extern volatile uint16_t ODCB __attribute__((__sfr__));
typedef struct tagODCBBITS {
  uint16_t ODB0:1;
  uint16_t ODB1:1;
  uint16_t ODB2:1;
  uint16_t ODB3:1;
  uint16_t ODB4:1;
  uint16_t ODB5:1;
  uint16_t ODB6:1;
  uint16_t ODB7:1;
  uint16_t ODB8:1;
  uint16_t ODB9:1;
  uint16_t ODB10:1;
  uint16_t ODB11:1;
  uint16_t ODB12:1;
  uint16_t ODB13:1;
  uint16_t ODB14:1;
  uint16_t ODB15:1;
} ODCBBITS;
extern volatile ODCBBITS ODCBbits __attribute__((__sfr__));


extern volatile uint16_t PADCFG1 __attribute__((__sfr__));
__extension__ typedef struct tagPADCFG1BITS {
  union {
    struct {
      uint16_t PMPTTL:1;
      uint16_t RTSECSEL:1;
    };
    struct {
      uint16_t :1;
      uint16_t RTSECSEL0:1;
    };
  };
} PADCFG1BITS;
extern volatile PADCFG1BITS PADCFG1bits __attribute__((__sfr__));


extern volatile uint16_t ADC1BUF0 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF1 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF2 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF3 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF4 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF5 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF6 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF7 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF8 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUF9 __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFA __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFB __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFC __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFD __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFE __attribute__((__sfr__));

extern volatile uint16_t ADC1BUFF __attribute__((__sfr__));

extern volatile uint16_t AD1CON1 __attribute__((__sfr__));
__extension__ typedef struct tagAD1CON1BITS {
  union {
    struct {
      uint16_t DONE:1;
      uint16_t SAMP:1;
      uint16_t ASAM:1;
      uint16_t :2;
      uint16_t SSRC:3;
      uint16_t FORM:2;
      uint16_t :3;
      uint16_t ADSIDL:1;
      uint16_t :1;
      uint16_t ADON:1;
    };
    struct {
      uint16_t :5;
      uint16_t SSRC0:1;
      uint16_t SSRC1:1;
      uint16_t SSRC2:1;
      uint16_t FORM0:1;
      uint16_t FORM1:1;
    };
  };
} AD1CON1BITS;
extern volatile AD1CON1BITS AD1CON1bits __attribute__((__sfr__));


extern volatile uint16_t AD1CON2 __attribute__((__sfr__));
__extension__ typedef struct tagAD1CON2BITS {
  union {
    struct {
      uint16_t ALTS:1;
      uint16_t BUFM:1;
      uint16_t SMPI:4;
      uint16_t :1;
      uint16_t BUFS:1;
      uint16_t :2;
      uint16_t CSCNA:1;
      uint16_t :2;
      uint16_t VCFG:3;
    };
    struct {
      uint16_t :2;
      uint16_t SMPI0:1;
      uint16_t SMPI1:1;
      uint16_t SMPI2:1;
      uint16_t SMPI3:1;
      uint16_t :7;
      uint16_t VCFG0:1;
      uint16_t VCFG1:1;
      uint16_t VCFG2:1;
    };
  };
} AD1CON2BITS;
extern volatile AD1CON2BITS AD1CON2bits __attribute__((__sfr__));


extern volatile uint16_t AD1CON3 __attribute__((__sfr__));
__extension__ typedef struct tagAD1CON3BITS {
  union {
    struct {
      uint16_t ADCS:8;
      uint16_t SAMC:5;
      uint16_t :2;
      uint16_t ADRC:1;
    };
    struct {
      uint16_t ADCS0:1;
      uint16_t ADCS1:1;
      uint16_t ADCS2:1;
      uint16_t ADCS3:1;
      uint16_t ADCS4:1;
      uint16_t ADCS5:1;
      uint16_t ADCS6:1;
      uint16_t ADCS7:1;
      uint16_t SAMC0:1;
      uint16_t SAMC1:1;
      uint16_t SAMC2:1;
      uint16_t SAMC3:1;
      uint16_t SAMC4:1;
    };
  };
} AD1CON3BITS;
extern volatile AD1CON3BITS AD1CON3bits __attribute__((__sfr__));


extern volatile uint16_t AD1CHS __attribute__((__sfr__));
__extension__ typedef struct tagAD1CHSBITS {
  union {
    struct {
      uint16_t CH0SA:4;
      uint16_t :3;
      uint16_t CH0NA:1;
      uint16_t CH0SB:4;
      uint16_t :3;
      uint16_t CH0NB:1;
    };
    struct {
      uint16_t CH0SA0:1;
      uint16_t CH0SA1:1;
      uint16_t CH0SA2:1;
      uint16_t CH0SA3:1;
      uint16_t :4;
      uint16_t CH0SB0:1;
      uint16_t CH0SB1:1;
      uint16_t CH0SB2:1;
      uint16_t CH0SB3:1;
    };
  };
} AD1CHSBITS;
extern volatile AD1CHSBITS AD1CHSbits __attribute__((__sfr__));


extern volatile uint16_t AD1PCFG __attribute__((__sfr__));
typedef struct tagAD1PCFGBITS {
  uint16_t PCFG0:1;
  uint16_t PCFG1:1;
  uint16_t PCFG2:1;
  uint16_t PCFG3:1;
  uint16_t PCFG4:1;
  uint16_t PCFG5:1;
  uint16_t :3;
  uint16_t PCFG9:1;
  uint16_t PCFG10:1;
  uint16_t PCFG11:1;
  uint16_t PCFG12:1;
  uint16_t :2;
  uint16_t PCFG15:1;
} AD1PCFGBITS;
extern volatile AD1PCFGBITS AD1PCFGbits __attribute__((__sfr__));


extern volatile uint16_t AD1CSSL __attribute__((__sfr__));
typedef struct tagAD1CSSLBITS {
  uint16_t CSSL0:1;
  uint16_t CSSL1:1;
  uint16_t CSSL2:1;
  uint16_t CSSL3:1;
  uint16_t CSSL4:1;
  uint16_t CSSL5:1;
  uint16_t :3;
  uint16_t CSSL9:1;
  uint16_t CSSL10:1;
  uint16_t CSSL11:1;
  uint16_t CSSL12:1;
  uint16_t :2;
  uint16_t CSSL15:1;
} AD1CSSLBITS;
extern volatile AD1CSSLBITS AD1CSSLbits __attribute__((__sfr__));


extern volatile uint16_t PMCON __attribute__((__sfr__));
__extension__ typedef struct tagPMCONBITS {
  union {
    struct {
      uint16_t RDSP:1;
      uint16_t WRSP:1;
      uint16_t BEP:1;
      uint16_t CS1P:1;
      uint16_t :1;
      uint16_t ALP:1;
      uint16_t CSF:2;
      uint16_t PTRDEN:1;
      uint16_t PTWREN:1;
      uint16_t PTBEEN:1;
      uint16_t ADRMUX:2;
      uint16_t PSIDL:1;
      uint16_t :1;
      uint16_t PMPEN:1;
    };
    struct {
      uint16_t :6;
      uint16_t CSF0:1;
      uint16_t CSF1:1;
      uint16_t :3;
      uint16_t ADRMUX0:1;
      uint16_t ADRMUX1:1;
    };
  };
} PMCONBITS;
extern volatile PMCONBITS PMCONbits __attribute__((__sfr__));


extern volatile uint16_t PMMODE __attribute__((__sfr__));
__extension__ typedef struct tagPMMODEBITS {
  union {
    struct {
      uint16_t WAITE:2;
      uint16_t WAITM:4;
      uint16_t WAITB:2;
      uint16_t MODE:2;
      uint16_t MODE16:1;
      uint16_t INCM:2;
      uint16_t IRQM:2;
      uint16_t BUSY:1;
    };
    struct {
      uint16_t WAITE0:1;
      uint16_t WAITE1:1;
      uint16_t WAITM0:1;
      uint16_t WAITM1:1;
      uint16_t WAITM2:1;
      uint16_t WAITM3:1;
      uint16_t WAITB0:1;
      uint16_t WAITB1:1;
      uint16_t MODE0:1;
      uint16_t MODE1:1;
      uint16_t :1;
      uint16_t INCM0:1;
      uint16_t INCM1:1;
      uint16_t IRQM0:1;
      uint16_t IRQM1:1;
    };
  };
} PMMODEBITS;
extern volatile PMMODEBITS PMMODEbits __attribute__((__sfr__));


extern volatile uint16_t PMADDR __attribute__((__sfr__));
__extension__ typedef struct tagPMADDRBITS {
  union {
    struct {
      uint16_t ADDR:2;
      uint16_t :12;
      uint16_t CS:1;
    };
    struct {
      uint16_t ADDR0:1;
      uint16_t ADDR1:1;
      uint16_t :12;
      uint16_t CS1:1;
    };
  };
} PMADDRBITS;
extern volatile PMADDRBITS PMADDRbits __attribute__((__sfr__));


extern volatile uint16_t PMDOUT1 __attribute__((__sfr__));
__extension__ typedef struct tagPMDOUT1BITS {
  union {
    struct {
      uint16_t ADDR:2;
      uint16_t :12;
      uint16_t CS:1;
    };
    struct {
      uint16_t ADDR0:1;
      uint16_t ADDR1:1;
      uint16_t :12;
      uint16_t CS1:1;
    };
  };
} PMDOUT1BITS;
extern volatile PMDOUT1BITS PMDOUT1bits __attribute__((__sfr__));


extern volatile uint16_t PMDOUT2 __attribute__((__sfr__));

extern volatile uint16_t PMDIN1 __attribute__((__sfr__));

extern volatile uint16_t PMDIN2 __attribute__((__sfr__));

extern volatile uint16_t PMAEN __attribute__((__sfr__));
typedef struct tagPMAENBITS {
  uint16_t PTEN0:1;
  uint16_t PTEN1:1;
  uint16_t :12;
  uint16_t PTEN14:1;
} PMAENBITS;
extern volatile PMAENBITS PMAENbits __attribute__((__sfr__));


extern volatile uint16_t PMSTAT __attribute__((__sfr__));
typedef struct tagPMSTATBITS {
  uint16_t OB0E:1;
  uint16_t OB1E:1;
  uint16_t OB2E:1;
  uint16_t OB3E:1;
  uint16_t :2;
  uint16_t OBUF:1;
  uint16_t OBE:1;
  uint16_t IB0F:1;
  uint16_t IB1F:1;
  uint16_t IB2F:1;
  uint16_t IB3F:1;
  uint16_t :2;
  uint16_t IBOV:1;
  uint16_t IBF:1;
} PMSTATBITS;
extern volatile PMSTATBITS PMSTATbits __attribute__((__sfr__));


extern volatile uint16_t ALRMVAL __attribute__((__sfr__));

extern volatile uint16_t ALCFGRPT __attribute__((__sfr__));
__extension__ typedef struct tagALCFGRPTBITS {
  union {
    struct {
      uint16_t ARPT:8;
      uint16_t ALRMPTR:2;
      uint16_t AMASK:4;
      uint16_t CHIME:1;
      uint16_t ALRMEN:1;
    };
    struct {
      uint16_t ARPT0:1;
      uint16_t ARPT1:1;
      uint16_t ARPT2:1;
      uint16_t ARPT3:1;
      uint16_t ARPT4:1;
      uint16_t ARPT5:1;
      uint16_t ARPT6:1;
      uint16_t ARPT7:1;
      uint16_t ALRMPTR0:1;
      uint16_t ALRMPTR1:1;
      uint16_t AMASK0:1;
      uint16_t AMASK1:1;
      uint16_t AMASK2:1;
      uint16_t AMASK3:1;
    };
  };
} ALCFGRPTBITS;
extern volatile ALCFGRPTBITS ALCFGRPTbits __attribute__((__sfr__));


extern volatile uint16_t RTCVAL __attribute__((__sfr__));

extern volatile uint16_t RCFGCAL __attribute__((__sfr__));
__extension__ typedef struct tagRCFGCALBITS {
  union {
    struct {
      uint16_t CAL:8;
      uint16_t RTCPTR:2;
      uint16_t RTCOE:1;
      uint16_t HALFSEC:1;
      uint16_t RTCSYNC:1;
      uint16_t RTCWREN:1;
      uint16_t :1;
      uint16_t RTCEN:1;
    };
    struct {
      uint16_t CAL0:1;
      uint16_t CAL1:1;
      uint16_t CAL2:1;
      uint16_t CAL3:1;
      uint16_t CAL4:1;
      uint16_t CAL5:1;
      uint16_t CAL6:1;
      uint16_t CAL7:1;
      uint16_t RTCPTR0:1;
      uint16_t RTCPTR1:1;
    };
  };
} RCFGCALBITS;
extern volatile RCFGCALBITS RCFGCALbits __attribute__((__sfr__));


extern volatile uint16_t CMCON __attribute__((__sfr__));
typedef struct tagCMCONBITS {
  uint16_t C1POS:1;
  uint16_t C1NEG:1;
  uint16_t C2POS:1;
  uint16_t C2NEG:1;
  uint16_t C1INV:1;
  uint16_t C2INV:1;
  uint16_t C1OUT:1;
  uint16_t C2OUT:1;
  uint16_t C1OUTEN:1;
  uint16_t C2OUTEN:1;
  uint16_t C1EN:1;
  uint16_t C2EN:1;
  uint16_t C1EVT:1;
  uint16_t C2EVT:1;
  uint16_t :1;
  uint16_t CMIDL:1;
} CMCONBITS;
extern volatile CMCONBITS CMCONbits __attribute__((__sfr__));


extern volatile uint16_t CVRCON __attribute__((__sfr__));
__extension__ typedef struct tagCVRCONBITS {
  union {
    struct {
      uint16_t CVR:4;
      uint16_t CVRSS:1;
      uint16_t CVRR:1;
      uint16_t CVROE:1;
      uint16_t CVREN:1;
    };
    struct {
      uint16_t CVR0:1;
      uint16_t CVR1:1;
      uint16_t CVR2:1;
      uint16_t CVR3:1;
    };
  };
} CVRCONBITS;
extern volatile CVRCONBITS CVRCONbits __attribute__((__sfr__));


extern volatile uint16_t CRCCON __attribute__((__sfr__));
__extension__ typedef struct tagCRCCONBITS {
  union {
    struct {
      uint16_t PLEN:4;
      uint16_t CRCGO:1;
      uint16_t :1;
      uint16_t CRCMPT:1;
      uint16_t CRCFUL:1;
      uint16_t VWORD:5;
      uint16_t CSIDL:1;
    };
    struct {
      uint16_t PLEN0:1;
      uint16_t PLEN1:1;
      uint16_t PLEN2:1;
      uint16_t PLEN3:1;
      uint16_t :4;
      uint16_t VWORD0:1;
      uint16_t VWORD1:1;
      uint16_t VWORD2:1;
      uint16_t VWORD3:1;
      uint16_t VWORD4:1;
    };
  };
} CRCCONBITS;
extern volatile CRCCONBITS CRCCONbits __attribute__((__sfr__));


extern volatile uint16_t CRCXOR __attribute__((__sfr__));
typedef struct tagCRCXORBITS {
  uint16_t :1;
  uint16_t X1:1;
  uint16_t X2:1;
  uint16_t X3:1;
  uint16_t X4:1;
  uint16_t X5:1;
  uint16_t X6:1;
  uint16_t X7:1;
  uint16_t X8:1;
  uint16_t X9:1;
  uint16_t X10:1;
  uint16_t X11:1;
  uint16_t X12:1;
  uint16_t X13:1;
  uint16_t X14:1;
  uint16_t X15:1;
} CRCXORBITS;
extern volatile CRCXORBITS CRCXORbits __attribute__((__sfr__));


extern volatile uint16_t CRCDAT __attribute__((__sfr__));

extern volatile uint16_t CRCWDAT __attribute__((__sfr__));

extern volatile uint16_t RPINR0 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR0BITS {
  union {
    struct {
      uint16_t :8;
      uint16_t INT1R:5;
    };
    struct {
      uint16_t :8;
      uint16_t INT1R0:1;
      uint16_t INT1R1:1;
      uint16_t INT1R2:1;
      uint16_t INT1R3:1;
      uint16_t INT1R4:1;
    };
  };
} RPINR0BITS;
extern volatile RPINR0BITS RPINR0bits __attribute__((__sfr__));


extern volatile uint16_t RPINR1 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR1BITS {
  union {
    struct {
      uint16_t INT2R:5;
    };
    struct {
      uint16_t INT2R0:1;
      uint16_t INT2R1:1;
      uint16_t INT2R2:1;
      uint16_t INT2R3:1;
      uint16_t INT2R4:1;
    };
  };
} RPINR1BITS;
extern volatile RPINR1BITS RPINR1bits __attribute__((__sfr__));


extern volatile uint16_t RPINR3 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR3BITS {
  union {
    struct {
      uint16_t T2CKR:5;
      uint16_t :3;
      uint16_t T3CKR:5;
    };
    struct {
      uint16_t T2CKR0:1;
      uint16_t T2CKR1:1;
      uint16_t T2CKR2:1;
      uint16_t T2CKR3:1;
      uint16_t T2CKR4:1;
      uint16_t :3;
      uint16_t T3CKR0:1;
      uint16_t T3CKR1:1;
      uint16_t T3CKR2:1;
      uint16_t T3CKR3:1;
      uint16_t T3CKR4:1;
    };
  };
} RPINR3BITS;
extern volatile RPINR3BITS RPINR3bits __attribute__((__sfr__));


extern volatile uint16_t RPINR4 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR4BITS {
  union {
    struct {
      uint16_t T4CKR:5;
      uint16_t :3;
      uint16_t T5CKR:5;
    };
    struct {
      uint16_t T4CKR0:1;
      uint16_t T4CKR1:1;
      uint16_t T4CKR2:1;
      uint16_t T4CKR3:1;
      uint16_t T4CKR4:1;
      uint16_t :3;
      uint16_t T5CKR0:1;
      uint16_t T5CKR1:1;
      uint16_t T5CKR2:1;
      uint16_t T5CKR3:1;
      uint16_t T5CKR4:1;
    };
  };
} RPINR4BITS;
extern volatile RPINR4BITS RPINR4bits __attribute__((__sfr__));


extern volatile uint16_t RPINR7 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR7BITS {
  union {
    struct {
      uint16_t IC1R:5;
      uint16_t :3;
      uint16_t IC2R:5;
    };
    struct {
      uint16_t IC1R0:1;
      uint16_t IC1R1:1;
      uint16_t IC1R2:1;
      uint16_t IC1R3:1;
      uint16_t IC1R4:1;
      uint16_t :3;
      uint16_t IC2R0:1;
      uint16_t IC2R1:1;
      uint16_t IC2R2:1;
      uint16_t IC2R3:1;
      uint16_t IC2R4:1;
    };
  };
} RPINR7BITS;
extern volatile RPINR7BITS RPINR7bits __attribute__((__sfr__));


extern volatile uint16_t RPINR8 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR8BITS {
  union {
    struct {
      uint16_t IC3R:5;
      uint16_t :3;
      uint16_t IC4R:5;
    };
    struct {
      uint16_t IC3R0:1;
      uint16_t IC3R1:1;
      uint16_t IC3R2:1;
      uint16_t IC3R3:1;
      uint16_t IC3R4:1;
      uint16_t :3;
      uint16_t IC4R0:1;
      uint16_t IC4R1:1;
      uint16_t IC4R2:1;
      uint16_t IC4R3:1;
      uint16_t IC4R4:1;
    };
  };
} RPINR8BITS;
extern volatile RPINR8BITS RPINR8bits __attribute__((__sfr__));


extern volatile uint16_t RPINR9 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR9BITS {
  union {
    struct {
      uint16_t IC5R:5;
    };
    struct {
      uint16_t IC5R0:1;
      uint16_t IC5R1:1;
      uint16_t IC5R2:1;
      uint16_t IC5R3:1;
      uint16_t IC5R4:1;
    };
  };
} RPINR9BITS;
extern volatile RPINR9BITS RPINR9bits __attribute__((__sfr__));


extern volatile uint16_t RPINR11 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR11BITS {
  union {
    struct {
      uint16_t OCFAR:5;
      uint16_t :3;
      uint16_t OCFBR:5;
    };
    struct {
      uint16_t OCFAR0:1;
      uint16_t OCFAR1:1;
      uint16_t OCFAR2:1;
      uint16_t OCFAR3:1;
      uint16_t OCFAR4:1;
      uint16_t :3;
      uint16_t OCFBR0:1;
      uint16_t OCFBR1:1;
      uint16_t OCFBR2:1;
      uint16_t OCFBR3:1;
      uint16_t OCFBR4:1;
    };
  };
} RPINR11BITS;
extern volatile RPINR11BITS RPINR11bits __attribute__((__sfr__));


extern volatile uint16_t RPINR18 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR18BITS {
  union {
    struct {
      uint16_t U1RXR:5;
      uint16_t :3;
      uint16_t U1CTSR:5;
    };
    struct {
      uint16_t U1RXR0:1;
      uint16_t U1RXR1:1;
      uint16_t U1RXR2:1;
      uint16_t U1RXR3:1;
      uint16_t U1RXR4:1;
      uint16_t :3;
      uint16_t U1CTSR0:1;
      uint16_t U1CTSR1:1;
      uint16_t U1CTSR2:1;
      uint16_t U1CTSR3:1;
      uint16_t U1CTSR4:1;
    };
  };
} RPINR18BITS;
extern volatile RPINR18BITS RPINR18bits __attribute__((__sfr__));


extern volatile uint16_t RPINR19 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR19BITS {
  union {
    struct {
      uint16_t U2RXR:5;
      uint16_t :3;
      uint16_t U2CTSR:5;
    };
    struct {
      uint16_t U2RXR0:1;
      uint16_t U2RXR1:1;
      uint16_t U2RXR2:1;
      uint16_t U2RXR3:1;
      uint16_t U2RXR4:1;
      uint16_t :3;
      uint16_t U2CTSR0:1;
      uint16_t U2CTSR1:1;
      uint16_t U2CTSR2:1;
      uint16_t U2CTSR3:1;
      uint16_t U2CTSR4:1;
    };
  };
} RPINR19BITS;
extern volatile RPINR19BITS RPINR19bits __attribute__((__sfr__));


extern volatile uint16_t RPINR20 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR20BITS {
  union {
    struct {
      uint16_t SDI1R:5;
      uint16_t :3;
      uint16_t SCK1R:5;
    };
    struct {
      uint16_t SDI1R0:1;
      uint16_t SDI1R1:1;
      uint16_t SDI1R2:1;
      uint16_t SDI1R3:1;
      uint16_t SDI1R4:1;
      uint16_t :3;
      uint16_t SCK1R0:1;
      uint16_t SCK1R1:1;
      uint16_t SCK1R2:1;
      uint16_t SCK1R3:1;
      uint16_t SCK1R4:1;
    };
  };
} RPINR20BITS;
extern volatile RPINR20BITS RPINR20bits __attribute__((__sfr__));


extern volatile uint16_t RPINR21 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR21BITS {
  union {
    struct {
      uint16_t SS1R:5;
    };
    struct {
      uint16_t SS1R0:1;
      uint16_t SS1R1:1;
      uint16_t SS1R2:1;
      uint16_t SS1R3:1;
      uint16_t SS1R4:1;
    };
  };
} RPINR21BITS;
extern volatile RPINR21BITS RPINR21bits __attribute__((__sfr__));


extern volatile uint16_t RPINR22 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR22BITS {
  union {
    struct {
      uint16_t SDI2R:5;
      uint16_t :3;
      uint16_t SCK2R:5;
    };
    struct {
      uint16_t SDI2R0:1;
      uint16_t SDI2R1:1;
      uint16_t SDI2R2:1;
      uint16_t SDI2R3:1;
      uint16_t SDI2R4:1;
      uint16_t :3;
      uint16_t SCK2R0:1;
      uint16_t SCK2R1:1;
      uint16_t SCK2R2:1;
      uint16_t SCK2R3:1;
      uint16_t SCK2R4:1;
    };
  };
} RPINR22BITS;
extern volatile RPINR22BITS RPINR22bits __attribute__((__sfr__));


extern volatile uint16_t RPINR23 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR23BITS {
  union {
    struct {
      uint16_t SS2R:5;
    };
    struct {
      uint16_t SS2R0:1;
      uint16_t SS2R1:1;
      uint16_t SS2R2:1;
      uint16_t SS2R3:1;
      uint16_t SS2R4:1;
    };
  };
} RPINR23BITS;
extern volatile RPINR23BITS RPINR23bits __attribute__((__sfr__));


extern volatile uint16_t RPOR0 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR0BITS {
  union {
    struct {
      uint16_t RP0R:5;
      uint16_t :3;
      uint16_t RP1R:5;
    };
    struct {
      uint16_t RP0R0:1;
      uint16_t RP0R1:1;
      uint16_t RP0R2:1;
      uint16_t RP0R3:1;
      uint16_t RP0R4:1;
      uint16_t :3;
      uint16_t RP1R0:1;
      uint16_t RP1R1:1;
      uint16_t RP1R2:1;
      uint16_t RP1R3:1;
      uint16_t RP1R4:1;
    };
  };
} RPOR0BITS;
extern volatile RPOR0BITS RPOR0bits __attribute__((__sfr__));


extern volatile uint16_t RPOR1 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR1BITS {
  union {
    struct {
      uint16_t RP2R:5;
      uint16_t :3;
      uint16_t RP3R:5;
    };
    struct {
      uint16_t RP2R0:1;
      uint16_t RP2R1:1;
      uint16_t RP2R2:1;
      uint16_t RP2R3:1;
      uint16_t RP2R4:1;
      uint16_t :3;
      uint16_t RP3R0:1;
      uint16_t RP3R1:1;
      uint16_t RP3R2:1;
      uint16_t RP3R3:1;
      uint16_t RP3R4:1;
    };
  };
} RPOR1BITS;
extern volatile RPOR1BITS RPOR1bits __attribute__((__sfr__));


extern volatile uint16_t RPOR2 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR2BITS {
  union {
    struct {
      uint16_t RP4R:5;
      uint16_t :3;
      uint16_t RP5R:5;
    };
    struct {
      uint16_t RP4R0:1;
      uint16_t RP4R1:1;
      uint16_t RP4R2:1;
      uint16_t RP4R3:1;
      uint16_t RP4R4:1;
      uint16_t :3;
      uint16_t RP5R0:1;
      uint16_t RP5R1:1;
      uint16_t RP5R2:1;
      uint16_t RP5R3:1;
      uint16_t RP5R4:1;
    };
  };
} RPOR2BITS;
extern volatile RPOR2BITS RPOR2bits __attribute__((__sfr__));


extern volatile uint16_t RPOR3 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR3BITS {
  union {
    struct {
      uint16_t RP6R:5;
      uint16_t :3;
      uint16_t RP7R:5;
    };
    struct {
      uint16_t RP6R0:1;
      uint16_t RP6R1:1;
      uint16_t RP6R2:1;
      uint16_t RP6R3:1;
      uint16_t RP6R4:1;
      uint16_t :3;
      uint16_t RP7R0:1;
      uint16_t RP7R1:1;
      uint16_t RP7R2:1;
      uint16_t RP7R3:1;
      uint16_t RP7R4:1;
    };
  };
} RPOR3BITS;
extern volatile RPOR3BITS RPOR3bits __attribute__((__sfr__));


extern volatile uint16_t RPOR4 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR4BITS {
  union {
    struct {
      uint16_t RP8R:5;
      uint16_t :3;
      uint16_t RP9R:5;
    };
    struct {
      uint16_t RP8R0:1;
      uint16_t RP8R1:1;
      uint16_t RP8R2:1;
      uint16_t RP8R3:1;
      uint16_t RP8R4:1;
      uint16_t :3;
      uint16_t RP9R0:1;
      uint16_t RP9R1:1;
      uint16_t RP9R2:1;
      uint16_t RP9R3:1;
      uint16_t RP9R4:1;
    };
  };
} RPOR4BITS;
extern volatile RPOR4BITS RPOR4bits __attribute__((__sfr__));


extern volatile uint16_t RPOR5 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR5BITS {
  union {
    struct {
      uint16_t RP10R:5;
      uint16_t :3;
      uint16_t RP11R:5;
    };
    struct {
      uint16_t RP10R0:1;
      uint16_t RP10R1:1;
      uint16_t RP10R2:1;
      uint16_t RP10R3:1;
      uint16_t RP10R4:1;
      uint16_t :3;
      uint16_t RP11R0:1;
      uint16_t RP11R1:1;
      uint16_t RP11R2:1;
      uint16_t RP11R3:1;
      uint16_t RP11R4:1;
    };
  };
} RPOR5BITS;
extern volatile RPOR5BITS RPOR5bits __attribute__((__sfr__));


extern volatile uint16_t RPOR6 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR6BITS {
  union {
    struct {
      uint16_t RP12R:5;
      uint16_t :3;
      uint16_t RP13R:5;
    };
    struct {
      uint16_t RP12R0:1;
      uint16_t RP12R1:1;
      uint16_t RP12R2:1;
      uint16_t RP12R3:1;
      uint16_t RP12R4:1;
      uint16_t :3;
      uint16_t RP13R0:1;
      uint16_t RP13R1:1;
      uint16_t RP13R2:1;
      uint16_t RP13R3:1;
      uint16_t RP13R4:1;
    };
  };
} RPOR6BITS;
extern volatile RPOR6BITS RPOR6bits __attribute__((__sfr__));


extern volatile uint16_t RPOR7 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR7BITS {
  union {
    struct {
      uint16_t RP14R:5;
      uint16_t :3;
      uint16_t RP15R:5;
    };
    struct {
      uint16_t RP14R0:1;
      uint16_t RP14R1:1;
      uint16_t RP14R2:1;
      uint16_t RP14R3:1;
      uint16_t RP14R4:1;
      uint16_t :3;
      uint16_t RP15R0:1;
      uint16_t RP15R1:1;
      uint16_t RP15R2:1;
      uint16_t RP15R3:1;
      uint16_t RP15R4:1;
    };
  };
} RPOR7BITS;
extern volatile RPOR7BITS RPOR7bits __attribute__((__sfr__));


extern volatile uint16_t RCON __attribute__((__sfr__));
__extension__ typedef struct tagRCONBITS {
  union {
    struct {
      uint16_t POR:1;
      uint16_t BOR:1;
      uint16_t IDLE:1;
      uint16_t SLEEP:1;
      uint16_t WDTO:1;
      uint16_t SWDTEN:1;
      uint16_t SWR:1;
      uint16_t EXTR:1;
      uint16_t VREGS:1;
      uint16_t CM:1;
      uint16_t :4;
      uint16_t IOPUWR:1;
      uint16_t TRAPR:1;
    };
    struct {
      uint16_t :8;
      uint16_t PMSLP:1;
    };
  };
} RCONBITS;
extern volatile RCONBITS RCONbits __attribute__((__sfr__));


extern volatile uint16_t OSCCON __attribute__((__sfr__));
__extension__ typedef struct tagOSCCONBITS {
  union {
    struct {
      uint16_t OSWEN:1;
      uint16_t SOSCEN:1;
      uint16_t :1;
      uint16_t CF:1;
      uint16_t :1;
      uint16_t LOCK:1;
      uint16_t IOLOCK:1;
      uint16_t CLKLOCK:1;
      uint16_t NOSC:3;
      uint16_t :1;
      uint16_t COSC:3;
    };
    struct {
      uint16_t :8;
      uint16_t NOSC0:1;
      uint16_t NOSC1:1;
      uint16_t NOSC2:1;
      uint16_t :1;
      uint16_t COSC0:1;
      uint16_t COSC1:1;
      uint16_t COSC2:1;
    };
  };
} OSCCONBITS;
extern volatile OSCCONBITS OSCCONbits __attribute__((__sfr__));


extern volatile uint8_t OSCCONL __attribute__((__sfr__));

extern volatile uint8_t OSCCONH __attribute__((__sfr__));

extern volatile uint16_t CLKDIV __attribute__((__sfr__));
__extension__ typedef struct tagCLKDIVBITS {
  union {
    struct {
      uint16_t :8;
      uint16_t RCDIV:3;
      uint16_t DOZEN:1;
      uint16_t DOZE:3;
      uint16_t ROI:1;
    };
    struct {
      uint16_t :8;
      uint16_t RCDIV0:1;
      uint16_t RCDIV1:1;
      uint16_t RCDIV2:1;
      uint16_t :1;
      uint16_t DOZE0:1;
      uint16_t DOZE1:1;
      uint16_t DOZE2:1;
    };
  };
} CLKDIVBITS;
extern volatile CLKDIVBITS CLKDIVbits __attribute__((__sfr__));


extern volatile uint16_t OSCTUN __attribute__((__sfr__));
__extension__ typedef struct tagOSCTUNBITS {
  union {
    struct {
      uint16_t TUN:6;
    };
    struct {
      uint16_t TUN0:1;
      uint16_t TUN1:1;
      uint16_t TUN2:1;
      uint16_t TUN3:1;
      uint16_t TUN4:1;
      uint16_t TUN5:1;
    };
  };
} OSCTUNBITS;
extern volatile OSCTUNBITS OSCTUNbits __attribute__((__sfr__));


extern volatile uint16_t NVMCON __attribute__((__sfr__));
__extension__ typedef struct tagNVMCONBITS {
  union {
    struct {
      uint16_t NVMOP:4;
      uint16_t :2;
      uint16_t ERASE:1;
      uint16_t :6;
      uint16_t WRERR:1;
      uint16_t WREN:1;
      uint16_t WR:1;
    };
    struct {
      uint16_t NVMOP0:1;
      uint16_t NVMOP1:1;
      uint16_t NVMOP2:1;
      uint16_t NVMOP3:1;
    };
    struct {
      uint16_t PROGOP:4;
    };
    struct {
      uint16_t PROGOP0:1;
      uint16_t PROGOP1:1;
      uint16_t PROGOP2:1;
      uint16_t PROGOP3:1;
    };
  };
} NVMCONBITS;
extern volatile NVMCONBITS NVMCONbits __attribute__((__sfr__));


extern volatile uint16_t NVMKEY __attribute__((__sfr__));

extern volatile uint16_t PMD1 __attribute__((__sfr__));
typedef struct tagPMD1BITS {
  uint16_t ADC1MD:1;
  uint16_t :2;
  uint16_t SPI1MD:1;
  uint16_t SPI2MD:1;
  uint16_t U1MD:1;
  uint16_t U2MD:1;
  uint16_t I2C1MD:1;
  uint16_t :3;
  uint16_t T1MD:1;
  uint16_t T2MD:1;
  uint16_t T3MD:1;
  uint16_t T4MD:1;
  uint16_t T5MD:1;
} PMD1BITS;
extern volatile PMD1BITS PMD1bits __attribute__((__sfr__));


extern volatile uint16_t PMD2 __attribute__((__sfr__));
typedef struct tagPMD2BITS {
  uint16_t OC1MD:1;
  uint16_t OC2MD:1;
  uint16_t OC3MD:1;
  uint16_t OC4MD:1;
  uint16_t OC5MD:1;
  uint16_t :3;
  uint16_t IC1MD:1;
  uint16_t IC2MD:1;
  uint16_t IC3MD:1;
  uint16_t IC4MD:1;
  uint16_t IC5MD:1;
} PMD2BITS;
extern volatile PMD2BITS PMD2bits __attribute__((__sfr__));


extern volatile uint16_t PMD3 __attribute__((__sfr__));
typedef struct tagPMD3BITS {
  uint16_t :1;
  uint16_t I2C2MD:1;
  uint16_t :5;
  uint16_t CRCPMD:1;
  uint16_t PMPMD:1;
  uint16_t RTCCMD:1;
  uint16_t CMPMD:1;
} PMD3BITS;
extern volatile PMD3BITS PMD3bits __attribute__((__sfr__));
# 9866 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h" 3 4
extern __attribute__((space(prog))) __prog__ uint16_t _CONFIG2;
# 9961 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h" 3 4
extern __attribute__((space(prog))) __prog__ uint16_t _CONFIG1;
# 348 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\generic\\h/xc.h" 2 3 4
# 38 "../base.h" 2

# 1 "../configuration.h" 1
# 40 "../base.h" 2
# 1 "../hardware.h" 1
# 22 "../hardware.h"
# 1 "../hardwarev3.h" 1
# 21 "../hardwarev3.h"
# 1 "../types.h" 1
# 22 "../hardwarev3.h" 2
# 132 "../hardwarev3.h"
static inline void bp_enable_3v3_pullup(void) {}

static inline void bp_disable_3v3_pullup(void) {}

static inline void bp_set_3v3_pullup_state(_Bool state __attribute__((unused))) {
}

static inline void bp_enable_5v0_pullup(void) {}

static inline void bp_disable_5v0_pullup(void) {}

static inline void bp_set_5v0_pullup_state(_Bool state __attribute__((unused))) {
}

static inline void bp_enable_usb_led(void) {}

static inline void bp_disable_usb_led(void) {}

static inline void bp_toggle_usb_led(void) {}

static inline void bp_adc_pin_setup(void) {
  AD1PCFGbits.PCFG12 = 0;
  AD1PCFGbits.PCFG10 = 0;
  AD1PCFGbits.PCFG9 = 0;
  AD1PCFGbits.PCFG11 = 0;
}
# 23 "../hardware.h" 2
# 72 "../hardware.h"
static inline void bp_enable_pullup(void) {
  TRISBbits.TRISB11 = 1;
  PORTBbits.RB11 = 0;
}

static inline void bp_disable_pullup(void) {
  PORTBbits.RB11 = 0;
  TRISBbits.TRISB11 = 0;
}

static inline void bp_set_pullup_state(_Bool state) {
  if (state == 1) {
    bp_enable_pullup();
  } else {
    bp_disable_pullup();
  }
}

static inline void bp_enable_voltage_regulator(void) {
  TRISAbits.TRISA0 = 0;
  PORTAbits.RA0 = 1;
}

static inline void bp_disable_voltage_regulator(void) {
  TRISAbits.TRISA0 = 0;
  PORTAbits.RA0 = 0;
}

static inline _Bool bp_get_voltage_regulator_state(void) {
  return PORTAbits.RA0;
}

static inline void bp_set_voltage_regulator_state(_Bool state) {
  if (state == 1) {
    bp_enable_voltage_regulator();
  } else {
    bp_disable_voltage_regulator();
  }
}






static inline void bp_enable_adc(void) { AD1CON1bits.ADON = 1; }

static inline void bp_disable_adc(void) { AD1CON1bits.ADON = 0; }

static inline void bp_set_adc_state(_Bool state) {
  if (state == 1) {
    bp_enable_adc();
  } else {
    bp_disable_adc();
  }
}

static inline void bp_enable_mode_led(void) {
  TRISAbits.TRISA1 = 0;
  PORTAbits.RA1 = 1;
}

static inline void bp_disable_mode_led(void) {
  TRISAbits.TRISA1 = 0;
  PORTAbits.RA1 = 0;
}

static inline void bp_set_mode_led_state(const _Bool state) {
  if (state == 1) {
    bp_enable_mode_led();
  } else {
    bp_disable_mode_led();
  }
}

static inline void bp_toggle_mode_led(void) {
  TRISAbits.TRISA1 = 0;
  PORTAbits.RA1 ^= 1;
}
# 41 "../base.h" 2
# 1 "../messages.h" 1
# 27 "../messages.h"
# 1 "../messages_v3.h" 1



void BPMSG1022_str(void);

void BPMSG1023_str(void);

void BPMSG1024_str(void);

void BPMSG1025_str(void);

void BPMSG1026_str(void);

void BPMSG1027_str(void);

void BPMSG1028_str(void);

void BPMSG1029_str(void);

void BPMSG1030_str(void);

void BPMSG1033_str(void);

void BPMSG1034_str(void);

void BPMSG1037_str(void);

void BPMSG1038_str(void);

void BPMSG1039_str(void);

void BPMSG1040_str(void);

void BPMSG1041_str(void);

void BPMSG1047_str(void);

void BPMSG1048_str(void);

void BPMSG1049_str(void);

void BPMSG1050_str(void);

void BPMSG1051_str(void);

void BPMSG1052_str(void);

void BPMSG1064_str(void);

void BPMSG1066_str(void);

void BPMSG1067_str(void);

void BPMSG1068_str(void);

void BPMSG1069_str(void);

void BPMSG1070_str(void);

void BPMSG1084_str(void);

void BPMSG1085_str(void);

void BPMSG1086_str(void);

void BPMSG1087_str(void);

void BPMSG1088_str(void);

void BPMSG1089_str(void);

void BPMSG1091_str(void);

void BPMSG1092_str(void);

void BPMSG1093_str(void);

void BPMSG1094_str(void);

void BPMSG1095_str(void);

void BPMSG1098_str(void);

void BPMSG1099_str(void);

void BPMSG1100_str(void);

void BPMSG1101_str(void);

void BPMSG1103_str(void);

void BPMSG1104_str(void);

void BPMSG1105_str(void);

void BPMSG1106_str(void);

void BPMSG1107_str(void);

void BPMSG1108_str(void);

void BPMSG1109_str(void);

void BPMSG1110_str(void);

void BPMSG1111_str(void);

void BPMSG1112_str(void);

void BPMSG1114_str(void);

void BPMSG1115_str(void);

void BPMSG1117_str(void);

void BPMSG1118_str(void);

void BPMSG1119_str(void);

void BPMSG1120_str(void);

void BPMSG1121_str(void);

void BPMSG1123_str(void);

void BPMSG1124_str(void);

void BPMSG1126_str(void);

void BPMSG1127_str(void);

void BPMSG1128_str(void);

void BPMSG1134_str(void);

void BPMSG1135_str(void);

void BPMSG1136_str(void);

void BPMSG1137_str(void);

void BPMSG1163_str(void);

void BPMSG1164_str(void);

void BPMSG1165_str(void);

void BPMSG1166_str(void);

void BPMSG1167_str(void);

void BPMSG1168_str(void);

void BPMSG1169_str(void);

void BPMSG1170_str(void);

void BPMSG1171_str(void);

void BPMSG1172_str(void);

void BPMSG1173_str(void);

void BPMSG1174_str(void);

void BPMSG1175_str(void);

void BPMSG1176_str(void);

void BPMSG1177_str(void);

void BPMSG1178_str(void);

void BPMSG1179_str(void);

void BPMSG1180_str(void);

void BPMSG1181_str(void);

void BPMSG1182_str(void);

void BPMSG1183_str(void);

void BPMSG1184_str(void);

void BPMSG1185_str(void);

void BPMSG1186_str(void);

void BPMSG1209_str(void);

void BPMSG1210_str(void);

void BPMSG1211_str(void);

void BPMSG1212_str(void);

void BPMSG1213_str(void);

void BPMSG1214_str(void);

void BPMSG1216_str(void);

void BPMSG1219_str(void);

void BPMSG1220_str(void);

void BPMSG1221_str(void);

void BPMSG1222_str(void);

void BPMSG1223_str(void);

void BPMSG1226_str(void);

void BPMSG1227_str(void);

void BPMSG1228_str(void);

void BPMSG1233_str(void);

void BPMSG1234_str(void);

void BPMSG1245_str(void);

void BPMSG1251_str(void);

void BPMSG1252_str(void);

void BPMSG1254_str(void);

void BPMSG1255_str(void);

void HLP1000_str(void);

void HLP1001_str(void);

void HLP1002_str(void);

void HLP1003_str(void);

void HLP1004_str(void);

void HLP1005_str(void);

void HLP1006_str(void);

void HLP1007_str(void);

void HLP1008_str(void);

void HLP1009_str(void);

void HLP1010_str(void);

void HLP1011_str(void);

void HLP1012_str(void);

void HLP1013_str(void);

void HLP1014_str(void);

void HLP1015_str(void);

void HLP1016_str(void);

void HLP1017_str(void);

void HLP1018_str(void);

void HLP1019_str(void);

void HLP1020_str(void);

void HLP1021_str(void);

void HLP1022_str(void);

void MSG_1WIRE_ADDRESS_MACRO_HEADER_str(void);

void MSG_1WIRE_ALARM_MACRO_NAME_str(void);

void MSG_1WIRE_BUS_RESET_str(void);

void MSG_1WIRE_LOOKUP_ID_HEADER_str(void);

void MSG_1WIRE_MACRO_LIST_str(void);

void MSG_1WIRE_MACRO_MENU_HEADER_str(void);

void MSG_1WIRE_MACRO_TABLE_HEADER_str(void);

void MSG_1WIRE_MACRO_TABLE_TRAILER_str(void);

void MSG_1WIRE_MATCH_ROM_MACRO_NAME_str(void);

void MSG_1WIRE_MODE_IDENTIFIER_str(void);

void MSG_1WIRE_NEXT_CLOCK_ALERT_str(void);

void MSG_1WIRE_NO_DEVICE_str(void);

void MSG_1WIRE_NO_DEVICE_DETECTED_str(void);

void MSG_1WIRE_PINS_STATE_str(void);

void MSG_1WIRE_READ_ROM_MACRO_NAME_str(void);

void MSG_1WIRE_SEARCH_MACRO_NAME_str(void);

void MSG_1WIRE_SKIP_ROM_MACRO_NAME_str(void);

void MSG_1WIRE_SPEED_PROMPT_str(void);

void MSG_ACK_str(void);

void MSG_ADC_VOLTAGE_PROBE_HEADER_str(void);

void MSG_ADC_VOLTMETER_MODE_str(void);

void MSG_ANY_KEY_TO_EXIT_PROMPT_str(void);

void MSG_BASE_CONVERTER_EQUAL_SIGN_str(void);

void MSG_BBIO_MODE_IDENTIFIER_str(void);

void MSG_BINARY_NUMBER_PREFIX_str(void);

void MSG_CHIP_IDENTIFIER_CLONE_str(void);

void MSG_CHIP_REVISION_A3_str(void);

void MSG_CHIP_REVISION_B4_str(void);

void MSG_CHIP_REVISION_B5_str(void);

void MSG_CHIP_REVISION_B8_str(void);

void MSG_CHIP_REVISION_ID_BEGIN_str(void);

void MSG_CHIP_REVISION_ID_END_2_str(void);

void MSG_CHIP_REVISION_ID_END_4_str(void);

void MSG_CHIP_REVISION_UNKNOWN_str(void);

void MSG_CLEAR_LINE_WITH_CR_str(void);

void MSG_CLUTCH_DISENGAGED_str(void);

void MSG_CLUTCH_ENGAGED_str(void);

void MSG_COMMAND_HAS_NO_EFFECT_str(void);

void MSG_CURSOR_LEFT_str(void);

void MSG_CURSOR_LEFT_TWO_str(void);

void MSG_CURSOR_RIGHT_str(void);

void MSG_DESTRUCTIVE_BACKSPACE_str(void);

void MSG_FINISH_SETUP_PROMPT_str(void);

void MSG_HEXADECIMAL_NUMBER_PREFIX_str(void);

void MSG_I2C_MODE_IDENTIFIER_str(void);

void MSG_I2C_PINS_STATE_str(void);

void MSG_I2C_READ_ADDRESS_END_str(void);

void MSG_I2C_START_BIT_str(void);

void MSG_I2C_STOP_BIT_str(void);

void MSG_I2C_WRITE_ADDRESS_END_str(void);

void MSG_KEYBOARD_ERROR_NODATA_str(void);

void MSG_KEYBOARD_ERROR_PARITY_str(void);

void MSG_KEYBOARD_ERROR_STARTBIT_str(void);

void MSG_KEYBOARD_ERROR_STOPBIT_str(void);

void MSG_KEYBOARD_ERROR_TIMEOUT_str(void);

void MSG_KEYBOARD_ERROR_UNKNOWN_str(void);

void MSG_KEYBOARD_LIVE_INPUT_START_str(void);

void MSG_KEYBOARD_MACRO_MENU_str(void);

void MSG_MODE_HEADER_END_str(void);

void MSG_NACK_str(void);

void MSG_NO_VOLTAGE_ON_PULLUP_PIN_str(void);

void MSG_OPENOCD_MODE_IDENTIFIER_str(void);

void MSG_PIC_DELAY_PROMPT_str(void);

void MSG_PIC_DEVICE_ID_str(void);

void MSG_PIC_EXIT_MODE_str(void);

void MSG_PIC_MACRO_MENU_str(void);

void MSG_PIC_MACRO_NOT_IMPLEMENTED_str(void);

void MSG_PIC_MODE_COMMAND_str(void);

void MSG_PIC_MODE_DATA_str(void);

void MSG_PIC_MODE_HEADER_str(void);

void MSG_PIC_MODE_IDENTIFIER_str(void);

void MSG_PIC_MODE_PROMPT_str(void);

void MSG_PIC_NO_READ_str(void);

void MSG_PIC_PINS_STATE_str(void);

void MSG_PIC_REVISION_ID_str(void);

void MSG_PIC_UNKNOWN_MODE_str(void);

void MSG_PIN_OUTPUT_TYPE_PROMPT_str(void);

void MSG_POWER_SUPPLIES_OFF_str(void);

void MSG_POWER_SUPPLIES_ON_str(void);

void MSG_PWM_FREQUENCY_TOO_LOW_str(void);

void MSG_PWM_HZ_MARKER_str(void);

void MSG_RAW2WIRE_ATR_DATA_UNITS_HEADER_str(void);

void MSG_RAW2WIRE_ATR_DATA_UNITS_NO_INDICATION_str(void);

void MSG_RAW2WIRE_ATR_DATA_UNIT_LENGTH_str(void);

void MSG_RAW2WIRE_ATR_PROTOCOL_2WIRE_str(void);

void MSG_RAW2WIRE_ATR_PROTOCOL_3WIRE_str(void);

void MSG_RAW2WIRE_ATR_PROTOCOL_HEADER_str(void);

void MSG_RAW2WIRE_ATR_PROTOCOL_SERIAL_str(void);

void MSG_RAW2WIRE_ATR_PROTOCOL_UNKNOWN_str(void);

void MSG_RAW2WIRE_ATR_READ_TYPE_HEADER_str(void);

void MSG_RAW2WIRE_ATR_READ_TYPE_TO_END_str(void);

void MSG_RAW2WIRE_ATR_READ_TYPE_VARIABLE_LENGTH_str(void);

void MSG_RAW2WIRE_ATR_REPLY_HEADER_str(void);

void MSG_RAW2WIRE_ATR_RFU_str(void);

void MSG_RAW2WIRE_ATR_TRIGGER_INFO_str(void);

void MSG_RAW2WIRE_I2C_START_str(void);

void MSG_RAW2WIRE_I2C_STOP_str(void);

void MSG_RAW2WIRE_MACRO_MENU_str(void);

void MSG_RAW2WIRE_MODE_HEADER_str(void);

void MSG_RAW3WIRE_MODE_HEADER_str(void);

void MSG_RAW_BRG_VALUE_INPUT_str(void);

void MSG_RAW_MODE_IDENTIFIER_str(void);

void MSG_READ_HEADER_str(void);

void MSG_SNIFFER_MESSAGE_str(void);

void MSG_SOFTWARE_MODE_SPEED_PROMPT_str(void);

void MSG_SPI_COULD_NOT_KEEP_UP_str(void);

void MSG_SPI_CS_DISABLED_str(void);

void MSG_SPI_CS_ENABLED_str(void);

void MSG_SPI_CS_MODE_PROMPT_str(void);

void MSG_SPI_EDGE_PROMPT_str(void);

void MSG_SPI_MACRO_MENU_str(void);

void MSG_SPI_MODE_HEADER_START_str(void);

void MSG_SPI_MODE_IDENTIFIER_str(void);

void MSG_SPI_PINS_STATE_str(void);

void MSG_SPI_POLARITY_PROMPT_str(void);

void MSG_SPI_SAMPLE_PROMPT_str(void);

void MSG_SPI_SPEED_PROMPT_str(void);

void MSG_UART_BAUD_CALCULATED_str(void);

void MSG_UART_BAUD_ESTIMATED_str(void);

void MSG_UART_BAUD_OVERFLOW_str(void);

void MSG_UART_BITS_PARITY_PROMPT_str(void);

void MSG_UART_BITS_STOP_PROMPT_str(void);

void MSG_UART_BPS_MARKER_str(void);

void MSG_UART_BRIDGE_str(void);

void MSG_UART_BRIDGE_EXIT_str(void);

void MSG_UART_EARLY_EXIT_str(void);

void MSG_UART_FAILED_NO_DATA_str(void);

void MSG_UART_FRAMING_ERROR_str(void);

void MSG_UART_LIVE_DISPLAY_START_str(void);

void MSG_UART_LIVE_DISPLAY_STOP_str(void);

void MSG_UART_MACRO_MENU_str(void);

void MSG_UART_MODE_HEADER_str(void);

void MSG_UART_MODE_IDENTIFIER_str(void);

void MSG_UART_OVERRUN_ERROR_str(void);

void MSG_UART_PARITY_ERROR_str(void);

void MSG_UART_PINS_STATE_str(void);

void MSG_UART_POLARITY_PROMPT_str(void);

void MSG_UART_POSSIBLE_OVERFLOW_str(void);

void MSG_UART_RAW_BRG_PROMPT_str(void);

void MSG_UART_RAW_UART_INPUT_str(void);

void MSG_UART_SET_PORT_SPEED_str(void);

void MSG_UART_WAITING_ACTIVITY_str(void);

void MSG_UNKNOWN_MACRO_ERROR_str(void);

void MSG_VOLTAGE_UNIT_str(void);

void MSG_VREG_TOO_LOW_str(void);

void MSG_WARNING_HEADER_str(void);

void MSG_WARNING_SHORT_OR_NO_PULLUP_str(void);
# 28 "../messages.h" 2
# 37 "../messages.h"
void print_help(void);







void bp_message_write_buffer(unsigned long strptr);







void bp_message_write_line(unsigned long strptr);






_Bool agree(void);
# 42 "../base.h" 2
# 56 "../base.h"
typedef struct {
  uint8_t speed;
  uint8_t numbits;




  uint8_t alternate_aux : 2;

  uint8_t periodicService : 1;





  uint8_t little_endian : 1;




  uint8_t high_impedance : 1;




  uint8_t int16 : 1;




  uint8_t write_with_read : 1;




  uint8_t command_error : 1;

} __attribute__((packed)) mode_configuration_t;

typedef struct {
  uint16_t num;
  uint16_t repeat;
  uint8_t cmd;
} __attribute__((packed)) command_t;
# 109 "../base.h"
uint16_t bp_reverse_integer(const uint16_t value, const uint8_t bits);
# 118 "../base.h"
uint8_t bp_reverse_byte(const uint8_t value);
# 127 "../base.h"
uint16_t bp_reverse_word(const uint16_t value);





void bp_reset_board_state(void);
# 144 "../base.h"
uint16_t bp_read_adc(const uint16_t channel);




void bp_adc_probe(void);





void bp_adc_continuous_probe(void);







void bp_write_formatted_integer(const uint16_t value);
# 188 "../base.h"
void bp_delay_ms(uint16_t milliseconds);






void bp_delay_us(uint16_t microseconds);
# 205 "../base.h"
void bp_write_buffer(const uint8_t *buffer, const size_t length);






void bp_write_string(const char *string);







void bp_write_line(const char *string);






void bp_write_hex_byte(const uint8_t value);






void bp_write_hex_word(const uint16_t value);






void bp_write_bin_byte(const uint8_t value);






void bp_write_dec_byte(const uint8_t value);






void bp_write_dec_word(const uint16_t value);






void bp_write_dec_dword(const uint32_t value);







void bp_write_dec_dword_friendly(const uint32_t value);







void bp_write_voltage(const uint16_t adc);
# 288 "../base.h"
uint16_t bp_read_from_flash(const uint16_t page, const uint16_t address);







void bp_write_hex_byte_to_ringbuffer(const uint8_t value);





void bp_initialise_delay_timer(void);
# 323 "../base.h"
extern uint8_t *UART1RXBuf;
extern uint16_t UART1RXToRecv;
extern uint16_t UART1RXRecvd;
extern uint8_t *UART1TXBuf;
extern uint16_t UART1TXSent;
extern uint16_t UART1TXAvailable;
# 340 "../base.h"
void user_serial_initialise(void);






_Bool user_serial_transmit_done(void);






_Bool user_serial_ready_to_read(void);




void user_serial_clear_overflow(void);






_Bool user_serial_check_overflow(void);







void user_serial_set_baud_rate(const uint16_t rate);





void user_serial_wait_transmission_done(void);







uint8_t user_serial_read_byte(void);
# 398 "../base.h"
uint16_t user_serial_read_big_endian_word(void);
# 408 "../base.h"
uint32_t user_serial_read_big_endian_long_word(void);





void user_serial_process_transmission_interrupt(void);







void user_serial_transmit_character(const char character);
# 437 "../base.h"
void user_serial_ringbuffer_setup(void);




void user_serial_ringbuffer_flush(void);







void user_serial_ringbuffer_append(const char character);




void user_serial_ringbuffer_process(void);
# 24 "../binary_io.c" 2
# 1 "../binary_io.h" 1
# 53 "../binary_io.h"
void enter_binary_bitbang_mode(void);
# 80 "../binary_io.h"
uint8_t bitbang_pin_direction_set(const uint8_t direction_mask);
# 107 "../binary_io.h"
uint8_t bitbang_pin_state_set(const uint8_t state_mask);

void bp_binary_io_peripherals_set(uint8_t input_byte);
# 25 "../binary_io.c" 2
# 1 "../bitbang.h" 1
# 27 "../bitbang.h"
typedef enum {



  BITBANG_SPEED_5KHZ = 0,




  BITBANG_SPEED_50KHZ,




  BITBANG_SPEED_100KHZ,




  BITBANG_SPEED_MAXIMUM
} bp_bitbang_speed_t;




typedef enum {



  BITBANG_I2C_START_ONE_SHOT = 0,




  BITBANG_I2C_RESTART
} bp_bitbang_i2c_start_type_t;
# 79 "../bitbang.h"
void bitbang_setup(unsigned char pins, const bp_bitbang_speed_t speed);
# 91 "../bitbang.h"
uint16_t bitbang_read_with_write(const uint16_t value);
# 101 "../bitbang.h"
void bitbang_write_value(const uint16_t value);
# 112 "../bitbang.h"
uint16_t bitbang_read_value(void);






_Bool bitbang_read_bit(void);






void bitbang_write_bit(const _Bool state);







void bitbang_advance_clock_ticks(const uint16_t ticks);






void bitbang_set_mosi(const _Bool state);






void bitbang_set_clk(const _Bool state);






void bitbang_set_cs(const _Bool state);






_Bool bitbang_read_miso(void);
# 172 "../bitbang.h"
void bitbang_set_pins_high(const uint16_t pins_bitmask, const uint16_t delay);
# 182 "../bitbang.h"
void bitbang_set_pins_low(const uint16_t pins_bitmask, const uint16_t delay);
# 193 "../bitbang.h"
void bitbang_set_pins(const _Bool state, const uint16_t pins_mask,
                      const uint16_t delay);
# 208 "../bitbang.h"
_Bool bitbang_read_pin(const uint16_t pin_bit);
# 224 "../bitbang.h"
_Bool bitbang_i2c_start(bp_bitbang_i2c_start_type_t type);




void bitbang_i2c_stop(void);
# 26 "../binary_io.c" 2

# 1 "../core.h" 1
# 31 "../core.h"
typedef struct {




  void (*start)(void);




  void (*start_with_read)(void);




  void (*stop)(void);







  void (*stop_from_read)(void);
# 71 "../core.h"
  uint16_t (*send)(uint16_t data);
# 81 "../core.h"
  uint16_t (*read)(void);




  void (*clock_high)(void);




  void (*clock_low)(void);




  void (*data_high)(void);




  void (*data_low)(void);
# 111 "../core.h"
  uint16_t (*data_state)(void);




  void (*clock_pulse)(void);






  _Bool (*read_bit)(void);
# 134 "../core.h"
  _Bool (*periodic_update)(void);






  void (*run_macro)(uint16_t macro);





  void (*setup_prepare)(void);





  void (*setup_execute)(void);




  void (*cleanup)(void);





  void (*print_pins_state)(void);




  void (*print_settings)(void);




  const char name[8];
} bus_pirate_protocol_t;




typedef enum {
# 190 "../core.h"
  BP_HIZ = 0,


  BP_1WIRE,



  BP_UART,



  BP_I2C,



  BP_SPI,



  BP_RAW2WIRE,



  BP_RAW3WIRE,
# 225 "../core.h"
  BP_PICPROG,



  BP_DIO,


  ENABLED_PROTOCOLS_COUNT
} __attribute__((packed)) bus_pirate_available_protocols_t;




typedef enum {

  HEX = 0,

  DEC,

  BIN,

  RAW
} __attribute__((packed)) bus_pirate_display_mode_t;

typedef struct {
  uint8_t *terminal_input;
  uint16_t device_type;
  uint16_t device_revision;
  uint8_t hardware_version;
  uint8_t terminal_speed;
  bus_pirate_display_mode_t display_mode;
  bus_pirate_available_protocols_t bus_mode;
  uint8_t quiet : 1;
  uint8_t overflow : 1;

  uint8_t basic : 1;

} bus_pirate_configuration_t;
# 28 "../binary_io.c" 2
# 1 "../selftest.h" 1
# 34 "../selftest.h"
uint8_t perform_selftest(_Bool show_progress, _Bool jumper_test);
# 29 "../binary_io.c" 2


# 1 "../spi.h" 1
# 30 "../spi.h"
void spi_enter_binary_io(void);
# 39 "../spi.h"
uint8_t spi_write_byte(const uint8_t value);

void spi_start(void);
void spi_start_with_read(void);
void spi_stop(void);
uint16_t spi_read(void);
uint16_t spi_write(const uint16_t value);
void spi_setup_prepare(void);
void spi_setup_execute(void);
void spi_cleanup(void);
void spi_run_macro(const uint16_t macro);
void spi_print_pins_state(void);
void spi_setup(const uint8_t speed);




void spi_disable_interface(void);

void spi_print_settings(void);
# 32 "../binary_io.c" 2



# 1 "../i2c.h" 1
# 30 "../i2c.h"
void i2c_start(void);




void i2c_stop(void);




void i2c_cleanup(void);




void i2c_print_settings(void);




void i2c_pins_state(void);

uint16_t i2c_read(void);
uint16_t i2c_write(const uint16_t value);
void i2c_setup_prepare(void);
void i2c_setup_execute(void);
void i2c_macro(const uint16_t macro);

void binary_io_enter_i2c_mode(void);
# 36 "../binary_io.c" 2



# 1 "../uart.h" 1
# 28 "../uart.h"
void uartProcess(void);
void binUART(void);






uint16_t uart_read(void);
# 45 "../uart.h"
uint16_t uart_write(const uint16_t value);




void uart_cleanup(void);




void uart_start(void);




void uart_stop(void);






void uart_pins_state(void);
# 76 "../uart.h"
void uart_run_macro(const uint16_t macro);

void uart_setup_prepare(void);
void uart_setup_execute(void);

_Bool uart_periodic_callback(void);
void UARTsettings(void);
# 40 "../binary_io.c" 2



# 1 "../1wire.h" 1
# 51 "../1wire.h"
void binary_io_enter_1wire_mode(void);






uint16_t onewire_read(void);
# 68 "../1wire.h"
uint16_t onewire_write(const uint16_t data);
# 77 "../1wire.h"
_Bool onewire_read_bit(void);






void onewire_clock_pulse(void);






void onewire_data_low(void);






void onewire_data_high(void);






void onewire_setup_prepare(void);






void onewire_setup_execute(void);
# 121 "../1wire.h"
void onewire_run_macro(const uint16_t macro);






void onewire_pins_state(void);
# 137 "../1wire.h"
uint16_t onewire_data_state(void);




void onewire_reset(void);
# 44 "../binary_io.c" 2



# 1 "../pic.h" 1
# 33 "../pic.h"
void binary_io_enter_pic_mode(void);







void pic_setup_prepare(void);







void pic_setup_execute(void);




void pic_start(void);




void pic_stop(void);
# 72 "../pic.h"
uint16_t pic_read(void);
# 88 "../pic.h"
uint16_t pic_write(const uint16_t value);




void pic_cleanup(void);
# 103 "../pic.h"
void pic_run_macro(const uint16_t macro);





void pic_print_pins_state(void);
# 48 "../binary_io.c" 2



# 1 "../jtag.h" 1
# 34 "../jtag.h"
void jtag(void);
# 52 "../binary_io.c" 2

# 1 "../openocd.h" 1
# 25 "../openocd.h"
void binOpenOCD(void);
# 54 "../binary_io.c" 2







extern mode_configuration_t mode_configuration;
extern bus_pirate_configuration_t bus_pirate_configuration;
# 71 "../binary_io.c"
static void send_binary_io_mode_identifier(void);

typedef enum {
  IO_COMMAND_GROUP_GENERIC = 0b0000,
  IO_COMMAND_GROUP_BULK_BYTE_TRANSFER = 0b0001,
  IO_COMMAND_GROUP_BULK_CLOCK_TICKS_ADVANCE = 0b0010,
  IO_COMMAND_GROUP_BULK_BIT_TRANSFER = 0b0011,
  IO_COMMAND_GROUP_CONFIGURE_PERIPHERALS = 0b0100,
  IO_COMMAND_GROUP_SET_PULLUP = 0b0101,
  IO_COMMAND_GROUP_SET_SPEED = 0b0110,
  IO_COMMAND_GROUP_CONFIGURATION = 0b1000,
  IO_COMMAND_GROUP_PIC = 0b1010,
  IO_COMMAND_GROUP_SMPS = 0b1111
} io_command_group;

typedef enum {
  IO_COMMAND_EXIT = 0,
  IO_COMMAND_REPORT_ID_STRING,
  IO_COMMAND_SEND_I2C_START_BIT,
  IO_COMMAND_SEND_I2C_STOP_BIT,
  IO_COMMAND_CS_LOW,
  IO_COMMAND_CS_HIGH,
  IO_COMMAND_BITBANG_READ_BYTE,
  IO_COMMAND_BITBANG_READ_BIT,
  IO_COMMAND_PEEK_INPUT_BIT,
  IO_COMMAND_CLOCK_TICK,
  IO_COMMAND_CLOCK_LOW,
  IO_COMMAND_CLOCK_HIGH,
  IO_COMMAND_DATA_LOW,
  IO_COMMAND_DATA_HIGH
} wire_generic_command;

typedef enum {
  PIC_MODE_INVALID = 0,
  PIC_MODE_416,
  PIC_MODE_424,
  PIC_MODE_614,
  PIC_MODE_COUNT
} pic_mode;

typedef enum {
  PIC_USER_COMMAND_WRITE = 1,
  PIC_USER_COMMAND_READ
} pic_command_type;

typedef enum {
  PIC_COMMAND_SET_MODE = 0xA0,
  PIC_COMMAND_WRITE = 0xA4,
  PIC_COMMAND_WRITE_AND_READ_BITS = 0xA5,
  PIC_COMMAND_WRITE_AND_READ_COMMANDS = 0xA7
} pic_command;

typedef enum {
  SMPS_COMMAND_GET_OUTPUT_VOLTAGE = 0xF0,
  SMPS_COMMAND_STOP = 0xF1,
  SMPS_COMMAND_START = 0xF2
} smps_command;

typedef enum {
  BITBANG_COMMAND_RESET = 0x00,
  BITBANG_COMMAND_SPI,
  BITBANG_COMMAND_I2C,
  BITBANG_COMMAND_UART,
  BITBANG_COMMAND_1WIRE,
  BITBANG_COMMAND_RAW_WIRE,
  BITBANG_COMMAND_OPENOCD,
  BITBANG_COMMAND_PIC,
  BITBANG_COMMAND_RETURN_TO_TERMINAL = 0x0F,
  BITBANG_COMMAND_SHORT_SELF_TEST,
  BITBANG_COMMAND_FULL_SELF_TEST,
  BITBANG_COMMAND_SETUP_PWM,
  BITBANG_COMMAND_CLEAR_PWM,
  BITBANG_COMMAND_ADC_ONE_SHOT,
  BITBANG_COMMAND_ADC_CONTINUOUS,
  BITBANG_COMMAND_FREQUENCY_COUNT,
  BITBANG_COMMAND_JTAG_XSVF = 0x18
} bitbang_command;
# 157 "../binary_io.c"
static const uint8_t PIC24_WRITE_AND_READ_PAYLOAD[3 * 4] = {
    0x69, 0xD0, 0x5D, 0x6D, 0xDB, 0x5D, 0x6B, 0xCB, 0x5D, 0x69, 0xD0, 0x5D};

static const uint8_t PIC24_NOP_PAYLOAD[3] = {0};
# 208 "../binary_io.c"
static inline void binary_io_raw_wire_mode_handler(void);
# 258 "../binary_io.c"
static inline _Bool
handle_wire_generic_command(const wire_generic_command command);

static inline void handle_bulk_byte_transfer(const uint8_t command);
static inline void handle_bulk_clock_ticks_advance(const uint8_t command);
static inline void handle_bulk_bit_transfer(const uint8_t command);
static inline void handle_set_pullup(const uint8_t command);
static inline void handle_configure_peripherals(const uint8_t command);
static inline void handle_set_speed(const uint8_t command);
static inline void handle_configuration(const uint8_t command);
static inline void handle_pic_command_write_and_read_commands(void);
static inline void handle_pic_command_write_and_read_bits(void);
static inline void handle_pic_command_write(void);
static inline void handle_pic_command(const pic_command command);
static inline void handle_smps_command(const smps_command command);

static inline void handle_setup_pwm(void);
static inline void handle_clear_pwm(void);
static inline void handle_read_adc_one_shot(void);
static inline void handle_read_adc_continuously(void);
static inline void handle_frequency_measurement(void);
static inline void handle_bitbang_command(const bitbang_command command);

static void read_and_transmit_adc_measurement(void);

static void send_bits(const uint8_t value, const size_t count);

static void pic24_send_six_payload(const uint8_t *payload);
static inline void pic24_send_nop_opcode(void);
static inline void pic614_read(const uint8_t value);
static inline void pic614_write(const uint8_t command, const uint8_t data_low,
                                const uint8_t data_high);
static inline void pic416_read(const uint8_t value);
static void pic416_write(const uint8_t command, const uint8_t data_low,
                         const uint8_t data_high);
static void pic424_read(void);
static void pic424_write(const uint8_t *payload, const size_t nops);
# 306 "../binary_io.c"
static void binary_io_self_test(_Bool jumper_test);
static void reset_state(void);




typedef struct {
  uint8_t wires : 1;
  uint8_t pic_mode : 2;
  uint8_t reserved : 5;
} binary_io_state_t;

static binary_io_state_t io_state = {0};
# 360 "../binary_io.c"
void send_binary_io_mode_identifier(void) { bp_message_write_buffer(__builtin_tbladdress(MSG_BBIO_MODE_IDENTIFIER_str)); }

void enter_binary_bitbang_mode(void) {
  bp_enable_mode_led();
  reset_state();
  send_binary_io_mode_identifier();

  for (;;) {
    uint8_t input_byte = user_serial_read_byte();

    if ((input_byte & 0b10000000) == 0) {
      handle_bitbang_command((bitbang_command)input_byte);
    } else {
      user_serial_transmit_character(bitbang_pin_state_set(input_byte));
    }
  }
}

void handle_bitbang_command(const bitbang_command command) {
  switch (command) {
  case BITBANG_COMMAND_RESET:
    send_binary_io_mode_identifier();
    break;

  case BITBANG_COMMAND_SPI:

    reset_state();
    spi_enter_binary_io();

    reset_state();
    send_binary_io_mode_identifier();
    break;

  case BITBANG_COMMAND_I2C:

    reset_state();
    binary_io_enter_i2c_mode();

    reset_state();
    send_binary_io_mode_identifier();
    break;

  case BITBANG_COMMAND_UART:

    reset_state();
    binUART();

    reset_state();
    send_binary_io_mode_identifier();
    break;

  case BITBANG_COMMAND_1WIRE:

    reset_state();
    binary_io_enter_1wire_mode();

    reset_state();
    send_binary_io_mode_identifier();
    break;

  case BITBANG_COMMAND_RAW_WIRE:
    reset_state();
    binary_io_raw_wire_mode_handler();
    reset_state();
    send_binary_io_mode_identifier();
    break;

  case BITBANG_COMMAND_OPENOCD:

    reset_state();
    binOpenOCD();

    reset_state();
    send_binary_io_mode_identifier();
    break;

  case BITBANG_COMMAND_PIC:

    reset_state();
    binary_io_enter_pic_mode();

    reset_state();
    send_binary_io_mode_identifier();
    break;

  case BITBANG_COMMAND_RETURN_TO_TERMINAL:
    do { user_serial_transmit_character(0x01); } while (0);
    bp_disable_mode_led();
    user_serial_wait_transmission_done();




    __asm volatile("RESET");

    break;

  case BITBANG_COMMAND_SHORT_SELF_TEST:
    binary_io_self_test(0);
    break;

  case BITBANG_COMMAND_FULL_SELF_TEST:
    binary_io_self_test(1);
    break;

  case BITBANG_COMMAND_SETUP_PWM:
    handle_setup_pwm();
    break;

  case BITBANG_COMMAND_CLEAR_PWM:
    handle_clear_pwm();
    break;

  case BITBANG_COMMAND_ADC_ONE_SHOT:
    handle_read_adc_one_shot();
    break;

  case BITBANG_COMMAND_ADC_CONTINUOUS:
    handle_read_adc_continuously();
    break;

  case BITBANG_COMMAND_FREQUENCY_COUNT:
    handle_frequency_measurement();
    break;

  case BITBANG_COMMAND_JTAG_XSVF:





    do { user_serial_transmit_character(0x00); } while (0);

    break;

  default:
    if ((command & 0b11100000) == 0b01000000) {
      user_serial_transmit_character(bitbang_pin_direction_set(command));
    } else {
      do { user_serial_transmit_character(0x00); } while (0);
    }
    break;
  }
}

void reset_state(void) {
  bp_disable_3v3_pullup();
  bitbang_pin_direction_set(0xFF);
  bitbang_pin_state_set(0x00);
}

uint8_t bitbang_pin_direction_set(const uint8_t direction_mask) {



  TRISBbits.TRISB10 = (direction_mask & 0b00010000) ? 1 : 0;
  TRISBbits.TRISB9 = (direction_mask & 0b00001000) ? 1 : 0;
  TRISBbits.TRISB8 = (direction_mask & 0b00000100) ? 1 : 0;
  TRISBbits.TRISB7 = (direction_mask & 0b00000010) ? 1 : 0;
  TRISBbits.TRISB6 = (direction_mask & 0b00000001) ? 1 : 0;



  bp_delay_us(5);



  return ((PORTBbits.RB10 == 1) ? 0b00010000 : 0b00000000) |
         ((PORTBbits.RB9 == 1) ? 0b00001000 : 0b00000000) |
         ((PORTBbits.RB8 == 1) ? 0b00000100 : 0b00000000) |
         ((PORTBbits.RB7 == 1) ? 0b00000010 : 0b00000000) |
         ((PORTBbits.RB6 == 1) ? 0b00000001 : 0b00000000);
}

uint8_t bitbang_pin_state_set(const uint8_t state_mask) {



  bp_set_voltage_regulator_state((state_mask & 0b01000000) ? 1 : 0);
  bp_set_pullup_state((state_mask & 0b00100000) ? 1 : 0);

  PORTBbits.RB10 = (state_mask & 0b00010000) ? 1 : 0;
  PORTBbits.RB9 = (state_mask & 0b00001000) ? 1 : 0;
  PORTBbits.RB8 = (state_mask & 0b00000100) ? 1 : 0;
  PORTBbits.RB7 = (state_mask & 0b00000010) ? 1 : 0;
  PORTBbits.RB6 = (state_mask & 0b00000001) ? 1 : 0;



  bp_delay_us(5);



  return ((PORTBbits.RB10 == 1) ? 0b00010000 : 0b00000000) |
         ((PORTBbits.RB9 == 1) ? 0b00001000 : 0b00000000) |
         ((PORTBbits.RB8 == 1) ? 0b00000100 : 0b00000000) |
         ((PORTBbits.RB7 == 1) ? 0b00000010 : 0b00000000) |
         ((PORTBbits.RB6 == 1) ? 0b00000001 : 0b00000000);
}

void binary_io_self_test(const _Bool jumper_test) {
  volatile uint16_t tick = 0;

  uint8_t errors = perform_selftest(0, jumper_test);
  bp_set_mode_led_state(errors > 0);
  user_serial_transmit_character(errors);

  for (;;) {
    if (user_serial_ready_to_read()) {
      uint8_t input_byte = user_serial_read_byte();
      if (input_byte != 0xFF) {
        user_serial_transmit_character(input_byte + errors);
      } else {
        user_serial_transmit_character(0x01);
        return;
      }
    }

    if (errors == 0) {
      if (tick == 0) {
        tick = 0xFFFF;
        bp_toggle_mode_led();
      }

      tick--;
    }
  }
}

void bp_binary_io_peripherals_set(unsigned char inByte) {
  bp_set_voltage_regulator_state((inByte & 0b00001000) == 0b00001000);
  bp_set_pullup_state((inByte & 0b00000100) == 0b00000100);

  TRISBbits.TRISB10 = 0;
  PORTBbits.RB10 = (inByte & 0b00000010) ? 1 : 0;


  if (inByte & 0b1) {
    if (mode_configuration.high_impedance == 1) {
      TRISB |= 0b0000000001000000;
    } else {
      LATB |= 0b0000000001000000;
      TRISB &= (~0b0000000001000000);
    }
  } else {
    LATB &= (~0b0000000001000000);
    TRISB &= (~0b0000000001000000);
  }
}
# 658 "../binary_io.c"
void binary_io_raw_wire_mode_handler(void) {
  mode_configuration.high_impedance = 1;
  mode_configuration.little_endian = 0;
  mode_configuration.speed = 1;
  mode_configuration.numbits = 8;

  io_state.wires = 0;
  io_state.pic_mode = PIC_MODE_614;

  bitbang_setup(2, BITBANG_SPEED_MAXIMUM);
  TRISBbits.TRISB9 = 0;
  TRISBbits.TRISB8 = 0;
  TRISBbits.TRISB7 = 1;
  bitbang_set_cs(1);

  bp_message_write_buffer(__builtin_tbladdress(MSG_RAW_MODE_IDENTIFIER_str));

  _Bool keep_looping = 1;

  while (keep_looping) {
    uint8_t input_byte = user_serial_read_byte();

    switch ((io_command_group)(input_byte >> 4)) {
    case IO_COMMAND_GROUP_GENERIC:
      keep_looping =
          handle_wire_generic_command((wire_generic_command)input_byte);
      continue;

    case IO_COMMAND_GROUP_BULK_BYTE_TRANSFER:
      handle_bulk_byte_transfer(input_byte);
      break;

    case IO_COMMAND_GROUP_BULK_CLOCK_TICKS_ADVANCE:
      handle_bulk_clock_ticks_advance(input_byte);
      break;

    case IO_COMMAND_GROUP_BULK_BIT_TRANSFER:
      handle_bulk_bit_transfer(input_byte);
      break;

    case IO_COMMAND_GROUP_PIC:
      handle_pic_command((pic_command)input_byte);
      break;

    case IO_COMMAND_GROUP_SET_PULLUP:
      handle_set_pullup(input_byte);
      break;

    case IO_COMMAND_GROUP_CONFIGURE_PERIPHERALS:
      handle_configure_peripherals(input_byte);
      break;

    case IO_COMMAND_GROUP_SET_SPEED:
      handle_set_speed(input_byte);
      break;

    case IO_COMMAND_GROUP_CONFIGURATION:
      handle_configuration(input_byte);
      break;

    case IO_COMMAND_GROUP_SMPS:
      handle_smps_command((smps_command)input_byte);
      break;

    default:
      do { user_serial_transmit_character(0x00); } while (0);
      break;
    }
  }
}

void send_bits(const uint8_t value, const size_t count) {
  uint8_t bits = value;

  for (size_t index = 0; index < count; index++) {
    bitbang_write_bit((bits & 0x01) ? 1 : 0);
    bits >>= 1;
  }
}

void pic614_read(const uint8_t value) {
  send_bits(value, 6);

  user_serial_transmit_character(bitbang_read_value());
  user_serial_transmit_character(bitbang_read_value());
}

void pic614_write(const uint8_t command, const uint8_t data_low,
                  const uint8_t data_high) {
  send_bits(command, 6);

  if ((command & 0x80) == 0x00) {
    bitbang_write_value(data_low);
    bitbang_write_value(data_high);
  }
}

void pic416_read(const uint8_t value) {
  send_bits(value, 4);

  bitbang_read_value();
  user_serial_transmit_character(bitbang_read_value());
}

void pic416_write(const uint8_t command, const uint8_t data_low,
                  const uint8_t data_high) {
  uint8_t delay = (command >> 6) & 0b00000011;
  uint8_t id = command;

  for (size_t index = 0; index < 4; index++) {
    if (index == 3 && (delay > 0)) {
      bitbang_set_clk(1);
      bp_delay_ms(delay);
      bitbang_set_clk(0);
      continue;
    }

    bitbang_write_bit((id & 0x01) ? 1 : 0);
    id >>= 1;
  }

  bitbang_write_value(data_low);
  bitbang_write_value(data_high);
}

void pic24_send_six_payload(const uint8_t *payload) {

  bitbang_write_bit(0);
  bitbang_write_bit(0);
  bitbang_write_bit(0);
  bitbang_write_bit(0);


  bitbang_write_value(*payload++);
  bitbang_write_value(*payload++);
  bitbang_write_value(*payload++);
}

void pic24_send_nop_opcode(void) {
  pic24_send_six_payload(&PIC24_NOP_PAYLOAD[0]);
}

void pic424_write(const uint8_t *payload, const size_t nops) {
  pic24_send_six_payload(payload);


  for (size_t counter = 0; counter < nops; counter++) {
    pic24_send_nop_opcode();
  }
}

void pic424_read(void) {

  bitbang_write_bit(1);
  bitbang_write_bit(0);
  bitbang_write_bit(0);
  bitbang_write_bit(0);

  bitbang_write_value(0x00);

  uint8_t value = bitbang_read_value();
  user_serial_transmit_character(bitbang_read_value());
  user_serial_transmit_character(value);


  pic24_send_nop_opcode();
  pic24_send_nop_opcode();
}

_Bool handle_wire_generic_command(const wire_generic_command command) {
  switch (command) {
  case IO_COMMAND_EXIT:

    return 0;

  case IO_COMMAND_REPORT_ID_STRING:
    bp_message_write_buffer(__builtin_tbladdress(MSG_RAW_MODE_IDENTIFIER_str));
    break;

  case IO_COMMAND_SEND_I2C_START_BIT:
    bitbang_i2c_start(BITBANG_I2C_START_ONE_SHOT);
    do { user_serial_transmit_character(0x01); } while (0);
    break;

  case IO_COMMAND_SEND_I2C_STOP_BIT:
    bitbang_i2c_stop();
    do { user_serial_transmit_character(0x01); } while (0);
    break;

  case IO_COMMAND_CS_LOW:
    bitbang_set_cs(0);
    do { user_serial_transmit_character(0x01); } while (0);
    break;

  case IO_COMMAND_CS_HIGH:
    bitbang_set_cs(1);
    do { user_serial_transmit_character(0x01); } while (0);
    break;

  case IO_COMMAND_BITBANG_READ_BYTE: {
    uint16_t value = (io_state.wires == 0)
                         ? bitbang_read_value()
                         : bitbang_read_with_write(0xFF);
    if (mode_configuration.little_endian == 1) {
      value = bp_reverse_integer(value, mode_configuration.numbits);
    }
    user_serial_transmit_character(value & 0xFF);
    break;
  }

  case IO_COMMAND_BITBANG_READ_BIT:
    user_serial_transmit_character(bitbang_read_bit());
    break;

  case IO_COMMAND_PEEK_INPUT_BIT:
    user_serial_transmit_character(bitbang_read_miso());
    break;

  case IO_COMMAND_CLOCK_TICK:
    bitbang_advance_clock_ticks(1);
    do { user_serial_transmit_character(0x01); } while (0);
    break;

  case IO_COMMAND_CLOCK_LOW:
    bitbang_set_clk(0);
    do { user_serial_transmit_character(0x01); } while (0);
    break;

  case IO_COMMAND_CLOCK_HIGH:
    bitbang_set_clk(1);
    do { user_serial_transmit_character(0x01); } while (0);
    break;

  case IO_COMMAND_DATA_LOW:
    bitbang_set_mosi(0);
    do { user_serial_transmit_character(0x01); } while (0);
    break;

  case IO_COMMAND_DATA_HIGH:
    bitbang_set_mosi(1);
    do { user_serial_transmit_character(0x01); } while (0);
    break;

  default:
    do { user_serial_transmit_character(0x00); } while (0);
    break;
  }

  return 1;
}

void handle_bulk_byte_transfer(const uint8_t command) {
  size_t bytes = (command & 0x0F) + 1;
  do { user_serial_transmit_character(0x01); } while (0);

  for (size_t counter = 0; counter < bytes; counter++) {
    uint16_t value = user_serial_read_byte();
    if (mode_configuration.little_endian == 1) {
      value = bp_reverse_integer(value, mode_configuration.numbits);
    }

    if (io_state.wires == 0) {
      bitbang_write_value(value & 0xFF);
      do { user_serial_transmit_character(0x01); } while (0);
    } else {
      value = bitbang_read_with_write(value & 0xFF);
      if (mode_configuration.little_endian == 1) {
        value = bp_reverse_integer(value, mode_configuration.numbits);
      }
      bitbang_write_value(value & 0xFF);
    }
  }
}

void handle_bulk_clock_ticks_advance(const uint8_t command) {
  bitbang_advance_clock_ticks((command & 0x0F) + 1);
  do { user_serial_transmit_character(0x01); } while (0);
}

void handle_bulk_bit_transfer(const uint8_t command) {
  size_t bits = (command & 0x0F) + 1;
  do { user_serial_transmit_character(0x01); } while (0);

  uint8_t byte = user_serial_read_byte();
  for (size_t counter = 0; counter < bits; counter++) {
    bitbang_write_bit((command & 0x80) ? 1 : 0);
    byte <<= 1;
  }

  do { user_serial_transmit_character(0x01); } while (0);
}

void handle_set_pullup(const uint8_t command) {



  do { user_serial_transmit_character(0x00); } while (0);

}

void handle_configure_peripherals(const uint8_t command) {
  bp_binary_io_peripherals_set(command);
  do { user_serial_transmit_character(0x01); } while (0);
}

void handle_set_speed(const uint8_t command) {
  mode_configuration.speed = command & 0b00000011;
  bitbang_setup(io_state.wires == 0 ? 2 : 3,
                mode_configuration.speed);
  bitbang_set_cs(1);
  do { user_serial_transmit_character(0x01); } while (0);
}

void handle_configuration(const uint8_t command) {
  mode_configuration.high_impedance = (command & 0b00001000) ? 1 : 0;
  io_state.wires =
      (command & 0b00000100) ? 1 : 0;
  mode_configuration.little_endian = (command & 0b00000010) ? 1 : 0;
  bitbang_setup(io_state.wires == 0 ? 2 : 3,
                mode_configuration.speed);
  bitbang_set_cs(1);
  do { user_serial_transmit_character(0x01); } while (0);
}

void handle_pic_command(const pic_command command) {
  switch (command) {

  case PIC_COMMAND_SET_MODE: {
    uint8_t value = user_serial_read_byte();
    if (((pic_mode)value >= PIC_MODE_COUNT) ||
        ((pic_mode)value == PIC_MODE_INVALID)) {
      do { user_serial_transmit_character(0x00); } while (0);
    } else {
      io_state.pic_mode = value;
      do { user_serial_transmit_character(0x01); } while (0);
    }
    break;
  }

  case PIC_COMMAND_WRITE:
    handle_pic_command_write();
    break;

  case PIC_COMMAND_WRITE_AND_READ_BITS:
    handle_pic_command_write_and_read_bits();
    break;

  case PIC_COMMAND_WRITE_AND_READ_COMMANDS:
    handle_pic_command_write_and_read_commands();
    break;

  default:
    do { user_serial_transmit_character(0x00); } while (0);
    break;
  }
}

void handle_pic_command_write(void) {
  if ((io_state.pic_mode != PIC_MODE_416) &&
      (io_state.pic_mode != PIC_MODE_424)) {
    do { user_serial_transmit_character(0x00); } while (0);
    return;
  }

  size_t commands_count =
      (user_serial_read_byte() * (io_state.pic_mode == PIC_MODE_416 ? 3 : 4));
  for (size_t offset = 0; offset < commands_count; offset++) {
    bus_pirate_configuration.terminal_input[offset] = user_serial_read_byte();
  }

  if (io_state.pic_mode == PIC_MODE_416) {
    for (size_t offset = 0; offset < commands_count; offset += 3) {
      pic416_write(bus_pirate_configuration.terminal_input[offset],
                   bus_pirate_configuration.terminal_input[offset + 1],
                   bus_pirate_configuration.terminal_input[offset + 2]);
    }

    do { user_serial_transmit_character(0x01); } while (0);
    return;
  }

  for (size_t offset = 0; offset < commands_count; offset += 4) {
    pic424_write(&bus_pirate_configuration.terminal_input[offset],
                 bus_pirate_configuration.terminal_input[offset + 3]);
  }

  do { user_serial_transmit_character(0x01); } while (0);
}

void handle_pic_command_write_and_read_bits(void) {
  if ((io_state.pic_mode != PIC_MODE_416) &&
      (io_state.pic_mode != PIC_MODE_424)) {
    do { user_serial_transmit_character(0x00); } while (0);
    return;
  }

  uint8_t commands_count = user_serial_read_byte();

  if (io_state.pic_mode == PIC_MODE_416) {
    uint8_t command = user_serial_read_byte();

    for (size_t counter = 0; counter < commands_count; counter++) {
      send_bits(command, 4);

      bitbang_read_value();
      user_serial_transmit_character(bitbang_read_value());
    }

    return;
  }

  for (size_t counter = 0; counter < commands_count; counter++) {
    const uint8_t *payload_pointer = &PIC24_WRITE_AND_READ_PAYLOAD[0];

    pic424_write(payload_pointer, 2);
    pic424_read();
    pic424_write(payload_pointer + 3, 2);

    pic424_write(payload_pointer + 6, 2);
    pic424_read();
    pic424_write(payload_pointer + 9, 2);
    pic424_read();
  }
}

void handle_pic_command_write_and_read_commands(void) {
  uint8_t write_commands = user_serial_read_byte();
  uint8_t read_commands = user_serial_read_byte();
  size_t commands = 0;

  switch (io_state.pic_mode) {
  case PIC_MODE_424:
    commands = (write_commands * 5) + read_commands;
    break;

  case PIC_MODE_416:
  case PIC_MODE_614:
    commands = (write_commands * 4) + (read_commands * 2);
    break;

  default:
    do { user_serial_transmit_character(0x00); } while (0);
    return;
  }

  for (size_t counter = 0; counter < commands; counter++) {
    bus_pirate_configuration.terminal_input[counter] = user_serial_read_byte();
  }

  if (read_commands != 0) {
    do { user_serial_transmit_character(0x01); } while (0);
  }

  size_t index = 0;
  while (index < commands) {
    switch (bus_pirate_configuration.terminal_input[index]) {
    case PIC_USER_COMMAND_WRITE:
      switch (io_state.pic_mode) {
      case PIC_MODE_614:
        pic614_write(bus_pirate_configuration.terminal_input[index + 1],
                     bus_pirate_configuration.terminal_input[index + 2],
                     bus_pirate_configuration.terminal_input[index + 3]);
        index += 4;
        break;

      case PIC_MODE_416:
        pic416_write(bus_pirate_configuration.terminal_input[index + 1],
                     bus_pirate_configuration.terminal_input[index + 2],
                     bus_pirate_configuration.terminal_input[index + 3]);
        index += 4;
        break;

      case PIC_MODE_424:
        pic424_write(&bus_pirate_configuration.terminal_input[index + 1],
                     bus_pirate_configuration.terminal_input[index + 4] & 0x0F);
        index += 5;
        break;

      default:

        do { user_serial_transmit_character(0x00); } while (0);
        return;
      }
      break;

    case PIC_USER_COMMAND_READ:
      switch (io_state.pic_mode) {
      case PIC_MODE_614:
        pic614_read(bus_pirate_configuration.terminal_input[index + 1]);
        index += 2;
        break;

      case PIC_MODE_416:
        pic416_read(bus_pirate_configuration.terminal_input[index + 1]);
        index += 2;
        break;

      case PIC_MODE_424:
        pic424_read();
        index++;
        break;

      default:

        do { user_serial_transmit_character(0x00); } while (0);
        return;
      }
      break;

    default:
      index++;
      break;
    }
  }

  if (read_commands == 0) {
    do { user_serial_transmit_character(0x01); } while (0);
  }
}

void handle_smps_command(const smps_command command) {
# 1204 "../binary_io.c"
  (void)command;
  do { user_serial_transmit_character(0x00); } while (0);

}

void handle_clear_pwm(void) {
# 1222 "../binary_io.c"
  T2CON = 0x0000;
# 1251 "../binary_io.c"
  OC5CON = 0x0000;



  RPOR5bits.RP10R = 0x00;

  do { user_serial_transmit_character(0x01); } while (0);
}

void read_and_transmit_adc_measurement(void) {
  uint16_t value = bp_read_adc(12);
  user_serial_transmit_character((value >> 8) & 0xFF);
  user_serial_transmit_character(value & 0xFF);
}

void handle_read_adc_one_shot(void) {
  bp_enable_adc();
  read_and_transmit_adc_measurement();
  bp_disable_adc();
}

void handle_read_adc_continuously(void) {
  _Bool should_loop = 1;

  bp_enable_adc();
  do {
    read_and_transmit_adc_measurement();
    if (user_serial_ready_to_read()) {
      user_serial_read_byte();
      should_loop = 0;
    }
  } while (should_loop);
  bp_disable_adc();
}

void handle_frequency_measurement(void) {
  uint32_t frequency = bp_measure_frequency();

  user_serial_transmit_character((frequency >> 24) & 0xFF);
  user_serial_transmit_character((frequency >> 16) & 0xFF);
  user_serial_transmit_character((frequency >> 8) & 0xFF);
  user_serial_transmit_character(frequency & 0xFF);
}

void handle_setup_pwm(void) {
# 1308 "../binary_io.c"
  T2CON = 0x0000;
# 1322 "../binary_io.c"
  T4CON = 0x0000;
# 1351 "../binary_io.c"
  OC5CON = 0x0000;


  RPOR5bits.RP10R = 22;
  T2CONbits.TCKPS = user_serial_read_byte() & 0b00000011;

  uint16_t duty_cycle = user_serial_read_byte();
  duty_cycle = (duty_cycle << 8) | user_serial_read_byte();
  OC5R = duty_cycle;
  OC5RS = duty_cycle;
# 1389 "../binary_io.c"
  OC5CON = 0x0006;


  uint16_t period = user_serial_read_byte();
  period = (period << 8) | user_serial_read_byte();
  PR2 = period;

  T2CONbits.TON = 1;
  do { user_serial_transmit_character(0x01); } while (0);
}
