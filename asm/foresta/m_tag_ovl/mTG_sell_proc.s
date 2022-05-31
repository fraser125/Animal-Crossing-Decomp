lbl_805F3AF0:
/* 805F3AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3AF4  7C 08 02 A6 */	mflr r0
/* 805F3AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3B00  7C 9F 23 78 */	mr r31, r4
/* 805F3B04  93 C1 00 08 */	stw r30, 8(r1)
/* 805F3B08  7C 7E 1B 78 */	mr r30, r3
/* 805F3B0C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F3B10  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F3B14  38 63 00 08 */	addi r3, r3, 8
/* 805F3B18  4B FF C0 49 */	bl mTG_get_table_idx
/* 805F3B1C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805F3B20  54 64 08 3C */	slwi r4, r3, 1
/* 805F3B24  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805F3B28  80 FE 01 74 */	lwz r7, 0x174(r30)
/* 805F3B2C  3C A5 00 02 */	addis r5, r5, 2
/* 805F3B30  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 805F3B34  80 05 00 88 */	lwz r0, 0x88(r5)
/* 805F3B38  7C 00 24 30 */	srw r0, r0, r4
/* 805F3B3C  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 805F3B40  28 00 00 02 */	cmplwi r0, 2
/* 805F3B44  40 82 00 18 */	bne lbl_805F3B5C
/* 805F3B48  7F C3 F3 78 */	mr r3, r30
/* 805F3B4C  7F E4 FB 78 */	mr r4, r31
/* 805F3B50  38 A0 00 08 */	li r5, 8
/* 805F3B54  4B FF F2 CD */	bl mTG_open_warning_window
/* 805F3B58  48 00 00 2C */	b lbl_805F3B84
lbl_805F3B5C:
/* 805F3B5C  7C 85 22 14 */	add r4, r5, r4
/* 805F3B60  38 00 00 01 */	li r0, 1
/* 805F3B64  A0 C4 00 68 */	lhz r6, 0x68(r4)
/* 805F3B68  7F E4 FB 78 */	mr r4, r31
/* 805F3B6C  38 A0 00 01 */	li r5, 1
/* 805F3B70  B0 C7 00 00 */	sth r6, 0(r7)
/* 805F3B74  98 67 00 02 */	stb r3, 2(r7)
/* 805F3B78  7F C3 F3 78 */	mr r3, r30
/* 805F3B7C  B0 1E 01 7A */	sth r0, 0x17a(r30)
/* 805F3B80  4B FF F4 95 */	bl mTG_close_window
lbl_805F3B84:
/* 805F3B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3B8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F3B90  7C 08 03 A6 */	mtlr r0
/* 805F3B94  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3B98  4E 80 00 20 */	blr 
