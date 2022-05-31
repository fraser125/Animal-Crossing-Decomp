lbl_8053B338:
/* 8053B338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053B33C  7C 08 02 A6 */	mflr r0
/* 8053B340  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053B344  39 61 00 20 */	addi r11, r1, 0x20
/* 8053B348  4B B5 FB 89 */	bl func_8009AED0
/* 8053B34C  7C 7C 1B 78 */	mr r28, r3
/* 8053B350  3C 60 81 1F */	lis r3, data_811EBD30@ha /* 0x811EBD30@ha */
/* 8053B354  A3 DC 07 48 */	lhz r30, 0x748(r28)
/* 8053B358  3B A0 00 00 */	li r29, 0
/* 8053B35C  83 E3 BD 30 */	lwz r31, data_811EBD30@l(r3)  /* 0x811EBD30@l */
/* 8053B360  38 00 00 00 */	li r0, 0
/* 8053B364  28 1E FE 20 */	cmplwi r30, 0xfe20
/* 8053B368  41 82 00 14 */	beq lbl_8053B37C
/* 8053B36C  28 1E 24 00 */	cmplwi r30, 0x2400
/* 8053B370  41 80 00 10 */	blt lbl_8053B380
/* 8053B374  28 1E 24 FF */	cmplwi r30, 0x24ff
/* 8053B378  40 80 00 08 */	bge lbl_8053B380
lbl_8053B37C:
/* 8053B37C  38 00 00 01 */	li r0, 1
lbl_8053B380:
/* 8053B380  2C 00 00 00 */	cmpwi r0, 0
/* 8053B384  40 82 00 10 */	bne lbl_8053B394
/* 8053B388  38 00 24 00 */	li r0, 0x2400
/* 8053B38C  3B C0 24 00 */	li r30, 0x2400
/* 8053B390  B0 1C 07 48 */	sth r0, 0x748(r28)
lbl_8053B394:
/* 8053B394  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8053B398  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 8053B39C  40 82 00 14 */	bne lbl_8053B3B0
/* 8053B3A0  38 00 00 0B */	li r0, 0xb
/* 8053B3A4  3B A0 00 01 */	li r29, 1
/* 8053B3A8  98 1C 07 4C */	stb r0, 0x74c(r28)
/* 8053B3AC  48 00 00 38 */	b lbl_8053B3E4
lbl_8053B3B0:
/* 8053B3B0  7F C3 F3 78 */	mr r3, r30
/* 8053B3B4  4B FF FD 45 */	bl aNPC_dma_regist_cloth_data
/* 8053B3B8  4B FF FA AD */	bl aNPC_dma_cloth_data_fg
/* 8053B3BC  7F C3 F3 78 */	mr r3, r30
/* 8053B3C0  4B FF FE 0D */	bl aNPC_dma_regist_check_cloth_data
/* 8053B3C4  2C 03 00 01 */	cmpwi r3, 1
/* 8053B3C8  40 82 00 1C */	bne lbl_8053B3E4
/* 8053B3CC  7F C4 F3 78 */	mr r4, r30
/* 8053B3D0  7F 85 E3 78 */	mr r5, r28
/* 8053B3D4  38 7F 01 74 */	addi r3, r31, 0x174
/* 8053B3D8  4B FF FB C5 */	bl aNPC_dma_cloth_data_check
/* 8053B3DC  98 7C 07 4C */	stb r3, 0x74c(r28)
/* 8053B3E0  3B A0 00 01 */	li r29, 1
lbl_8053B3E4:
/* 8053B3E4  88 1C 07 4C */	lbz r0, 0x74c(r28)
/* 8053B3E8  2C 00 00 0B */	cmpwi r0, 0xb
/* 8053B3EC  40 82 00 18 */	bne lbl_8053B404
/* 8053B3F0  80 1C 01 7C */	lwz r0, 0x17c(r28)
/* 8053B3F4  28 00 00 00 */	cmplwi r0, 0
/* 8053B3F8  40 82 00 0C */	bne lbl_8053B404
/* 8053B3FC  38 00 FF FF */	li r0, -1
/* 8053B400  98 1C 07 4C */	stb r0, 0x74c(r28)
lbl_8053B404:
/* 8053B404  7F A3 EB 78 */	mr r3, r29
/* 8053B408  39 61 00 20 */	addi r11, r1, 0x20
/* 8053B40C  4B B5 FB 11 */	bl func_8009AF1C
/* 8053B410  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053B414  7C 08 03 A6 */	mtlr r0
/* 8053B418  38 21 00 20 */	addi r1, r1, 0x20
/* 8053B41C  4E 80 00 20 */	blr 
