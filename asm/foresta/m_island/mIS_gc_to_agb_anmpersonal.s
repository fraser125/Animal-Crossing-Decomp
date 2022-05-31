lbl_803B4BB4:
/* 803B4BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4BB8  7C 08 02 A6 */	mflr r0
/* 803B4BBC  38 A0 00 01 */	li r5, 1
/* 803B4BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4BC8  7C 9F 23 78 */	mr r31, r4
/* 803B4BCC  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4BD0  7C 7E 1B 78 */	mr r30, r3
/* 803B4BD4  4B FF F5 49 */	bl mISL_short
/* 803B4BD8  38 7E 00 02 */	addi r3, r30, 2
/* 803B4BDC  38 9F 00 02 */	addi r4, r31, 2
/* 803B4BE0  38 A0 00 01 */	li r5, 1
/* 803B4BE4  4B FF F5 39 */	bl mISL_short
/* 803B4BE8  38 7F 00 04 */	addi r3, r31, 4
/* 803B4BEC  38 9E 00 04 */	addi r4, r30, 4
/* 803B4BF0  38 A0 00 08 */	li r5, 8
/* 803B4BF4  4B CA 84 29 */	bl func_8005D01C
/* 803B4BF8  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 803B4BFC  98 1E 00 0C */	stb r0, 0xc(r30)
/* 803B4C00  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 803B4C04  98 1E 00 0D */	stb r0, 0xd(r30)
/* 803B4C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B4C0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B4C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4C14  7C 08 03 A6 */	mtlr r0
/* 803B4C18  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4C1C  4E 80 00 20 */	blr 
