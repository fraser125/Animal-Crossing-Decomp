lbl_803C4DCC:
/* 803C4DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4DD0  7C 08 02 A6 */	mflr r0
/* 803C4DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4DDC  7C 9F 23 78 */	mr r31, r4
/* 803C4DE0  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4DE4  4B FF B2 65 */	bl func_803C0048
/* 803C4DE8  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4DEC  7C 00 1A 14 */	add r0, r0, r3
/* 803C4DF0  38 60 00 00 */	li r3, 0
/* 803C4DF4  90 1F 00 00 */	stw r0, 0(r31)
/* 803C4DF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4E00  7C 08 03 A6 */	mtlr r0
/* 803C4E04  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4E08  4E 80 00 20 */	blr 
