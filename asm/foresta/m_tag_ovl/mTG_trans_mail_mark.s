lbl_805F912C:
/* 805F912C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F9130  7C 08 02 A6 */	mflr r0
/* 805F9134  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F9138  39 61 00 20 */	addi r11, r1, 0x20
/* 805F913C  4B AA 1D 91 */	bl func_8009AECC
/* 805F9140  7C 7C 1B 78 */	mr r28, r3
/* 805F9144  38 60 00 03 */	li r3, 3
/* 805F9148  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805F914C  7C BD 2B 78 */	mr r29, r5
/* 805F9150  83 E4 09 98 */	lwz r31, 0x998(r4)
/* 805F9154  88 9F 00 03 */	lbz r4, 3(r31)
/* 805F9158  38 04 00 01 */	addi r0, r4, 1
/* 805F915C  98 1F 00 03 */	stb r0, 3(r31)
/* 805F9160  88 9F 00 03 */	lbz r4, 3(r31)
/* 805F9164  7C 04 1B D6 */	divw r0, r4, r3
/* 805F9168  7C 00 19 D6 */	mullw r0, r0, r3
/* 805F916C  7C 00 20 51 */	subf. r0, r0, r4
/* 805F9170  40 82 01 0C */	bne lbl_805F927C
/* 805F9174  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F9178  38 80 00 0A */	li r4, 0xa
/* 805F917C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F9180  3F 63 00 02 */	addis r27, r3, 2
/* 805F9184  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 805F9188  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 805F918C  4B DC 37 19 */	bl mMl_chk_mail_free_space
/* 805F9190  2C 03 FF FF */	cmpwi r3, -1
/* 805F9194  41 82 00 D4 */	beq lbl_805F9268
/* 805F9198  38 00 00 0A */	li r0, 0xa
/* 805F919C  3B C0 00 00 */	li r30, 0
/* 805F91A0  38 C0 00 09 */	li r6, 9
/* 805F91A4  38 80 00 01 */	li r4, 1
/* 805F91A8  7C 09 03 A6 */	mtctr r0
lbl_805F91AC:
/* 805F91AC  A0 BF 00 08 */	lhz r5, 8(r31)
/* 805F91B0  7C 80 30 30 */	slw r0, r4, r6
/* 805F91B4  7C A0 00 39 */	and. r0, r5, r0
/* 805F91B8  41 82 00 0C */	beq lbl_805F91C4
/* 805F91BC  7C DE 33 78 */	mr r30, r6
/* 805F91C0  48 00 00 0C */	b lbl_805F91CC
lbl_805F91C4:
/* 805F91C4  38 C6 FF FF */	addi r6, r6, -1
/* 805F91C8  42 00 FF E4 */	bdnz lbl_805F91AC
lbl_805F91CC:
/* 805F91CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F91D0  80 1B 61 3C */	lwz r0, 0x613c(r27)
/* 805F91D4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805F91D8  1C 9E 01 2A */	mulli r4, r30, 0x12a
/* 805F91DC  3C A5 00 02 */	addis r5, r5, 2
/* 805F91E0  80 A5 61 40 */	lwz r5, 0x6140(r5)
/* 805F91E4  1C 63 01 2A */	mulli r3, r3, 0x12a
/* 805F91E8  3B 64 1A 30 */	addi r27, r4, 0x1a30
/* 805F91EC  7F 65 DA 14 */	add r27, r5, r27
/* 805F91F0  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 805F91F4  7F 64 DB 78 */	mr r4, r27
/* 805F91F8  7C 60 1A 14 */	add r3, r0, r3
/* 805F91FC  4B DC 37 79 */	bl mMl_copy_mail
/* 805F9200  7F 63 DB 78 */	mr r3, r27
/* 805F9204  4B DC 34 FD */	bl mMl_clear_mail
/* 805F9208  57 C4 0F FE */	srwi r4, r30, 0x1f
/* 805F920C  57 C0 07 FE */	clrlwi r0, r30, 0x1f
/* 805F9210  7C 03 22 78 */	xor r3, r0, r4
/* 805F9214  7F C0 0E 70 */	srawi r0, r30, 1
/* 805F9218  7C 84 18 50 */	subf r4, r4, r3
/* 805F921C  7F 83 E3 78 */	mr r3, r28
/* 805F9220  90 9D 00 3C */	stw r4, 0x3c(r29)
/* 805F9224  7C 00 01 94 */	addze r0, r0
/* 805F9228  7F C6 F3 78 */	mr r6, r30
/* 805F922C  38 9D 00 0C */	addi r4, r29, 0xc
/* 805F9230  90 1D 00 40 */	stw r0, 0x40(r29)
/* 805F9234  80 BD 00 38 */	lwz r5, 0x38(r29)
/* 805F9238  4B FF 64 79 */	bl mTG_set_hand_pos
/* 805F923C  38 60 04 46 */	li r3, 0x446
/* 805F9240  48 03 4A C5 */	bl sAdo_SysTrgStart
/* 805F9244  38 00 00 01 */	li r0, 1
/* 805F9248  A0 9F 00 08 */	lhz r4, 8(r31)
/* 805F924C  7C 00 F0 30 */	slw r0, r0, r30
/* 805F9250  7F 83 E3 78 */	mr r3, r28
/* 805F9254  7C 80 00 78 */	andc r0, r4, r0
/* 805F9258  B0 1F 00 08 */	sth r0, 8(r31)
/* 805F925C  4B FF 83 41 */	bl mTG_init_tag_data_item_win
/* 805F9260  38 60 00 01 */	li r3, 1
/* 805F9264  48 00 00 28 */	b lbl_805F928C
lbl_805F9268:
/* 805F9268  38 00 00 00 */	li r0, 0
/* 805F926C  38 60 00 01 */	li r3, 1
/* 805F9270  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805F9274  B0 1F 00 08 */	sth r0, 8(r31)
/* 805F9278  48 00 00 14 */	b lbl_805F928C
lbl_805F927C:
/* 805F927C  88 1F 00 00 */	lbz r0, 0(r31)
/* 805F9280  20 00 00 01 */	subfic r0, r0, 1
/* 805F9284  7C 00 00 34 */	cntlzw r0, r0
/* 805F9288  54 03 D9 7E */	srwi r3, r0, 5
lbl_805F928C:
/* 805F928C  39 61 00 20 */	addi r11, r1, 0x20
/* 805F9290  4B AA 1C 89 */	bl func_8009AF18
/* 805F9294  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F9298  7C 08 03 A6 */	mtlr r0
/* 805F929C  38 21 00 20 */	addi r1, r1, 0x20
/* 805F92A0  4E 80 00 20 */	blr 
