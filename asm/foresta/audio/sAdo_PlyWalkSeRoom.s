lbl_8062DD6C:
/* 8062DD6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062DD70  7C 08 02 A6 */	mflr r0
/* 8062DD74  7C 85 23 78 */	mr r5, r4
/* 8062DD78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062DD7C  38 81 00 08 */	addi r4, r1, 8
/* 8062DD80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062DD84  7C 7F 1B 78 */	mr r31, r3
/* 8062DD88  38 61 00 0C */	addi r3, r1, 0xc
/* 8062DD8C  4B FF FE D9 */	bl sAdo_Calc_MicPosition_forTrig
/* 8062DD90  A0 81 00 08 */	lhz r4, 8(r1)
/* 8062DD94  7F E3 FB 78 */	mr r3, r31
/* 8062DD98  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062DD9C  4B 9E 37 E9 */	bl Na_PlyWalkSeRoom
/* 8062DDA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062DDA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062DDA8  7C 08 03 A6 */	mtlr r0
/* 8062DDAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8062DDB0  4E 80 00 20 */	blr 
