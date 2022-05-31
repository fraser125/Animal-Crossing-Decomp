lbl_8058B074:
/* 8058B074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B078  7C 08 02 A6 */	mflr r0
/* 8058B07C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058B084  7C 7F 1B 78 */	mr r31, r3
/* 8058B088  4B FF F7 15 */	bl aTMN1_Next_move
/* 8058B08C  A9 1F 09 A2 */	lha r8, 0x9a2(r31)
/* 8058B090  7F E3 FB 78 */	mr r3, r31
/* 8058B094  A9 3F 09 A4 */	lha r9, 0x9a4(r31)
/* 8058B098  38 80 00 04 */	li r4, 4
/* 8058B09C  38 A0 00 03 */	li r5, 3
/* 8058B0A0  38 C0 00 03 */	li r6, 3
/* 8058B0A4  38 E0 00 00 */	li r7, 0
/* 8058B0A8  4B FF F2 11 */	bl aTMN1_set_request_act
/* 8058B0AC  38 00 00 14 */	li r0, 0x14
/* 8058B0B0  B0 1F 09 A0 */	sth r0, 0x9a0(r31)
/* 8058B0B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B0B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058B0BC  7C 08 03 A6 */	mtlr r0
/* 8058B0C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B0C4  4E 80 00 20 */	blr 
