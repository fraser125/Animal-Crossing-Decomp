lbl_805BB078:
/* 805BB078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BB07C  7C 08 02 A6 */	mflr r0
/* 805BB080  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BB084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BB088  7C 9F 23 78 */	mr r31, r4
/* 805BB08C  93 C1 00 08 */	stw r30, 8(r1)
/* 805BB090  7C 7E 1B 78 */	mr r30, r3
/* 805BB094  7F C4 F3 78 */	mr r4, r30
/* 805BB098  38 60 00 07 */	li r3, 7
/* 805BB09C  4B DD F1 C9 */	bl mDemo_Check
/* 805BB0A0  2C 03 00 00 */	cmpwi r3, 0
/* 805BB0A4  40 82 00 14 */	bne lbl_805BB0B8
/* 805BB0A8  7F C3 F3 78 */	mr r3, r30
/* 805BB0AC  7F E4 FB 78 */	mr r4, r31
/* 805BB0B0  38 A0 00 00 */	li r5, 0
/* 805BB0B4  48 00 00 1D */	bl aSHR_setup_action
lbl_805BB0B8:
/* 805BB0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BB0BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BB0C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BB0C4  7C 08 03 A6 */	mtlr r0
/* 805BB0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BB0CC  4E 80 00 20 */	blr 
