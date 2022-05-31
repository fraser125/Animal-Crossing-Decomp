lbl_8062DFA8:
/* 8062DFA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062DFAC  7C 08 02 A6 */	mflr r0
/* 8062DFB0  7C 85 23 78 */	mr r5, r4
/* 8062DFB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062DFB8  38 81 00 08 */	addi r4, r1, 8
/* 8062DFBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062DFC0  7C 7F 1B 78 */	mr r31, r3
/* 8062DFC4  38 61 00 0C */	addi r3, r1, 0xc
/* 8062DFC8  4B FF FC 9D */	bl sAdo_Calc_MicPosition_forTrig
/* 8062DFCC  A0 81 00 08 */	lhz r4, 8(r1)
/* 8062DFD0  7F E3 FB 78 */	mr r3, r31
/* 8062DFD4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062DFD8  4B 9E 58 65 */	bl Na_OngenTrgStart
/* 8062DFDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062DFE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062DFE4  7C 08 03 A6 */	mtlr r0
/* 8062DFE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8062DFEC  4E 80 00 20 */	blr 
