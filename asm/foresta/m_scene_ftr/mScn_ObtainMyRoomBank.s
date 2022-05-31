lbl_803E7974:
/* 803E7974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E7978  7C 08 02 A6 */	mflr r0
/* 803E797C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E7980  4B FF FF 85 */	bl mScn_ObtainCarpetBank
/* 803E7984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7988  7C 08 03 A6 */	mtlr r0
/* 803E798C  38 21 00 10 */	addi r1, r1, 0x10
/* 803E7990  4E 80 00 20 */	blr 
