lbl_80475524:
/* 80475524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475528  7C 08 02 A6 */	mflr r0
/* 8047552C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475534  7C 9F 23 78 */	mr r31, r4
/* 80475538  93 C1 00 08 */	stw r30, 8(r1)
/* 8047553C  7C 7E 1B 78 */	mr r30, r3
/* 80475540  80 04 1D F8 */	lwz r0, 0x1df8(r4)
/* 80475544  2C 00 00 00 */	cmpwi r0, 0
/* 80475548  40 82 00 70 */	bne lbl_804755B8
/* 8047554C  4B FF EB E1 */	bl aMR_GetNowDemoFtr
/* 80475550  80 9F 1F 60 */	lwz r4, 0x1f60(r31)
/* 80475554  7C 7F 1B 78 */	mr r31, r3
/* 80475558  28 04 00 00 */	cmplwi r4, 0
/* 8047555C  41 82 00 40 */	beq lbl_8047559C
/* 80475560  A0 04 00 00 */	lhz r0, 0(r4)
/* 80475564  28 00 00 00 */	cmplwi r0, 0
/* 80475568  41 82 00 34 */	beq lbl_8047559C
/* 8047556C  B0 1F 08 44 */	sth r0, 0x844(r31)
/* 80475570  4B FF C8 E1 */	bl aMR_OneMDSwitchOn_TheOtherSwitchOff
/* 80475574  A0 9F 08 44 */	lhz r4, 0x844(r31)
/* 80475578  7F C3 F3 78 */	mr r3, r30
/* 8047557C  7F E5 FB 78 */	mr r5, r31
/* 80475580  38 C0 00 00 */	li r6, 0
/* 80475584  38 84 D6 80 */	addi r4, r4, -10624
/* 80475588  4B FF C7 FD */	bl aMR_ReserveBgm
/* 8047558C  7F C3 F3 78 */	mr r3, r30
/* 80475590  7F E4 FB 78 */	mr r4, r31
/* 80475594  4B FF C6 C9 */	bl aMR_ChangeMDBgm
/* 80475598  48 00 00 0C */	b lbl_804755A4
lbl_8047559C:
/* 8047559C  7F C3 F3 78 */	mr r3, r30
/* 804755A0  4B FF FE 15 */	bl aMR_DeleteDirectedMD
lbl_804755A4:
/* 804755A4  7F C3 F3 78 */	mr r3, r30
/* 804755A8  38 80 00 05 */	li r4, 5
/* 804755AC  4B FF EB 9D */	bl aMR_ChangeDemoFtrStatus
/* 804755B0  38 00 00 22 */	li r0, 0x22
/* 804755B4  B0 1E 03 EE */	sth r0, 0x3ee(r30)
lbl_804755B8:
/* 804755B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804755BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804755C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804755C4  7C 08 03 A6 */	mtlr r0
/* 804755C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804755CC  4E 80 00 20 */	blr 
