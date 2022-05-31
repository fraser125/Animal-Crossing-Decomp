lbl_804ED828:
/* 804ED828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ED82C  7C 08 02 A6 */	mflr r0
/* 804ED830  2C 05 00 00 */	cmpwi r5, 0
/* 804ED834  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ED838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ED83C  93 C1 00 08 */	stw r30, 8(r1)
/* 804ED840  7C 9E 23 78 */	mr r30, r4
/* 804ED844  41 82 00 84 */	beq lbl_804ED8C8
/* 804ED848  3B E3 0D 18 */	addi r31, r3, 0xd18
/* 804ED84C  80 03 0D 48 */	lwz r0, 0xd48(r3)
/* 804ED850  2C 00 00 00 */	cmpwi r0, 0
/* 804ED854  41 82 00 1C */	beq lbl_804ED870
/* 804ED858  A0 BF 00 2C */	lhz r5, 0x2c(r31)
/* 804ED85C  7F C3 F3 78 */	mr r3, r30
/* 804ED860  7F E4 FB 78 */	mr r4, r31
/* 804ED864  38 C0 00 15 */	li r6, 0x15
/* 804ED868  48 00 11 85 */	bl func_804EE9EC
/* 804ED86C  48 00 00 5C */	b lbl_804ED8C8
lbl_804ED870:
/* 804ED870  4B FE 7A FD */	bl Player_actor_SettleRequestMainIndexPriority
/* 804ED874  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 804ED878  28 00 22 3B */	cmplwi r0, 0x223b
/* 804ED87C  40 82 00 28 */	bne lbl_804ED8A4
/* 804ED880  38 60 00 03 */	li r3, 3
/* 804ED884  4B EF 0E D9 */	bl mPlib_Check_golden_item_get_demo_end
/* 804ED888  2C 03 00 00 */	cmpwi r3, 0
/* 804ED88C  40 82 00 18 */	bne lbl_804ED8A4
/* 804ED890  7F C3 F3 78 */	mr r3, r30
/* 804ED894  38 80 00 03 */	li r4, 3
/* 804ED898  38 A0 00 22 */	li r5, 0x22
/* 804ED89C  48 01 AC 01 */	bl Player_actor_request_main_demo_get_golden_item_all
/* 804ED8A0  48 00 00 28 */	b lbl_804ED8C8
lbl_804ED8A4:
/* 804ED8A4  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804ED8A8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804ED8AC  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804ED8B0  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804ED8B4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804ED8B8  7F C3 F3 78 */	mr r3, r30
/* 804ED8BC  38 80 00 00 */	li r4, 0
/* 804ED8C0  38 A0 00 01 */	li r5, 1
/* 804ED8C4  4B FF 83 39 */	bl func_804E5BFC
lbl_804ED8C8:
/* 804ED8C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ED8CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ED8D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804ED8D4  7C 08 03 A6 */	mtlr r0
/* 804ED8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804ED8DC  4E 80 00 20 */	blr 
