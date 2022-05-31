lbl_8056FB88:
/* 8056FB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FB8C  7C 08 02 A6 */	mflr r0
/* 8056FB90  38 80 00 04 */	li r4, 4
/* 8056FB94  38 A0 00 00 */	li r5, 0
/* 8056FB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FB9C  38 C0 00 00 */	li r6, 0
/* 8056FBA0  38 E0 00 00 */	li r7, 0
/* 8056FBA4  39 00 00 00 */	li r8, 0
/* 8056FBA8  39 20 00 00 */	li r9, 0
/* 8056FBAC  4B FF F4 3D */	bl func_8056EFE8
/* 8056FBB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FBB4  7C 08 03 A6 */	mtlr r0
/* 8056FBB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FBBC  4E 80 00 20 */	blr 
