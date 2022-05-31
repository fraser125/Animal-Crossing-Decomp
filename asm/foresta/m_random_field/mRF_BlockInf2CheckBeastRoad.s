lbl_803E4BF8:
/* 803E4BF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803E4BFC  7C 08 02 A6 */	mflr r0
/* 803E4C00  90 01 00 44 */	stw r0, 0x44(r1)
/* 803E4C04  39 61 00 40 */	addi r11, r1, 0x40
/* 803E4C08  4B CB 62 B1 */	bl func_8009AEB8
/* 803E4C0C  3C A0 80 64 */	lis r5, data_8064312C@ha /* 0x8064312C@ha */
/* 803E4C10  7C 9C 23 78 */	mr r28, r4
/* 803E4C14  84 85 31 2C */	lwzu r4, data_8064312C@l(r5)  /* 0x8064312C@l */
/* 803E4C18  7C 7B 1B 78 */	mr r27, r3
/* 803E4C1C  3B A0 00 00 */	li r29, 0
/* 803E4C20  3B E0 00 00 */	li r31, 0
/* 803E4C24  80 65 00 04 */	lwz r3, 4(r5)
/* 803E4C28  80 05 00 08 */	lwz r0, 8(r5)
/* 803E4C2C  90 81 00 0C */	stw r4, 0xc(r1)
/* 803E4C30  90 61 00 10 */	stw r3, 0x10(r1)
/* 803E4C34  90 01 00 14 */	stw r0, 0x14(r1)
lbl_803E4C38:
/* 803E4C38  7F 64 DB 78 */	mr r4, r27
/* 803E4C3C  7F E5 FB 78 */	mr r5, r31
/* 803E4C40  38 61 00 08 */	addi r3, r1, 8
/* 803E4C44  4B FF FF 51 */	bl mRF_BlockTypeDirect2GateData
/* 803E4C48  7C 79 1B 79 */	or. r25, r3, r3
/* 803E4C4C  41 82 00 C8 */	beq lbl_803E4D14
/* 803E4C50  3B C0 00 00 */	li r30, 0
/* 803E4C54  3B 40 00 00 */	li r26, 0
/* 803E4C58  48 00 00 B0 */	b lbl_803E4D08
lbl_803E4C5C:
/* 803E4C5C  7F 19 D2 14 */	add r24, r25, r26
/* 803E4C60  38 61 00 0C */	addi r3, r1, 0xc
/* 803E4C64  80 B8 00 00 */	lwz r5, 0(r24)
/* 803E4C68  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 803E4C6C  54 A4 07 3E */	clrlwi r4, r5, 0x1c
/* 803E4C70  7E FC 02 14 */	add r23, r28, r0
/* 803E4C74  54 A5 E7 3E */	rlwinm r5, r5, 0x1c, 0x1c, 0x1f
/* 803E4C78  88 17 00 03 */	lbz r0, 3(r23)
/* 803E4C7C  54 16 06 BE */	clrlwi r22, r0, 0x1a
/* 803E4C80  4B FC 07 FD */	bl mFI_UtNum2CenterWpos
/* 803E4C84  7E C3 B3 78 */	mr r3, r22
/* 803E4C88  38 81 00 0C */	addi r4, r1, 0xc
/* 803E4C8C  4B FA B2 95 */	bl mCoBG_Attribute2CheckPlant
/* 803E4C90  2C 03 00 00 */	cmpwi r3, 0
/* 803E4C94  40 81 00 1C */	ble lbl_803E4CB0
/* 803E4C98  7E C3 B3 78 */	mr r3, r22
/* 803E4C9C  4B FF FE A9 */	bl mRF_Attr2BeastRoadAttr
/* 803E4CA0  88 17 00 03 */	lbz r0, 3(r23)
/* 803E4CA4  50 60 06 BE */	rlwimi r0, r3, 0, 0x1a, 0x1f
/* 803E4CA8  3B BD 00 01 */	addi r29, r29, 1
/* 803E4CAC  98 17 00 03 */	stb r0, 3(r23)
lbl_803E4CB0:
/* 803E4CB0  80 B8 00 04 */	lwz r5, 4(r24)
/* 803E4CB4  38 61 00 0C */	addi r3, r1, 0xc
/* 803E4CB8  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 803E4CBC  54 A4 07 3E */	clrlwi r4, r5, 0x1c
/* 803E4CC0  7F 1C 02 14 */	add r24, r28, r0
/* 803E4CC4  54 A5 E7 3E */	rlwinm r5, r5, 0x1c, 0x1c, 0x1f
/* 803E4CC8  88 18 00 03 */	lbz r0, 3(r24)
/* 803E4CCC  54 17 06 BE */	clrlwi r23, r0, 0x1a
/* 803E4CD0  4B FC 07 AD */	bl mFI_UtNum2CenterWpos
/* 803E4CD4  7E E3 BB 78 */	mr r3, r23
/* 803E4CD8  38 81 00 0C */	addi r4, r1, 0xc
/* 803E4CDC  4B FA B2 45 */	bl mCoBG_Attribute2CheckPlant
/* 803E4CE0  2C 03 00 00 */	cmpwi r3, 0
/* 803E4CE4  40 81 00 1C */	ble lbl_803E4D00
/* 803E4CE8  7E E3 BB 78 */	mr r3, r23
/* 803E4CEC  4B FF FE 59 */	bl mRF_Attr2BeastRoadAttr
/* 803E4CF0  88 18 00 03 */	lbz r0, 3(r24)
/* 803E4CF4  50 60 06 BE */	rlwimi r0, r3, 0, 0x1a, 0x1f
/* 803E4CF8  3B BD 00 01 */	addi r29, r29, 1
/* 803E4CFC  98 18 00 03 */	stb r0, 3(r24)
lbl_803E4D00:
/* 803E4D00  3B DE 00 01 */	addi r30, r30, 1
/* 803E4D04  3B 5A 00 08 */	addi r26, r26, 8
lbl_803E4D08:
/* 803E4D08  80 01 00 08 */	lwz r0, 8(r1)
/* 803E4D0C  7C 1E 00 00 */	cmpw r30, r0
/* 803E4D10  41 80 FF 4C */	blt lbl_803E4C5C
lbl_803E4D14:
/* 803E4D14  3B FF 00 01 */	addi r31, r31, 1
/* 803E4D18  2C 1F 00 04 */	cmpwi r31, 4
/* 803E4D1C  41 80 FF 1C */	blt lbl_803E4C38
/* 803E4D20  7F A0 00 34 */	cntlzw r0, r29
/* 803E4D24  39 61 00 40 */	addi r11, r1, 0x40
/* 803E4D28  54 03 D9 7E */	srwi r3, r0, 5
/* 803E4D2C  4B CB 61 D9 */	bl func_8009AF04
/* 803E4D30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803E4D34  7C 08 03 A6 */	mtlr r0
/* 803E4D38  38 21 00 40 */	addi r1, r1, 0x40
/* 803E4D3C  4E 80 00 20 */	blr 
