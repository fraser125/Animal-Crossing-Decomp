lbl_803B5980:
/* 803B5980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5984  7C 08 02 A6 */	mflr r0
/* 803B5988  38 A0 00 10 */	li r5, 0x10
/* 803B598C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5990  48 00 50 95 */	bl func_803BAA24
/* 803B5994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5998  7C 08 03 A6 */	mtlr r0
/* 803B599C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B59A0  4E 80 00 20 */	blr 