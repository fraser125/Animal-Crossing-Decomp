lbl_8062929C:
/* 8062929C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806292A0  7C 08 02 A6 */	mflr r0
/* 806292A4  38 80 00 17 */	li r4, 0x17
/* 806292A8  38 A0 00 09 */	li r5, 9
/* 806292AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806292B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806292B4  7C 7F 1B 78 */	mr r31, r3
/* 806292B8  4B A3 1F 59 */	bl gfxprint_locate8x8
/* 806292BC  3C 80 80 6D */	lis r4, lit_973@ha /* 0x806D4408@ha */
/* 806292C0  7F E3 FB 78 */	mr r3, r31
/* 806292C4  38 84 44 08 */	addi r4, r4, lit_973@l /* 0x806D4408@l */
/* 806292C8  4C C6 31 82 */	crclr 6
/* 806292CC  4B A3 26 51 */	bl gfxprint_printf
/* 806292D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806292D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806292D8  7C 08 03 A6 */	mtlr r0
/* 806292DC  38 21 00 10 */	addi r1, r1, 0x10
/* 806292E0  4E 80 00 20 */	blr 
