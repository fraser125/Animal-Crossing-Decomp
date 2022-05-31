lbl_804F7140:
/* 804F7140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7144  7C 08 02 A6 */	mflr r0
/* 804F7148  2C 05 00 00 */	cmpwi r5, 0
/* 804F714C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F7150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F7154  7C 9F 23 78 */	mr r31, r4
/* 804F7158  93 C1 00 08 */	stw r30, 8(r1)
/* 804F715C  7C 7E 1B 78 */	mr r30, r3
/* 804F7160  41 82 00 6C */	beq lbl_804F71CC
/* 804F7164  80 1E 0D 20 */	lwz r0, 0xd20(r30)
/* 804F7168  2C 00 00 00 */	cmpwi r0, 0
/* 804F716C  41 82 00 38 */	beq lbl_804F71A4
/* 804F7170  80 7E 0F 30 */	lwz r3, 0xf30(r30)
/* 804F7174  81 83 02 14 */	lwz r12, 0x214(r3)
/* 804F7178  7D 89 03 A6 */	mtctr r12
/* 804F717C  4E 80 04 21 */	bctrl 
/* 804F7180  7C 60 1B 78 */	mr r0, r3
/* 804F7184  A9 1E 0D 1C */	lha r8, 0xd1c(r30)
/* 804F7188  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 804F718C  38 80 00 01 */	li r4, 1
/* 804F7190  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 804F7194  38 A0 00 0D */	li r5, 0xd
/* 804F7198  38 E0 00 00 */	li r7, 0
/* 804F719C  4B EF 85 8D */	bl mSM_open_submenu_new2
/* 804F71A0  48 00 00 2C */	b lbl_804F71CC
lbl_804F71A4:
/* 804F71A4  4B FD E1 C9 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F71A8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F71AC  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F71B0  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F71B4  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F71B8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F71BC  7F E3 FB 78 */	mr r3, r31
/* 804F71C0  38 80 00 00 */	li r4, 0
/* 804F71C4  38 A0 00 01 */	li r5, 1
/* 804F71C8  4B FE EA 35 */	bl func_804E5BFC
lbl_804F71CC:
/* 804F71CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F71D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F71D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F71D8  7C 08 03 A6 */	mtlr r0
/* 804F71DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F71E0  4E 80 00 20 */	blr 
