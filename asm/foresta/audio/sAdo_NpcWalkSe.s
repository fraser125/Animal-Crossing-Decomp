lbl_8062DDB4:
/* 8062DDB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062DDB8  7C 08 02 A6 */	mflr r0
/* 8062DDBC  7C 85 23 78 */	mr r5, r4
/* 8062DDC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062DDC4  38 81 00 08 */	addi r4, r1, 8
/* 8062DDC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062DDCC  7C 7F 1B 78 */	mr r31, r3
/* 8062DDD0  38 61 00 0C */	addi r3, r1, 0xc
/* 8062DDD4  4B FF FE 91 */	bl sAdo_Calc_MicPosition_forTrig
/* 8062DDD8  A0 81 00 08 */	lhz r4, 8(r1)
/* 8062DDDC  7F E3 FB 78 */	mr r3, r31
/* 8062DDE0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062DDE4  4B 9E 38 B9 */	bl Na_NpcWalkSe
/* 8062DDE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062DDEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062DDF0  7C 08 03 A6 */	mtlr r0
/* 8062DDF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8062DDF8  4E 80 00 20 */	blr 
