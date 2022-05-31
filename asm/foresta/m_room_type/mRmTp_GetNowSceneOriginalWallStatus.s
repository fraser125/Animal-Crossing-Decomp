lbl_803E76A0:
/* 803E76A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E76A4  7C 08 02 A6 */	mflr r0
/* 803E76A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E76AC  4B FF FF 5D */	bl mRmTp_GetNowSceneFloorBitInfoP
/* 803E76B0  28 03 00 00 */	cmplwi r3, 0
/* 803E76B4  41 82 00 10 */	beq lbl_803E76C4
/* 803E76B8  88 03 00 00 */	lbz r0, 0(r3)
/* 803E76BC  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 803E76C0  48 00 00 08 */	b lbl_803E76C8
lbl_803E76C4:
/* 803E76C4  38 60 00 00 */	li r3, 0
lbl_803E76C8:
/* 803E76C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E76CC  7C 08 03 A6 */	mtlr r0
/* 803E76D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803E76D4  4E 80 00 20 */	blr 
