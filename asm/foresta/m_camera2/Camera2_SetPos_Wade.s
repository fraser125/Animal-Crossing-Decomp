lbl_8037F5C8:
/* 8037F5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F5CC  7C 08 02 A6 */	mflr r0
/* 8037F5D0  38 83 1C 04 */	addi r4, r3, 0x1c04
/* 8037F5D4  38 A3 1C 10 */	addi r5, r3, 0x1c10
/* 8037F5D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F5DC  C0 23 1C 00 */	lfs f1, 0x1c00(r3)
/* 8037F5E0  C0 43 1C 1C */	lfs f2, 0x1c1c(r3)
/* 8037F5E4  4B FF F3 29 */	bl Camera2_SetPos_fromStartEnd
/* 8037F5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F5EC  7C 08 03 A6 */	mtlr r0
/* 8037F5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F5F4  4E 80 00 20 */	blr 
