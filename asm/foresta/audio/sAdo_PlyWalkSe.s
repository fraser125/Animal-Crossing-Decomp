lbl_8062DD24:
/* 8062DD24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062DD28  7C 08 02 A6 */	mflr r0
/* 8062DD2C  7C 85 23 78 */	mr r5, r4
/* 8062DD30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062DD34  38 81 00 08 */	addi r4, r1, 8
/* 8062DD38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062DD3C  7C 7F 1B 78 */	mr r31, r3
/* 8062DD40  38 61 00 0C */	addi r3, r1, 0xc
/* 8062DD44  4B FF FF 21 */	bl sAdo_Calc_MicPosition_forTrig
/* 8062DD48  A0 81 00 08 */	lhz r4, 8(r1)
/* 8062DD4C  7F E3 FB 78 */	mr r3, r31
/* 8062DD50  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062DD54  4B 9E 37 89 */	bl Na_PlyWalkSe
/* 8062DD58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062DD5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062DD60  7C 08 03 A6 */	mtlr r0
/* 8062DD64  38 21 00 20 */	addi r1, r1, 0x20
/* 8062DD68  4E 80 00 20 */	blr 
