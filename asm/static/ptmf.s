.include "macros.inc"

.section .text

.org 0x8009AD4C

.global __ptmf_test
__ptmf_test:
/* 8009AD4C 00097CAC  80 A3 00 00 */	lwz r5, 0(r3)
/* 8009AD50 00097CB0  80 C3 00 04 */	lwz r6, 4(r3)
/* 8009AD54 00097CB4  80 E3 00 08 */	lwz r7, 8(r3)
/* 8009AD58 00097CB8  38 60 00 01 */	li r3, 1
/* 8009AD5C 00097CBC  2C 05 00 00 */	cmpwi r5, 0
/* 8009AD60 00097CC0  2F 06 00 00 */	cmpwi cr6, r6, 0
/* 8009AD64 00097CC4  2F 87 00 00 */	cmpwi cr7, r7, 0
/* 8009AD68 00097CC8  4C 82 00 20 */	bnelr 
/* 8009AD6C 00097CCC  4C 9A 00 20 */	bnelr cr6
/* 8009AD70 00097CD0  4C 9E 00 20 */	bnelr cr7
/* 8009AD74 00097CD4  38 60 00 00 */	li r3, 0
/* 8009AD78 00097CD8  4E 80 00 20 */	blr 

.global __ptmf_scall
__ptmf_scall:
/* 8009AD7C 00097CDC  80 0C 00 00 */	lwz r0, 0(r12)
/* 8009AD80 00097CE0  81 6C 00 04 */	lwz r11, 4(r12)
/* 8009AD84 00097CE4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8009AD88 00097CE8  7C 63 02 14 */	add r3, r3, r0
/* 8009AD8C 00097CEC  2C 0B 00 00 */	cmpwi r11, 0
/* 8009AD90 00097CF0  41 80 00 0C */	blt lbl_8009AD9C
/* 8009AD94 00097CF4  7D 83 60 2E */	lwzx r12, r3, r12
/* 8009AD98 00097CF8  7D 8C 58 2E */	lwzx r12, r12, r11
lbl_8009AD9C:
/* 8009AD9C 00097CFC  7D 89 03 A6 */	mtctr r12
/* 8009ADA0 00097D00  4E 80 04 20 */	bctr 
