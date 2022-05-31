lbl_8037B9D0:
/* 8037B9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037B9D4  7C 08 02 A6 */	mflr r0
/* 8037B9D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037B9DC  4B FF FF 8D */	bl _mBGMPsComp_make_ps_fanfare
/* 8037B9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037B9E4  7C 08 03 A6 */	mtlr r0
/* 8037B9E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037B9EC  4E 80 00 20 */	blr 
