lbl_8062DDFC:
/* 8062DDFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062DE00  7C 08 02 A6 */	mflr r0
/* 8062DE04  7C 85 23 78 */	mr r5, r4
/* 8062DE08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062DE0C  38 81 00 08 */	addi r4, r1, 8
/* 8062DE10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062DE14  7C 7F 1B 78 */	mr r31, r3
/* 8062DE18  38 61 00 0C */	addi r3, r1, 0xc
/* 8062DE1C  4B FF FE 49 */	bl sAdo_Calc_MicPosition_forTrig
/* 8062DE20  A0 81 00 08 */	lhz r4, 8(r1)
/* 8062DE24  7F E3 FB 78 */	mr r3, r31
/* 8062DE28  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062DE2C  4B 9E 38 ED */	bl Na_NpcWalkSeRoom
/* 8062DE30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062DE34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062DE38  7C 08 03 A6 */	mtlr r0
/* 8062DE3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8062DE40  4E 80 00 20 */	blr 
