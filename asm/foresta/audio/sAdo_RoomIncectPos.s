lbl_8062E6FC:
/* 8062E6FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062E700  7C 08 02 A6 */	mflr r0
/* 8062E704  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062E708  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062E70C  7C 9F 23 78 */	mr r31, r4
/* 8062E710  38 81 00 08 */	addi r4, r1, 8
/* 8062E714  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8062E718  7C 7E 1B 78 */	mr r30, r3
/* 8062E71C  38 61 00 0C */	addi r3, r1, 0xc
/* 8062E720  4B FF F5 65 */	bl sAdo_Calc_MicPosition_forLevel
/* 8062E724  A0 A1 00 08 */	lhz r5, 8(r1)
/* 8062E728  7F C3 F3 78 */	mr r3, r30
/* 8062E72C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062E730  7F E4 FB 78 */	mr r4, r31
/* 8062E734  4B 9E 65 E5 */	bl Na_RoomIncectPos
/* 8062E738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062E73C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062E740  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8062E744  7C 08 03 A6 */	mtlr r0
/* 8062E748  38 21 00 20 */	addi r1, r1, 0x20
/* 8062E74C  4E 80 00 20 */	blr 
