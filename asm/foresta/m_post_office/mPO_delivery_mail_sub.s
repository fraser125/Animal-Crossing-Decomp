lbl_803DF4C8:
/* 803DF4C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DF4CC  7C 08 02 A6 */	mflr r0
/* 803DF4D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DF4D4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF4D8  4B CB B9 F5 */	bl func_8009AECC
/* 803DF4DC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DF4E0  7C 7B 1B 78 */	mr r27, r3
/* 803DF4E4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803DF4E8  3B 80 00 01 */	li r28, 1
/* 803DF4EC  3F C3 00 02 */	addis r30, r3, 2
/* 803DF4F0  3B A0 00 00 */	li r29, 0
/* 803DF4F4  7F DF F3 78 */	mr r31, r30
/* 803DF4F8  3B DE 06 9C */	addi r30, r30, 0x69c
lbl_803DF4FC:
/* 803DF4FC  7F C3 F3 78 */	mr r3, r30
/* 803DF500  4B FD D2 A1 */	bl mMl_check_not_used_mail
/* 803DF504  2C 03 00 00 */	cmpwi r3, 0
/* 803DF508  40 82 00 78 */	bne lbl_803DF580
/* 803DF50C  7F C3 F3 78 */	mr r3, r30
/* 803DF510  4B FD D5 D5 */	bl mMl_hunt_for_send_address
/* 803DF514  2C 03 FF FF */	cmpwi r3, -1
/* 803DF518  41 82 00 44 */	beq lbl_803DF55C
/* 803DF51C  2C 1B FF FF */	cmpwi r27, -1
/* 803DF520  41 82 00 0C */	beq lbl_803DF52C
/* 803DF524  7C 03 D8 00 */	cmpw r3, r27
/* 803DF528  40 82 00 58 */	bne lbl_803DF580
lbl_803DF52C:
/* 803DF52C  7F C4 F3 78 */	mr r4, r30
/* 803DF530  4B FF FB E9 */	bl mPO_copy_contents
/* 803DF534  2C 03 00 01 */	cmpwi r3, 1
/* 803DF538  40 82 00 1C */	bne lbl_803DF554
/* 803DF53C  A8 9F 06 94 */	lha r4, 0x694(r31)
/* 803DF540  7F C3 F3 78 */	mr r3, r30
/* 803DF544  38 04 FF FF */	addi r0, r4, -1
/* 803DF548  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 803DF54C  4B FD D1 B5 */	bl mMl_clear_mail
/* 803DF550  48 00 00 30 */	b lbl_803DF580
lbl_803DF554:
/* 803DF554  3B 80 00 00 */	li r28, 0
/* 803DF558  48 00 00 28 */	b lbl_803DF580
lbl_803DF55C:
/* 803DF55C  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 803DF560  2C 00 00 00 */	cmpwi r0, 0
/* 803DF564  41 82 00 08 */	beq lbl_803DF56C
/* 803DF568  48 00 00 10 */	b lbl_803DF578
lbl_803DF56C:
/* 803DF56C  A8 7F 06 94 */	lha r3, 0x694(r31)
/* 803DF570  38 03 FF FF */	addi r0, r3, -1
/* 803DF574  B0 1F 06 94 */	sth r0, 0x694(r31)
lbl_803DF578:
/* 803DF578  7F C3 F3 78 */	mr r3, r30
/* 803DF57C  4B FD D1 85 */	bl mMl_clear_mail
lbl_803DF580:
/* 803DF580  3B BD 00 01 */	addi r29, r29, 1
/* 803DF584  3B DE 01 2A */	addi r30, r30, 0x12a
/* 803DF588  2C 1D 00 05 */	cmpwi r29, 5
/* 803DF58C  41 80 FF 70 */	blt lbl_803DF4FC
/* 803DF590  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF594  38 00 00 00 */	li r0, 0
/* 803DF598  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803DF59C  7F 83 E3 78 */	mr r3, r28
/* 803DF5A0  3C 84 00 02 */	addis r4, r4, 2
/* 803DF5A4  B0 04 06 96 */	sth r0, 0x696(r4)
/* 803DF5A8  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF5AC  4B CB B9 6D */	bl func_8009AF18
/* 803DF5B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DF5B4  7C 08 03 A6 */	mtlr r0
/* 803DF5B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803DF5BC  4E 80 00 20 */	blr 
