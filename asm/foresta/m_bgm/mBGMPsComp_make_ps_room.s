lbl_8037BE70:
/* 8037BE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037BE74  7C 08 02 A6 */	mflr r0
/* 8037BE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037BE7C  4B FF FF 8D */	bl _mBGMPsComp_make_ps_room
/* 8037BE80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037BE84  7C 08 03 A6 */	mtlr r0
/* 8037BE88  38 21 00 10 */	addi r1, r1, 0x10
/* 8037BE8C  4E 80 00 20 */	blr 
