lbl_804756A0:
/* 804756A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804756A4  7C 08 02 A6 */	mflr r0
/* 804756A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804756AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804756B0  7C 9F 23 78 */	mr r31, r4
/* 804756B4  93 C1 00 08 */	stw r30, 8(r1)
/* 804756B8  7C 7E 1B 78 */	mr r30, r3
/* 804756BC  80 04 1D F8 */	lwz r0, 0x1df8(r4)
/* 804756C0  2C 00 00 00 */	cmpwi r0, 0
/* 804756C4  40 82 00 64 */	bne lbl_80475728
/* 804756C8  4B FF EA 65 */	bl aMR_GetNowDemoFtr
/* 804756CC  80 9F 1F 60 */	lwz r4, 0x1f60(r31)
/* 804756D0  7C 7F 1B 78 */	mr r31, r3
/* 804756D4  28 04 00 00 */	cmplwi r4, 0
/* 804756D8  41 82 00 3C */	beq lbl_80475714
/* 804756DC  A0 04 00 00 */	lhz r0, 0(r4)
/* 804756E0  28 00 00 00 */	cmplwi r0, 0
/* 804756E4  41 82 00 30 */	beq lbl_80475714
/* 804756E8  B0 1F 08 44 */	sth r0, 0x844(r31)
/* 804756EC  4B FF C7 65 */	bl aMR_OneMDSwitchOn_TheOtherSwitchOff
/* 804756F0  A0 9F 08 44 */	lhz r4, 0x844(r31)
/* 804756F4  7F C3 F3 78 */	mr r3, r30
/* 804756F8  7F E5 FB 78 */	mr r5, r31
/* 804756FC  38 C0 00 00 */	li r6, 0
/* 80475700  38 84 D6 80 */	addi r4, r4, -10624
/* 80475704  4B FF C6 81 */	bl aMR_ReserveBgm
/* 80475708  7F C3 F3 78 */	mr r3, r30
/* 8047570C  7F E4 FB 78 */	mr r4, r31
/* 80475710  4B FF C5 4D */	bl aMR_ChangeMDBgm
lbl_80475714:
/* 80475714  7F C3 F3 78 */	mr r3, r30
/* 80475718  38 80 00 05 */	li r4, 5
/* 8047571C  4B FF EA 2D */	bl aMR_ChangeDemoFtrStatus
/* 80475720  38 00 00 22 */	li r0, 0x22
/* 80475724  B0 1E 03 EE */	sth r0, 0x3ee(r30)
lbl_80475728:
/* 80475728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047572C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475730  83 C1 00 08 */	lwz r30, 8(r1)
/* 80475734  7C 08 03 A6 */	mtlr r0
/* 80475738  38 21 00 10 */	addi r1, r1, 0x10
/* 8047573C  4E 80 00 20 */	blr 
