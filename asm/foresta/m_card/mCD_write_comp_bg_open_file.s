lbl_803F83D4:
/* 803F83D4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 803F83D8  7C 08 02 A6 */	mflr r0
/* 803F83DC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 803F83E0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 803F83E4  4B CA 2A E1 */	bl func_8009AEC4
/* 803F83E8  7C 9F 23 78 */	mr r31, r4
/* 803F83EC  83 A1 00 AC */	lwz r29, 0xac(r1)
/* 803F83F0  7C 79 1B 78 */	mr r25, r3
/* 803F83F4  7C BA 2B 78 */	mr r26, r5
/* 803F83F8  7C FB 3B 78 */	mr r27, r7
/* 803F83FC  7D 3C 4B 78 */	mr r28, r9
/* 803F8400  7F E3 FB 78 */	mr r3, r31
/* 803F8404  3B C0 00 00 */	li r30, 0
/* 803F8408  4B C9 5E 61 */	bl CARDGetResultCode
/* 803F840C  90 7A 00 00 */	stw r3, 0(r26)
/* 803F8410  80 1A 00 00 */	lwz r0, 0(r26)
/* 803F8414  2C 00 00 00 */	cmpwi r0, 0
/* 803F8418  40 82 00 D8 */	bne lbl_803F84F0
/* 803F841C  7F E3 FB 78 */	mr r3, r31
/* 803F8420  7F 64 DB 78 */	mr r4, r27
/* 803F8424  7F 25 CB 78 */	mr r5, r25
/* 803F8428  4B C9 90 7D */	bl CARDOpen
/* 803F842C  90 7A 00 00 */	stw r3, 0(r26)
/* 803F8430  80 1A 00 00 */	lwz r0, 0(r26)
/* 803F8434  2C 00 00 00 */	cmpwi r0, 0
/* 803F8438  40 82 00 A8 */	bne lbl_803F84E0
/* 803F843C  80 19 00 04 */	lwz r0, 4(r25)
/* 803F8440  7F E3 FB 78 */	mr r3, r31
/* 803F8444  38 A1 00 08 */	addi r5, r1, 8
/* 803F8448  90 19 00 14 */	stw r0, 0x14(r25)
/* 803F844C  80 99 00 14 */	lwz r4, 0x14(r25)
/* 803F8450  4B C9 A1 A9 */	bl CARDGetStatus
/* 803F8454  90 7A 00 00 */	stw r3, 0(r26)
/* 803F8458  80 1A 00 00 */	lwz r0, 0(r26)
/* 803F845C  2C 00 00 00 */	cmpwi r0, 0
/* 803F8460  40 82 00 6C */	bne lbl_803F84CC
/* 803F8464  80 01 00 28 */	lwz r0, 0x28(r1)
/* 803F8468  7C 00 E0 40 */	cmplw r0, r28
/* 803F846C  40 82 00 60 */	bne lbl_803F84CC
/* 803F8470  80 7D 00 00 */	lwz r3, 0(r29)
/* 803F8474  38 80 20 00 */	li r4, 0x2000
/* 803F8478  4B C6 4B F1 */	bl bzero
/* 803F847C  80 9D 00 00 */	lwz r4, 0(r29)
/* 803F8480  7F 23 CB 78 */	mr r3, r25
/* 803F8484  80 B9 00 28 */	lwz r5, 0x28(r25)
/* 803F8488  38 E0 00 00 */	li r7, 0
/* 803F848C  80 D9 00 24 */	lwz r6, 0x24(r25)
/* 803F8490  4B C9 98 69 */	bl CARDReadAsync
/* 803F8494  90 7A 00 00 */	stw r3, 0(r26)
/* 803F8498  80 1A 00 00 */	lwz r0, 0(r26)
/* 803F849C  2C 00 00 00 */	cmpwi r0, 0
/* 803F84A0  40 82 00 18 */	bne lbl_803F84B8
/* 803F84A4  80 79 00 18 */	lwz r3, 0x18(r25)
/* 803F84A8  3B C0 00 01 */	li r30, 1
/* 803F84AC  38 03 00 01 */	addi r0, r3, 1
/* 803F84B0  90 19 00 18 */	stw r0, 0x18(r25)
/* 803F84B4  48 00 00 48 */	b lbl_803F84FC
lbl_803F84B8:
/* 803F84B8  7F 23 CB 78 */	mr r3, r25
/* 803F84BC  7F E4 FB 78 */	mr r4, r31
/* 803F84C0  3B C0 FF FF */	li r30, -1
/* 803F84C4  4B FF F9 51 */	bl mCD_close_and_unmount
/* 803F84C8  48 00 00 34 */	b lbl_803F84FC
lbl_803F84CC:
/* 803F84CC  7F 23 CB 78 */	mr r3, r25
/* 803F84D0  7F E4 FB 78 */	mr r4, r31
/* 803F84D4  4B FF F9 41 */	bl mCD_close_and_unmount
/* 803F84D8  3B C0 FF FF */	li r30, -1
/* 803F84DC  48 00 00 20 */	b lbl_803F84FC
lbl_803F84E0:
/* 803F84E0  7F E3 FB 78 */	mr r3, r31
/* 803F84E4  4B C9 82 FD */	bl CARDUnmount
/* 803F84E8  3B C0 FF FF */	li r30, -1
/* 803F84EC  48 00 00 10 */	b lbl_803F84FC
lbl_803F84F0:
/* 803F84F0  2C 00 FF FF */	cmpwi r0, -1
/* 803F84F4  41 82 00 08 */	beq lbl_803F84FC
/* 803F84F8  3B C0 FF FF */	li r30, -1
lbl_803F84FC:
/* 803F84FC  7F C3 F3 78 */	mr r3, r30
/* 803F8500  39 61 00 A0 */	addi r11, r1, 0xa0
/* 803F8504  4B CA 2A 0D */	bl func_8009AF10
/* 803F8508  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 803F850C  7C 08 03 A6 */	mtlr r0
/* 803F8510  38 21 00 A0 */	addi r1, r1, 0xa0
/* 803F8514  4E 80 00 20 */	blr 
