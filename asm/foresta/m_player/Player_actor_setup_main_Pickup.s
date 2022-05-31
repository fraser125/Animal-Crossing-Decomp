lbl_804ED444:
/* 804ED444  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804ED448  7C 08 02 A6 */	mflr r0
/* 804ED44C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804ED450  39 61 00 30 */	addi r11, r1, 0x30
/* 804ED454  4B BA DA 75 */	bl func_8009AEC8
/* 804ED458  83 83 0D 60 */	lwz r28, 0xd60(r3)
/* 804ED45C  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804ED460  A3 E3 0D 64 */	lhz r31, 0xd64(r3)
/* 804ED464  39 05 65 68 */	addi r8, r5, lit_604@l /* 0x80646568@l */
/* 804ED468  83 43 0D 80 */	lwz r26, 0xd80(r3)
/* 804ED46C  3C A0 80 65 */	lis r5, lit_9567@ha /* 0x806484D4@ha */
/* 804ED470  81 23 0D 68 */	lwz r9, 0xd68(r3)
/* 804ED474  38 E5 84 D4 */	addi r7, r5, lit_9567@l /* 0x806484D4@l */
/* 804ED478  80 03 0D 6C */	lwz r0, 0xd6c(r3)
/* 804ED47C  3C C0 80 64 */	lis r6, lit_790@ha /* 0x80646668@ha */
/* 804ED480  C0 46 66 68 */	lfs f2, lit_790@l(r6)  /* 0x80646668@l */
/* 804ED484  7C 7D 1B 78 */	mr r29, r3
/* 804ED488  91 23 0D 18 */	stw r9, 0xd18(r3)
/* 804ED48C  7C 9E 23 78 */	mr r30, r4
/* 804ED490  C0 27 00 00 */	lfs f1, 0(r7)
/* 804ED494  3B 7D 0D 68 */	addi r27, r29, 0xd68
/* 804ED498  90 03 0D 1C */	stw r0, 0xd1c(r3)
/* 804ED49C  38 A1 00 0C */	addi r5, r1, 0xc
/* 804ED4A0  C0 08 00 00 */	lfs f0, 0(r8)
/* 804ED4A4  38 C1 00 08 */	addi r6, r1, 8
/* 804ED4A8  80 03 0D 70 */	lwz r0, 0xd70(r3)
/* 804ED4AC  38 80 00 07 */	li r4, 7
/* 804ED4B0  90 03 0D 20 */	stw r0, 0xd20(r3)
/* 804ED4B4  80 E3 0D 74 */	lwz r7, 0xd74(r3)
/* 804ED4B8  80 03 0D 78 */	lwz r0, 0xd78(r3)
/* 804ED4BC  90 E3 0D 24 */	stw r7, 0xd24(r3)
/* 804ED4C0  90 03 0D 28 */	stw r0, 0xd28(r3)
/* 804ED4C4  80 03 0D 7C */	lwz r0, 0xd7c(r3)
/* 804ED4C8  90 03 0D 2C */	stw r0, 0xd2c(r3)
/* 804ED4CC  93 43 0D 4C */	stw r26, 0xd4c(r3)
/* 804ED4D0  D0 43 0D 3C */	stfs f2, 0xd3c(r3)
/* 804ED4D4  D0 03 0D 40 */	stfs f0, 0xd40(r3)
/* 804ED4D8  B3 E3 0D 44 */	sth r31, 0xd44(r3)
/* 804ED4DC  4B FE CA 85 */	bl Player_actor_SetupItem_Base1
/* 804ED4E0  2C 1A 00 00 */	cmpwi r26, 0
/* 804ED4E4  41 82 00 10 */	beq lbl_804ED4F4
/* 804ED4E8  7F C3 F3 78 */	mr r3, r30
/* 804ED4EC  7F 64 DB 78 */	mr r4, r27
/* 804ED4F0  4B FB 48 B9 */	bl aSIGN_erase_white_sign
lbl_804ED4F4:
/* 804ED4F4  7F 83 E3 78 */	mr r3, r28
/* 804ED4F8  7F E4 FB 78 */	mr r4, r31
/* 804ED4FC  7F 65 DB 78 */	mr r5, r27
/* 804ED500  4B FE 9E A5 */	bl Player_actor_putin_item
/* 804ED504  2C 1C 00 00 */	cmpwi r28, 0
/* 804ED508  41 80 00 10 */	blt lbl_804ED518
/* 804ED50C  38 00 00 00 */	li r0, 0
/* 804ED510  90 1D 0D 48 */	stw r0, 0xd48(r29)
/* 804ED514  48 00 00 24 */	b lbl_804ED538
lbl_804ED518:
/* 804ED518  4B EA D9 A1 */	bl mEv_CheckTitleDemo
/* 804ED51C  2C 03 00 00 */	cmpwi r3, 0
/* 804ED520  40 81 00 10 */	ble lbl_804ED530
/* 804ED524  38 00 00 00 */	li r0, 0
/* 804ED528  90 1D 0D 48 */	stw r0, 0xd48(r29)
/* 804ED52C  48 00 00 0C */	b lbl_804ED538
lbl_804ED530:
/* 804ED530  38 00 00 01 */	li r0, 1
/* 804ED534  90 1D 0D 48 */	stw r0, 0xd48(r29)
lbl_804ED538:
/* 804ED538  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804ED53C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804ED540  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804ED544  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804ED548  C0 25 00 00 */	lfs f1, 0(r5)
/* 804ED54C  3C 60 80 65 */	lis r3, lit_9567@ha /* 0x806484D4@ha */
/* 804ED550  C0 83 84 D4 */	lfs f4, lit_9567@l(r3)  /* 0x806484D4@l */
/* 804ED554  7F A3 EB 78 */	mr r3, r29
/* 804ED558  FC 40 08 90 */	fmr f2, f1
/* 804ED55C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804ED560  7F C4 F3 78 */	mr r4, r30
/* 804ED564  38 A0 00 07 */	li r5, 7
/* 804ED568  38 E0 00 00 */	li r7, 0
/* 804ED56C  39 00 00 02 */	li r8, 2
/* 804ED570  4B FE 92 A1 */	bl Player_actor_InitAnimation_Base2
/* 804ED574  7F A3 EB 78 */	mr r3, r29
/* 804ED578  7F C4 F3 78 */	mr r4, r30
/* 804ED57C  4B FE 83 7D */	bl Player_actor_setup_main_Base
/* 804ED580  28 1F 28 07 */	cmplwi r31, 0x2807
/* 804ED584  40 82 00 0C */	bne lbl_804ED590
/* 804ED588  3C 60 00 10 */	lis r3, 0x10
/* 804ED58C  4B EC 6A 8D */	bl mISL_SetNowPlayerAction
lbl_804ED590:
/* 804ED590  39 61 00 30 */	addi r11, r1, 0x30
/* 804ED594  4B BA D9 81 */	bl func_8009AF14
/* 804ED598  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804ED59C  7C 08 03 A6 */	mtlr r0
/* 804ED5A0  38 21 00 30 */	addi r1, r1, 0x30
/* 804ED5A4  4E 80 00 20 */	blr 
