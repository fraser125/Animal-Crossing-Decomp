lbl_8037BB84:
/* 8037BB84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037BB88  7C 08 02 A6 */	mflr r0
/* 8037BB8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037BB90  4B FF FF 9D */	bl _mBGMPsComp_make_ps_quiet
/* 8037BB94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037BB98  7C 08 03 A6 */	mtlr r0
/* 8037BB9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8037BBA0  4E 80 00 20 */	blr 
