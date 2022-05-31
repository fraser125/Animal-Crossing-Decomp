lbl_803A3AF8:
/* 803A3AF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A3AFC  7C 08 02 A6 */	mflr r0
/* 803A3B00  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A3B04  39 61 00 20 */	addi r11, r1, 0x20
/* 803A3B08  4B CF 73 C5 */	bl func_8009AECC
/* 803A3B0C  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A3B10  80 83 7A 58 */	lwz r4, g_fdinfo@l(r3)  /* 0x81167A58@l */
/* 803A3B14  88 64 00 93 */	lbz r3, 0x93(r4)
/* 803A3B18  8B A4 00 92 */	lbz r29, 0x92(r4)
/* 803A3B1C  38 63 FF FD */	addi r3, r3, -3
/* 803A3B20  A0 04 00 00 */	lhz r0, 0(r4)
/* 803A3B24  7F 9D 19 D6 */	mullw r28, r29, r3
/* 803A3B28  83 C4 00 74 */	lwz r30, 0x74(r4)
/* 803A3B2C  54 00 04 27 */	rlwinm. r0, r0, 0, 0x10, 0x13
/* 803A3B30  40 82 00 58 */	bne lbl_803A3B88
/* 803A3B34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A3B38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A3B3C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803A3B40  2C 00 00 07 */	cmpwi r0, 7
/* 803A3B44  40 82 00 44 */	bne lbl_803A3B88
/* 803A3B48  7F BB EB 78 */	mr r27, r29
/* 803A3B4C  3B FD FF FE */	addi r31, r29, -2
/* 803A3B50  48 00 00 30 */	b lbl_803A3B80
lbl_803A3B54:
/* 803A3B54  38 1B 00 01 */	addi r0, r27, 1
/* 803A3B58  38 80 00 00 */	li r4, 0
/* 803A3B5C  1C 00 06 14 */	mulli r0, r0, 0x614
/* 803A3B60  7C 7E 02 14 */	add r3, r30, r0
/* 803A3B64  4B FF FF 41 */	bl mFM_PoorTreeBlock
/* 803A3B68  7C 1B FA 14 */	add r0, r27, r31
/* 803A3B6C  38 80 00 0F */	li r4, 0xf
/* 803A3B70  1C 00 06 14 */	mulli r0, r0, 0x614
/* 803A3B74  7C 7E 02 14 */	add r3, r30, r0
/* 803A3B78  4B FF FF 2D */	bl mFM_PoorTreeBlock
/* 803A3B7C  7F 7B EA 14 */	add r27, r27, r29
lbl_803A3B80:
/* 803A3B80  7C 1B E0 00 */	cmpw r27, r28
/* 803A3B84  41 80 FF D0 */	blt lbl_803A3B54
lbl_803A3B88:
/* 803A3B88  39 61 00 20 */	addi r11, r1, 0x20
/* 803A3B8C  4B CF 73 8D */	bl func_8009AF18
/* 803A3B90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A3B94  7C 08 03 A6 */	mtlr r0
/* 803A3B98  38 21 00 20 */	addi r1, r1, 0x20
/* 803A3B9C  4E 80 00 20 */	blr 
