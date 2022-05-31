lbl_803A2A18:
/* 803A2A18  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803A2A1C  7C 08 02 A6 */	mflr r0
/* 803A2A20  90 01 00 54 */	stw r0, 0x54(r1)
/* 803A2A24  39 61 00 50 */	addi r11, r1, 0x50
/* 803A2A28  4B CF 84 81 */	bl func_8009AEA8
/* 803A2A2C  7D 38 4B 78 */	mr r24, r9
/* 803A2A30  83 21 00 58 */	lwz r25, 0x58(r1)
/* 803A2A34  7F 4A C1 D6 */	mullw r26, r10, r24
/* 803A2A38  7C 72 1B 78 */	mr r18, r3
/* 803A2A3C  7C 93 23 78 */	mr r19, r4
/* 803A2A40  7C B4 2B 78 */	mr r20, r5
/* 803A2A44  7C D5 33 78 */	mr r21, r6
/* 803A2A48  7C F6 3B 78 */	mr r22, r7
/* 803A2A4C  7D 17 43 78 */	mr r23, r8
/* 803A2A50  3B 80 00 00 */	li r28, 0
/* 803A2A54  3B 60 00 00 */	li r27, 0
/* 803A2A58  3B A0 00 00 */	li r29, 0
/* 803A2A5C  48 00 00 E0 */	b lbl_803A2B3C
lbl_803A2A60:
/* 803A2A60  A0 14 00 00 */	lhz r0, 0(r20)
/* 803A2A64  7E 45 93 78 */	mr r5, r18
/* 803A2A68  7F A6 EB 78 */	mr r6, r29
/* 803A2A6C  38 61 00 08 */	addi r3, r1, 8
/* 803A2A70  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 803A2A74  1C 00 00 06 */	mulli r0, r0, 6
/* 803A2A78  7F D7 02 14 */	add r30, r23, r0
/* 803A2A7C  A0 9E 00 02 */	lhz r4, 2(r30)
/* 803A2A80  4B FF FA 35 */	bl mFM_ChangeFGName
/* 803A2A84  A0 9E 00 00 */	lhz r4, 0(r30)
/* 803A2A88  7E 45 93 78 */	mr r5, r18
/* 803A2A8C  38 61 00 0A */	addi r3, r1, 0xa
/* 803A2A90  4B FF FB 19 */	bl mFM_ChangeBGName
/* 803A2A94  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 803A2A98  28 00 01 25 */	cmplwi r0, 0x125
/* 803A2A9C  40 81 00 0C */	ble lbl_803A2AA8
/* 803A2AA0  38 00 00 00 */	li r0, 0
/* 803A2AA4  B0 01 00 0A */	sth r0, 0xa(r1)
lbl_803A2AA8:
/* 803A2AA8  A0 01 00 08 */	lhz r0, 8(r1)
/* 803A2AAC  28 00 03 B8 */	cmplwi r0, 0x3b8
/* 803A2AB0  40 81 00 0C */	ble lbl_803A2ABC
/* 803A2AB4  38 00 00 00 */	li r0, 0
/* 803A2AB8  B0 01 00 08 */	sth r0, 8(r1)
lbl_803A2ABC:
/* 803A2ABC  A0 01 00 08 */	lhz r0, 8(r1)
/* 803A2AC0  7C 79 00 51 */	subf. r3, r25, r0
/* 803A2AC4  40 80 00 08 */	bge lbl_803A2ACC
/* 803A2AC8  38 60 00 00 */	li r3, 0
lbl_803A2ACC:
/* 803A2ACC  A0 E1 00 0A */	lhz r7, 0xa(r1)
/* 803A2AD0  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 803A2AD4  7C 95 00 2E */	lwzx r4, r21, r0
/* 803A2AD8  28 04 00 00 */	cmplwi r4, 0
/* 803A2ADC  41 82 00 40 */	beq lbl_803A2B1C
/* 803A2AE0  54 7F 10 3A */	slwi r31, r3, 2
/* 803A2AE4  7C 16 F8 2E */	lwzx r0, r22, r31
/* 803A2AE8  28 00 00 00 */	cmplwi r0, 0
/* 803A2AEC  41 82 00 30 */	beq lbl_803A2B1C
/* 803A2AF0  88 14 00 01 */	lbz r0, 1(r20)
/* 803A2AF4  7E 63 9B 78 */	mr r3, r19
/* 803A2AF8  88 DE 00 04 */	lbz r6, 4(r30)
/* 803A2AFC  7F 88 E3 78 */	mr r8, r28
/* 803A2B00  54 05 07 BE */	clrlwi r5, r0, 0x1e
/* 803A2B04  7F 69 DB 78 */	mr r9, r27
/* 803A2B08  4B FF FC 09 */	bl mFM_SetBG
/* 803A2B0C  7C 96 F8 2E */	lwzx r4, r22, r31
/* 803A2B10  38 73 05 80 */	addi r3, r19, 0x580
/* 803A2B14  A0 A1 00 08 */	lhz r5, 8(r1)
/* 803A2B18  4B FF FC BD */	bl mFM_SetFG
lbl_803A2B1C:
/* 803A2B1C  3B 9C 00 01 */	addi r28, r28, 1
/* 803A2B20  7C 1C C0 00 */	cmpw r28, r24
/* 803A2B24  41 80 00 0C */	blt lbl_803A2B30
/* 803A2B28  3B 80 00 00 */	li r28, 0
/* 803A2B2C  3B 7B 00 01 */	addi r27, r27, 1
lbl_803A2B30:
/* 803A2B30  3A 73 06 14 */	addi r19, r19, 0x614
/* 803A2B34  3A 94 00 02 */	addi r20, r20, 2
/* 803A2B38  3B BD 00 01 */	addi r29, r29, 1
lbl_803A2B3C:
/* 803A2B3C  7C 1D D0 00 */	cmpw r29, r26
/* 803A2B40  41 80 FF 20 */	blt lbl_803A2A60
/* 803A2B44  39 61 00 50 */	addi r11, r1, 0x50
/* 803A2B48  4B CF 83 AD */	bl func_8009AEF4
/* 803A2B4C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803A2B50  7C 08 03 A6 */	mtlr r0
/* 803A2B54  38 21 00 50 */	addi r1, r1, 0x50
/* 803A2B58  4E 80 00 20 */	blr 
