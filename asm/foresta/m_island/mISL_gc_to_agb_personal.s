lbl_803B4C8C:
/* 803B4C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4C90  7C 08 02 A6 */	mflr r0
/* 803B4C94  38 A0 00 08 */	li r5, 8
/* 803B4C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4CA0  7C 9F 23 78 */	mr r31, r4
/* 803B4CA4  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4CA8  7C 7E 1B 78 */	mr r30, r3
/* 803B4CAC  7F E3 FB 78 */	mr r3, r31
/* 803B4CB0  7F C4 F3 78 */	mr r4, r30
/* 803B4CB4  4B CA 83 69 */	bl func_8005D01C
/* 803B4CB8  38 7F 00 08 */	addi r3, r31, 8
/* 803B4CBC  38 9E 00 08 */	addi r4, r30, 8
/* 803B4CC0  38 A0 00 08 */	li r5, 8
/* 803B4CC4  4B CA 83 59 */	bl func_8005D01C
/* 803B4CC8  38 7E 00 10 */	addi r3, r30, 0x10
/* 803B4CCC  38 9F 00 10 */	addi r4, r31, 0x10
/* 803B4CD0  38 A0 00 01 */	li r5, 1
/* 803B4CD4  4B FF F4 49 */	bl mISL_short
/* 803B4CD8  38 7E 00 12 */	addi r3, r30, 0x12
/* 803B4CDC  38 9F 00 12 */	addi r4, r31, 0x12
/* 803B4CE0  38 A0 00 01 */	li r5, 1
/* 803B4CE4  4B FF F4 39 */	bl mISL_short
/* 803B4CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B4CF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B4CF4  7C 08 03 A6 */	mtlr r0
/* 803B4CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4CFC  4E 80 00 20 */	blr 
