lbl_803B484C:
/* 803B484C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4850  7C 08 02 A6 */	mflr r0
/* 803B4854  38 A0 00 01 */	li r5, 1
/* 803B4858  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B485C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4860  7C 9F 23 78 */	mr r31, r4
/* 803B4864  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4868  7C 7E 1B 78 */	mr r30, r3
/* 803B486C  4B FF F8 B1 */	bl mISL_short
/* 803B4870  88 1F 00 02 */	lbz r0, 2(r31)
/* 803B4874  98 1E 00 02 */	stb r0, 2(r30)
/* 803B4878  88 1F 00 03 */	lbz r0, 3(r31)
/* 803B487C  98 1E 00 03 */	stb r0, 3(r30)
/* 803B4880  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B4884  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B4888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B488C  7C 08 03 A6 */	mtlr r0
/* 803B4890  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4894  4E 80 00 20 */	blr 
