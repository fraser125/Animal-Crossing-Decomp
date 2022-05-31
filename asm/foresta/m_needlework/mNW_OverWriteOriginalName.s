lbl_803C9CF4:
/* 803C9CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9CF8  7C 08 02 A6 */	mflr r0
/* 803C9CFC  28 04 00 00 */	cmplwi r4, 0
/* 803C9D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9D04  7C 60 1B 78 */	mr r0, r3
/* 803C9D08  41 82 00 14 */	beq lbl_803C9D1C
/* 803C9D0C  7C 83 23 78 */	mr r3, r4
/* 803C9D10  7C 04 03 78 */	mr r4, r0
/* 803C9D14  38 A0 00 10 */	li r5, 0x10
/* 803C9D18  4B C9 33 05 */	bl func_8005D01C
lbl_803C9D1C:
/* 803C9D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9D20  7C 08 03 A6 */	mtlr r0
/* 803C9D24  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9D28  4E 80 00 20 */	blr 
