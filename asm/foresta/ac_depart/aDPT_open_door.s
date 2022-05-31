lbl_805AD08C:
/* 805AD08C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AD090  7C 08 02 A6 */	mflr r0
/* 805AD094  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AD098  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805AD09C  2C 00 00 01 */	cmpwi r0, 1
/* 805AD0A0  40 82 00 0C */	bne lbl_805AD0AC
/* 805AD0A4  38 80 00 01 */	li r4, 1
/* 805AD0A8  48 00 00 91 */	bl aDPT_setup_action
lbl_805AD0AC:
/* 805AD0AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AD0B0  7C 08 03 A6 */	mtlr r0
/* 805AD0B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805AD0B8  4E 80 00 20 */	blr 
