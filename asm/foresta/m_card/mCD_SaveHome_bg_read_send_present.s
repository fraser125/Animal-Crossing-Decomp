lbl_803FC08C:
/* 803FC08C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FC090  7C 08 02 A6 */	mflr r0
/* 803FC094  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FC098  39 61 00 30 */	addi r11, r1, 0x30
/* 803FC09C  4B C9 EE 25 */	bl func_8009AEC0
/* 803FC0A0  7C 7C 1B 78 */	mr r28, r3
/* 803FC0A4  3C 60 80 66 */	lis r3, data_8065E370@ha /* 0x8065E370@ha */
/* 803FC0A8  80 1C 00 D0 */	lwz r0, 0xd0(r28)
/* 803FC0AC  3B 63 E3 70 */	addi r27, r3, data_8065E370@l /* 0x8065E370@l */
/* 803FC0B0  83 FC 00 0C */	lwz r31, 0xc(r28)
/* 803FC0B4  7C 9D 23 78 */	mr r29, r4
/* 803FC0B8  28 00 00 00 */	cmplwi r0, 0
/* 803FC0BC  3B 5B 03 98 */	addi r26, r27, 0x398
/* 803FC0C0  3B C0 00 00 */	li r30, 0
/* 803FC0C4  3B 00 00 00 */	li r24, 0
/* 803FC0C8  41 82 02 0C */	beq lbl_803FC2D4
/* 803FC0CC  80 1C 01 64 */	lwz r0, 0x164(r28)
/* 803FC0D0  28 00 00 00 */	cmplwi r0, 0
/* 803FC0D4  41 82 02 00 */	beq lbl_803FC2D4
/* 803FC0D8  28 1F 00 00 */	cmplwi r31, 0
/* 803FC0DC  41 82 01 F8 */	beq lbl_803FC2D4
/* 803FC0E0  38 00 FF FF */	li r0, -1
/* 803FC0E4  38 7C 11 BC */	addi r3, r28, 0x11bc
/* 803FC0E8  90 1C 00 00 */	stw r0, 0(r28)
/* 803FC0EC  38 9D 00 08 */	addi r4, r29, 8
/* 803FC0F0  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 803FC0F4  1C C5 00 94 */	mulli r6, r5, 0x94
/* 803FC0F8  3B 26 00 54 */	addi r25, r6, 0x54
/* 803FC0FC  7F 3C CA 14 */	add r25, r28, r25
/* 803FC100  80 F9 00 7C */	lwz r7, 0x7c(r25)
/* 803FC104  38 D9 00 74 */	addi r6, r25, 0x74
/* 803FC108  4B FF FE 59 */	bl mCD_CheckPresentFile
/* 803FC10C  2C 03 00 01 */	cmpwi r3, 1
/* 803FC110  40 82 01 6C */	bne lbl_803FC27C
/* 803FC114  38 60 00 06 */	li r3, 6
/* 803FC118  4B FF E2 F9 */	bl mCD_get_offset
/* 803FC11C  80 BA 00 50 */	lwz r5, 0x50(r26)
/* 803FC120  7C 66 1B 78 */	mr r6, r3
/* 803FC124  80 FD 00 0C */	lwz r7, 0xc(r29)
/* 803FC128  7F E3 FB 78 */	mr r3, r31
/* 803FC12C  38 9C 11 BC */	addi r4, r28, 0x11bc
/* 803FC130  39 19 00 74 */	addi r8, r25, 0x74
/* 803FC134  4B FF C9 E5 */	bl mCD_read_fg
/* 803FC138  2C 03 00 01 */	cmpwi r3, 1
/* 803FC13C  40 82 01 00 */	bne lbl_803FC23C
/* 803FC140  7F F9 FB 78 */	mr r25, r31
/* 803FC144  38 7F 00 20 */	addi r3, r31, 0x20
/* 803FC148  38 9B 02 F8 */	addi r4, r27, 0x2f8
/* 803FC14C  38 A0 00 0D */	li r5, 0xd
/* 803FC150  4B FF EA C1 */	bl mCD_CheckFilename
/* 803FC154  2C 03 00 01 */	cmpwi r3, 1
/* 803FC158  40 82 00 08 */	bne lbl_803FC160
/* 803FC15C  3B 00 00 01 */	li r24, 1
lbl_803FC160:
/* 803FC160  80 9A 00 50 */	lwz r4, 0x50(r26)
/* 803FC164  7F 23 CB 78 */	mr r3, r25
/* 803FC168  4B FF FA 99 */	bl mCD_send_present
/* 803FC16C  2C 03 00 01 */	cmpwi r3, 1
/* 803FC170  40 82 00 94 */	bne lbl_803FC204
/* 803FC174  38 00 00 06 */	li r0, 6
/* 803FC178  90 1C 00 04 */	stw r0, 4(r28)
/* 803FC17C  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FC180  4B FF E2 D9 */	bl mCD_get_size
/* 803FC184  90 7C 00 08 */	stw r3, 8(r28)
/* 803FC188  57 07 10 3A */	slwi r7, r24, 2
/* 803FC18C  38 BB 04 28 */	addi r5, r27, 0x428
/* 803FC190  38 DB 04 30 */	addi r6, r27, 0x430
/* 803FC194  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803FC198  38 79 00 20 */	addi r3, r25, 0x20
/* 803FC19C  90 1C 00 00 */	stw r0, 0(r28)
/* 803FC1A0  A0 99 14 42 */	lhz r4, 0x1442(r25)
/* 803FC1A4  7C A5 38 2E */	lwzx r5, r5, r7
/* 803FC1A8  7C C6 38 2E */	lwzx r6, r6, r7
/* 803FC1AC  4B FF F4 5D */	bl mCD_get_present_comment1
/* 803FC1B0  A0 19 14 42 */	lhz r0, 0x1442(r25)
/* 803FC1B4  28 00 00 00 */	cmplwi r0, 0
/* 803FC1B8  40 82 00 08 */	bne lbl_803FC1C0
/* 803FC1BC  3B C0 00 01 */	li r30, 1
lbl_803FC1C0:
/* 803FC1C0  57 C0 10 3A */	slwi r0, r30, 2
/* 803FC1C4  38 7B 04 20 */	addi r3, r27, 0x420
/* 803FC1C8  7C 83 00 2E */	lwzx r4, r3, r0
/* 803FC1CC  38 79 0E 40 */	addi r3, r25, 0xe40
/* 803FC1D0  38 A0 04 00 */	li r5, 0x400
/* 803FC1D4  38 C0 00 01 */	li r6, 1
/* 803FC1D8  38 E0 02 00 */	li r7, 0x200
/* 803FC1DC  48 00 74 41 */	bl mCD_set_bti_data
/* 803FC1E0  80 9C 00 08 */	lwz r4, 8(r28)
/* 803FC1E4  7F E3 FB 78 */	mr r3, r31
/* 803FC1E8  A0 B9 14 40 */	lhz r5, 0x1440(r25)
/* 803FC1EC  4B FB 03 41 */	bl mFRm_GetFlatCheckSum
/* 803FC1F0  B0 79 14 40 */	sth r3, 0x1440(r25)
/* 803FC1F4  80 7D 00 00 */	lwz r3, 0(r29)
/* 803FC1F8  38 03 00 01 */	addi r0, r3, 1
/* 803FC1FC  90 1D 00 00 */	stw r0, 0(r29)
/* 803FC200  48 00 00 7C */	b lbl_803FC27C
lbl_803FC204:
/* 803FC204  A0 19 14 42 */	lhz r0, 0x1442(r25)
/* 803FC208  28 00 00 00 */	cmplwi r0, 0
/* 803FC20C  41 82 00 18 */	beq lbl_803FC224
/* 803FC210  38 60 FF FF */	li r3, -1
/* 803FC214  38 00 00 02 */	li r0, 2
/* 803FC218  90 7C 00 00 */	stw r3, 0(r28)
/* 803FC21C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 803FC220  48 00 00 5C */	b lbl_803FC27C
lbl_803FC224:
/* 803FC224  80 7D 00 08 */	lwz r3, 8(r29)
/* 803FC228  38 03 00 01 */	addi r0, r3, 1
/* 803FC22C  90 1D 00 08 */	stw r0, 8(r29)
/* 803FC230  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803FC234  90 1C 00 00 */	stw r0, 0(r28)
/* 803FC238  48 00 00 44 */	b lbl_803FC27C
lbl_803FC23C:
/* 803FC23C  80 79 00 74 */	lwz r3, 0x74(r25)
/* 803FC240  2C 03 FF FE */	cmpwi r3, -2
/* 803FC244  41 82 00 30 */	beq lbl_803FC274
/* 803FC248  2C 03 FF FD */	cmpwi r3, -3
/* 803FC24C  41 82 00 28 */	beq lbl_803FC274
/* 803FC250  38 03 00 06 */	addi r0, r3, 6
/* 803FC254  28 00 00 01 */	cmplwi r0, 1
/* 803FC258  40 81 00 1C */	ble lbl_803FC274
/* 803FC25C  2C 03 FF 80 */	cmpwi r3, -128
/* 803FC260  41 82 00 14 */	beq lbl_803FC274
/* 803FC264  2C 03 FF F5 */	cmpwi r3, -11
/* 803FC268  41 82 00 0C */	beq lbl_803FC274
/* 803FC26C  2C 03 FF F3 */	cmpwi r3, -13
/* 803FC270  40 82 00 0C */	bne lbl_803FC27C
lbl_803FC274:
/* 803FC274  38 00 00 20 */	li r0, 0x20
/* 803FC278  90 1D 00 08 */	stw r0, 8(r29)
lbl_803FC27C:
/* 803FC27C  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FC280  2C 00 FF FF */	cmpwi r0, -1
/* 803FC284  41 82 00 10 */	beq lbl_803FC294
/* 803FC288  80 1D 00 08 */	lwz r0, 8(r29)
/* 803FC28C  2C 00 00 20 */	cmpwi r0, 0x20
/* 803FC290  41 80 00 20 */	blt lbl_803FC2B0
lbl_803FC294:
/* 803FC294  38 60 00 03 */	li r3, 3
/* 803FC298  38 00 00 00 */	li r0, 0
/* 803FC29C  90 7D 00 00 */	stw r3, 0(r29)
/* 803FC2A0  90 1D 00 08 */	stw r0, 8(r29)
/* 803FC2A4  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 803FC2A8  38 03 00 01 */	addi r0, r3, 1
/* 803FC2AC  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_803FC2B0:
/* 803FC2B0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803FC2B4  2C 00 00 02 */	cmpwi r0, 2
/* 803FC2B8  41 80 00 14 */	blt lbl_803FC2CC
/* 803FC2BC  38 60 00 05 */	li r3, 5
/* 803FC2C0  38 00 FF FF */	li r0, -1
/* 803FC2C4  90 7D 00 00 */	stw r3, 0(r29)
/* 803FC2C8  90 1C 00 00 */	stw r0, 0(r28)
lbl_803FC2CC:
/* 803FC2CC  38 60 00 01 */	li r3, 1
/* 803FC2D0  48 00 00 08 */	b lbl_803FC2D8
lbl_803FC2D4:
/* 803FC2D4  38 60 FF FF */	li r3, -1
lbl_803FC2D8:
/* 803FC2D8  39 61 00 30 */	addi r11, r1, 0x30
/* 803FC2DC  4B C9 EC 31 */	bl func_8009AF0C
/* 803FC2E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FC2E4  7C 08 03 A6 */	mtlr r0
/* 803FC2E8  38 21 00 30 */	addi r1, r1, 0x30
/* 803FC2EC  4E 80 00 20 */	blr 
