lbl_8037BB0C:
/* 8037BB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037BB10  7C 08 02 A6 */	mflr r0
/* 8037BB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037BB18  4B FF FF 61 */	bl _mBGMPsComp_make_ps_wipe
/* 8037BB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037BB20  7C 08 03 A6 */	mtlr r0
/* 8037BB24  38 21 00 10 */	addi r1, r1, 0x10
/* 8037BB28  4E 80 00 20 */	blr 
