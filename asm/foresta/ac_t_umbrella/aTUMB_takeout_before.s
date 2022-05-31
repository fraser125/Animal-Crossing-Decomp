lbl_804AA090:
/* 804AA090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA094  7C 08 02 A6 */	mflr r0
/* 804AA098  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA09C  80 03 01 BC */	lwz r0, 0x1bc(r3)
/* 804AA0A0  2C 00 00 01 */	cmpwi r0, 1
/* 804AA0A4  40 82 00 0C */	bne lbl_804AA0B0
/* 804AA0A8  38 80 00 01 */	li r4, 1
/* 804AA0AC  48 00 00 35 */	bl aTUMB_setupAction
lbl_804AA0B0:
/* 804AA0B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA0B4  7C 08 03 A6 */	mtlr r0
/* 804AA0B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA0BC  4E 80 00 20 */	blr 
