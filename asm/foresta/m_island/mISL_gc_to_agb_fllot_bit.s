lbl_803B46B0:
/* 803B46B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B46B4  7C 08 02 A6 */	mflr r0
/* 803B46B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B46BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B46C0  7C 9F 23 78 */	mr r31, r4
/* 803B46C4  38 80 00 04 */	li r4, 4
/* 803B46C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B46CC  7C 7E 1B 78 */	mr r30, r3
/* 803B46D0  38 61 00 08 */	addi r3, r1, 8
/* 803B46D4  4B CA 89 95 */	bl bzero
/* 803B46D8  88 DF 00 00 */	lbz r6, 0(r31)
/* 803B46DC  7F C3 F3 78 */	mr r3, r30
/* 803B46E0  88 01 00 08 */	lbz r0, 8(r1)
/* 803B46E4  38 81 00 08 */	addi r4, r1, 8
/* 803B46E8  50 C0 06 30 */	rlwimi r0, r6, 0, 0x18, 0x18
/* 803B46EC  38 A0 00 01 */	li r5, 1
/* 803B46F0  98 01 00 08 */	stb r0, 8(r1)
/* 803B46F4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B46F8  50 C0 06 72 */	rlwimi r0, r6, 0, 0x19, 0x19
/* 803B46FC  98 01 00 08 */	stb r0, 8(r1)
/* 803B4700  4B FF F9 F9 */	bl mISL_int
/* 803B4704  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B4708  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B470C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B4710  7C 08 03 A6 */	mtlr r0
/* 803B4714  38 21 00 20 */	addi r1, r1, 0x20
/* 803B4718  4E 80 00 20 */	blr 
