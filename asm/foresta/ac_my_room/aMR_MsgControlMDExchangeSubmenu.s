lbl_80475740:
/* 80475740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80475744  7C 08 02 A6 */	mflr r0
/* 80475748  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047574C  39 61 00 20 */	addi r11, r1, 0x20
/* 80475750  4B C2 57 85 */	bl func_8009AED4
/* 80475754  80 04 1D F8 */	lwz r0, 0x1df8(r4)
/* 80475758  7C 7D 1B 78 */	mr r29, r3
/* 8047575C  2C 00 00 00 */	cmpwi r0, 0
/* 80475760  40 82 00 88 */	bne lbl_804757E8
/* 80475764  83 E4 1F 60 */	lwz r31, 0x1f60(r4)
/* 80475768  28 1F 00 00 */	cmplwi r31, 0
/* 8047576C  41 82 00 68 */	beq lbl_804757D4
/* 80475770  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80475774  28 00 00 00 */	cmplwi r0, 0
/* 80475778  41 82 00 5C */	beq lbl_804757D4
/* 8047577C  4B FF E9 B1 */	bl aMR_GetNowDemoFtr
/* 80475780  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80475784  7C 7E 1B 78 */	mr r30, r3
/* 80475788  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8047578C  38 A0 00 00 */	li r5, 0
/* 80475790  3C 64 00 02 */	addis r3, r4, 2
/* 80475794  A0 9E 08 44 */	lhz r4, 0x844(r30)
/* 80475798  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8047579C  4B F6 B7 6D */	bl mPr_SetFreePossessionItem
/* 804757A0  A0 1F 00 00 */	lhz r0, 0(r31)
/* 804757A4  7F C3 F3 78 */	mr r3, r30
/* 804757A8  B0 1E 08 44 */	sth r0, 0x844(r30)
/* 804757AC  4B FF C6 A5 */	bl aMR_OneMDSwitchOn_TheOtherSwitchOff
/* 804757B0  A0 9E 08 44 */	lhz r4, 0x844(r30)
/* 804757B4  7F A3 EB 78 */	mr r3, r29
/* 804757B8  7F C5 F3 78 */	mr r5, r30
/* 804757BC  38 C0 00 00 */	li r6, 0
/* 804757C0  38 84 D6 80 */	addi r4, r4, -10624
/* 804757C4  4B FF C5 C1 */	bl aMR_ReserveBgm
/* 804757C8  7F A3 EB 78 */	mr r3, r29
/* 804757CC  7F C4 F3 78 */	mr r4, r30
/* 804757D0  4B FF C4 8D */	bl aMR_ChangeMDBgm
lbl_804757D4:
/* 804757D4  7F A3 EB 78 */	mr r3, r29
/* 804757D8  38 80 00 05 */	li r4, 5
/* 804757DC  4B FF E9 6D */	bl aMR_ChangeDemoFtrStatus
/* 804757E0  38 00 00 22 */	li r0, 0x22
/* 804757E4  B0 1D 03 EE */	sth r0, 0x3ee(r29)
lbl_804757E8:
/* 804757E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804757EC  4B C2 57 35 */	bl func_8009AF20
/* 804757F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804757F4  7C 08 03 A6 */	mtlr r0
/* 804757F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804757FC  4E 80 00 20 */	blr 
