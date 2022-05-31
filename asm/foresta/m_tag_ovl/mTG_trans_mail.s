lbl_805F92A4:
/* 805F92A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F92A8  7C 08 02 A6 */	mflr r0
/* 805F92AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F92B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805F92B4  4B AA 1C 15 */	bl func_8009AEC8
/* 805F92B8  7C 7E 1B 78 */	mr r30, r3
/* 805F92BC  38 60 00 03 */	li r3, 3
/* 805F92C0  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 805F92C4  7C 9A 23 78 */	mr r26, r4
/* 805F92C8  7C BF 2B 78 */	mr r31, r5
/* 805F92CC  83 66 09 98 */	lwz r27, 0x998(r6)
/* 805F92D0  88 9B 00 03 */	lbz r4, 3(r27)
/* 805F92D4  38 04 00 01 */	addi r0, r4, 1
/* 805F92D8  98 1B 00 03 */	stb r0, 3(r27)
/* 805F92DC  88 9B 00 03 */	lbz r4, 3(r27)
/* 805F92E0  7C 04 1B D6 */	divw r0, r4, r3
/* 805F92E4  7C 00 19 D6 */	mullw r0, r0, r3
/* 805F92E8  7C 00 20 51 */	subf. r0, r0, r4
/* 805F92EC  40 82 01 00 */	bne lbl_805F93EC
/* 805F92F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F92F4  38 80 00 0A */	li r4, 0xa
/* 805F92F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F92FC  3F 83 00 02 */	addis r28, r3, 2
/* 805F9300  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 805F9304  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 805F9308  4B DC 35 9D */	bl mMl_chk_mail_free_space
/* 805F930C  7C 7D 1B 78 */	mr r29, r3
/* 805F9310  2C 1D FF FF */	cmpwi r29, -1
/* 805F9314  41 82 00 B4 */	beq lbl_805F93C8
/* 805F9318  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805F931C  80 63 09 98 */	lwz r3, 0x998(r3)
/* 805F9320  81 83 00 10 */	lwz r12, 0x10(r3)
/* 805F9324  7D 89 03 A6 */	mtctr r12
/* 805F9328  4E 80 04 21 */	bctrl 
/* 805F932C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F9330  80 1C 61 3C */	lwz r0, 0x613c(r28)
/* 805F9334  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805F9338  1C 83 01 2A */	mulli r4, r3, 0x12a
/* 805F933C  3C 65 00 02 */	addis r3, r5, 2
/* 805F9340  80 A3 61 40 */	lwz r5, 0x6140(r3)
/* 805F9344  1C 7D 01 2A */	mulli r3, r29, 0x12a
/* 805F9348  3B 64 1A 30 */	addi r27, r4, 0x1a30
/* 805F934C  7F 65 DA 14 */	add r27, r5, r27
/* 805F9350  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 805F9354  7F 64 DB 78 */	mr r4, r27
/* 805F9358  7C 60 1A 14 */	add r3, r0, r3
/* 805F935C  4B DC 36 19 */	bl mMl_copy_mail
/* 805F9360  7F 63 DB 78 */	mr r3, r27
/* 805F9364  4B DC 33 9D */	bl mMl_clear_mail
/* 805F9368  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805F936C  80 63 09 98 */	lwz r3, 0x998(r3)
/* 805F9370  81 83 00 10 */	lwz r12, 0x10(r3)
/* 805F9374  7D 89 03 A6 */	mtctr r12
/* 805F9378  4E 80 04 21 */	bctrl 
/* 805F937C  7C 66 1B 78 */	mr r6, r3
/* 805F9380  7F C3 F3 78 */	mr r3, r30
/* 805F9384  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 805F9388  38 9F 00 0C */	addi r4, r31, 0xc
/* 805F938C  54 C5 07 FE */	clrlwi r5, r6, 0x1f
/* 805F9390  7C C0 0E 70 */	srawi r0, r6, 1
/* 805F9394  7C A5 3A 78 */	xor r5, r5, r7
/* 805F9398  7C A7 28 50 */	subf r5, r7, r5
/* 805F939C  7C 00 01 94 */	addze r0, r0
/* 805F93A0  90 BF 00 3C */	stw r5, 0x3c(r31)
/* 805F93A4  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F93A8  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 805F93AC  4B FF 63 05 */	bl mTG_set_hand_pos
/* 805F93B0  38 60 04 46 */	li r3, 0x446
/* 805F93B4  48 03 49 51 */	bl sAdo_SysTrgStart
/* 805F93B8  7F C3 F3 78 */	mr r3, r30
/* 805F93BC  4B FF 81 E1 */	bl mTG_init_tag_data_item_win
/* 805F93C0  38 60 00 01 */	li r3, 1
/* 805F93C4  48 00 00 40 */	b lbl_805F9404
lbl_805F93C8:
/* 805F93C8  88 1B 00 00 */	lbz r0, 0(r27)
/* 805F93CC  28 00 00 01 */	cmplwi r0, 1
/* 805F93D0  40 82 00 1C */	bne lbl_805F93EC
/* 805F93D4  7F C3 F3 78 */	mr r3, r30
/* 805F93D8  7F 44 D3 78 */	mr r4, r26
/* 805F93DC  38 A0 00 00 */	li r5, 0
/* 805F93E0  4B FF 9A 41 */	bl mTG_open_warning_window
/* 805F93E4  38 60 00 01 */	li r3, 1
/* 805F93E8  48 00 00 1C */	b lbl_805F9404
lbl_805F93EC:
/* 805F93EC  88 1B 00 00 */	lbz r0, 0(r27)
/* 805F93F0  28 00 00 01 */	cmplwi r0, 1
/* 805F93F4  40 82 00 0C */	bne lbl_805F9400
/* 805F93F8  38 60 00 01 */	li r3, 1
/* 805F93FC  48 00 00 08 */	b lbl_805F9404
lbl_805F9400:
/* 805F9400  38 60 00 00 */	li r3, 0
lbl_805F9404:
/* 805F9404  39 61 00 20 */	addi r11, r1, 0x20
/* 805F9408  4B AA 1B 0D */	bl func_8009AF14
/* 805F940C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F9410  7C 08 03 A6 */	mtlr r0
/* 805F9414  38 21 00 20 */	addi r1, r1, 0x20
/* 805F9418  4E 80 00 20 */	blr 
