lbl_80628FE0:
/* 80628FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80628FE4  7C 08 02 A6 */	mflr r0
/* 80628FE8  38 80 00 17 */	li r4, 0x17
/* 80628FEC  38 A0 00 06 */	li r5, 6
/* 80628FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80628FF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80628FF8  7C 7F 1B 78 */	mr r31, r3
/* 80628FFC  4B A3 22 15 */	bl gfxprint_locate8x8
/* 80629000  3C 80 80 6D */	lis r4, lit_929@ha /* 0x806D438C@ha */
/* 80629004  7F E3 FB 78 */	mr r3, r31
/* 80629008  38 84 43 8C */	addi r4, r4, lit_929@l /* 0x806D438C@l */
/* 8062900C  4C C6 31 82 */	crclr 6
/* 80629010  4B A3 29 0D */	bl gfxprint_printf
/* 80629014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80629018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062901C  7C 08 03 A6 */	mtlr r0
/* 80629020  38 21 00 10 */	addi r1, r1, 0x10
/* 80629024  4E 80 00 20 */	blr 
