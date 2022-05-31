lbl_805AF594:
/* 805AF594  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805AF598  7C 08 02 A6 */	mflr r0
/* 805AF59C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AF5A0  39 61 00 40 */	addi r11, r1, 0x40
/* 805AF5A4  4B AE B9 31 */	bl func_8009AED4
/* 805AF5A8  7C 9F 23 78 */	mr r31, r4
/* 805AF5AC  7C 7E 1B 78 */	mr r30, r3
/* 805AF5B0  7F E3 FB 78 */	mr r3, r31
/* 805AF5B4  4B E2 A0 8D */	bl get_player_actor_withoutCheck
/* 805AF5B8  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805AF5BC  7C 7D 1B 78 */	mr r29, r3
/* 805AF5C0  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805AF5C4  38 61 00 14 */	addi r3, r1, 0x14
/* 805AF5C8  38 81 00 10 */	addi r4, r1, 0x10
/* 805AF5CC  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805AF5D0  38 A1 00 24 */	addi r5, r1, 0x24
/* 805AF5D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 805AF5D8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805AF5DC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805AF5E0  4B DF 61 81 */	bl mFI_Wpos2BlockNum
/* 805AF5E4  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 805AF5E8  38 61 00 0C */	addi r3, r1, 0xc
/* 805AF5EC  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805AF5F0  38 81 00 08 */	addi r4, r1, 8
/* 805AF5F4  38 A1 00 18 */	addi r5, r1, 0x18
/* 805AF5F8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805AF5FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805AF600  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805AF604  90 01 00 20 */	stw r0, 0x20(r1)
/* 805AF608  4B DF 61 59 */	bl mFI_Wpos2BlockNum
/* 805AF60C  7F A4 EB 78 */	mr r4, r29
/* 805AF610  38 60 00 01 */	li r3, 1
/* 805AF614  4B DE AC 51 */	bl mDemo_Check
/* 805AF618  2C 03 00 00 */	cmpwi r3, 0
/* 805AF61C  40 82 00 58 */	bne lbl_805AF674
/* 805AF620  7F A4 EB 78 */	mr r4, r29
/* 805AF624  38 60 00 05 */	li r3, 5
/* 805AF628  4B DE AC 3D */	bl mDemo_Check
/* 805AF62C  2C 03 00 00 */	cmpwi r3, 0
/* 805AF630  40 82 00 44 */	bne lbl_805AF674
/* 805AF634  7F A4 EB 78 */	mr r4, r29
/* 805AF638  38 60 00 10 */	li r3, 0x10
/* 805AF63C  4B DE AC 29 */	bl mDemo_Check
/* 805AF640  2C 03 00 00 */	cmpwi r3, 0
/* 805AF644  40 82 00 30 */	bne lbl_805AF674
/* 805AF648  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805AF64C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805AF650  7C 03 00 00 */	cmpw r3, r0
/* 805AF654  40 82 00 14 */	bne lbl_805AF668
/* 805AF658  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805AF65C  80 01 00 08 */	lwz r0, 8(r1)
/* 805AF660  7C 03 00 00 */	cmpw r3, r0
/* 805AF664  41 82 00 10 */	beq lbl_805AF674
lbl_805AF668:
/* 805AF668  7F C3 F3 78 */	mr r3, r30
/* 805AF66C  4B DC 4D D5 */	bl Actor_delete
/* 805AF670  48 00 00 18 */	b lbl_805AF688
lbl_805AF674:
/* 805AF674  81 9E 02 A0 */	lwz r12, 0x2a0(r30)
/* 805AF678  7F C3 F3 78 */	mr r3, r30
/* 805AF67C  7F E4 FB 78 */	mr r4, r31
/* 805AF680  7D 89 03 A6 */	mtctr r12
/* 805AF684  4E 80 04 21 */	bctrl 
lbl_805AF688:
/* 805AF688  39 61 00 40 */	addi r11, r1, 0x40
/* 805AF68C  4B AE B8 95 */	bl func_8009AF20
/* 805AF690  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AF694  7C 08 03 A6 */	mtlr r0
/* 805AF698  38 21 00 40 */	addi r1, r1, 0x40
/* 805AF69C  4E 80 00 20 */	blr 
