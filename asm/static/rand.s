.include "macros.inc"

.section .text

.org 0x8009F46C

.global srand
srand:
/* 8009F46C 0009C3CC  90 6D 86 E0 */	stw r3, next-_SDA_BASE_(r13)
/* 8009F470 0009C3D0  4E 80 00 20 */	blr 

.global rand
rand:
/* 8009F474 0009C3D4  3C 60 41 C6 */	lis r3, 0x41C64E6D@ha
/* 8009F478 0009C3D8  80 8D 86 E0 */	lwz r4, next-_SDA_BASE_(r13)
/* 8009F47C 0009C3DC  38 03 4E 6D */	addi r0, r3, 0x41C64E6D@l
/* 8009F480 0009C3E0  7C 64 01 D6 */	mullw r3, r4, r0
/* 8009F484 0009C3E4  38 03 30 39 */	addi r0, r3, 0x3039
/* 8009F488 0009C3E8  90 0D 86 E0 */	stw r0, next-_SDA_BASE_(r13)
/* 8009F48C 0009C3EC  54 03 84 7E */	rlwinm r3, r0, 0x10, 0x11, 0x1f
/* 8009F490 0009C3F0  4E 80 00 20 */	blr 
