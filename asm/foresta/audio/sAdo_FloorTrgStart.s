lbl_8062E070:
/* 8062E070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062E074  7C 08 02 A6 */	mflr r0
/* 8062E078  7C 85 23 78 */	mr r5, r4
/* 8062E07C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062E080  38 81 00 08 */	addi r4, r1, 8
/* 8062E084  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062E088  7C 7F 1B 78 */	mr r31, r3
/* 8062E08C  38 61 00 0C */	addi r3, r1, 0xc
/* 8062E090  4B FF FB D5 */	bl sAdo_Calc_MicPosition_forTrig
/* 8062E094  A0 81 00 08 */	lhz r4, 8(r1)
/* 8062E098  7F E3 FB 78 */	mr r3, r31
/* 8062E09C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062E0A0  4B 9E 59 E9 */	bl Na_FloorTrgStart
/* 8062E0A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062E0A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062E0AC  7C 08 03 A6 */	mtlr r0
/* 8062E0B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8062E0B4  4E 80 00 20 */	blr 
