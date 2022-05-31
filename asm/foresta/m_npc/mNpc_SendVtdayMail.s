lbl_803CE090:
/* 803CE090  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803CE094  7C 08 02 A6 */	mflr r0
/* 803CE098  90 01 00 84 */	stw r0, 0x84(r1)
/* 803CE09C  39 61 00 80 */	addi r11, r1, 0x80
/* 803CE0A0  4B CC CE 19 */	bl func_8009AEB8
/* 803CE0A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CE0A8  3B 60 00 00 */	li r27, 0
/* 803CE0AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CE0B0  3B 40 00 0F */	li r26, 0xf
/* 803CE0B4  3F E3 00 01 */	addis r31, r3, 1
/* 803CE0B8  3A C0 00 00 */	li r22, 0
/* 803CE0BC  3B FF 74 38 */	addi r31, r31, 0x7438
/* 803CE0C0  3B 00 00 00 */	li r24, 0
/* 803CE0C4  7F FD FB 78 */	mr r29, r31
/* 803CE0C8  3B 20 FF FF */	li r25, -1
lbl_803CE0CC:
/* 803CE0CC  3B 81 00 18 */	addi r28, r1, 0x18
/* 803CE0D0  7F A3 EB 78 */	mr r3, r29
/* 803CE0D4  7F 9C C2 14 */	add r28, r28, r24
/* 803CE0D8  93 3C 00 00 */	stw r25, 0(r28)
/* 803CE0DC  4B FF D3 01 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803CE0E0  2C 03 00 00 */	cmpwi r3, 0
/* 803CE0E4  40 82 00 24 */	bne lbl_803CE108
/* 803CE0E8  7F A3 EB 78 */	mr r3, r29
/* 803CE0EC  48 00 3E B9 */	bl mNpc_GetAnimalSex
/* 803CE0F0  38 81 00 08 */	addi r4, r1, 8
/* 803CE0F4  7C 66 1B 78 */	mr r6, r3
/* 803CE0F8  7F 83 E3 78 */	mr r3, r28
/* 803CE0FC  7F A5 EB 78 */	mr r5, r29
/* 803CE100  7C 84 B2 14 */	add r4, r4, r22
/* 803CE104  4B FF FE D5 */	bl mNpc_SendEventPresentMailSex
lbl_803CE108:
/* 803CE108  3A D6 00 01 */	addi r22, r22, 1
/* 803CE10C  3B 18 00 04 */	addi r24, r24, 4
/* 803CE110  2C 16 00 0F */	cmpwi r22, 0xf
/* 803CE114  3B BD 09 88 */	addi r29, r29, 0x988
/* 803CE118  41 80 FF B4 */	blt lbl_803CE0CC
/* 803CE11C  3B C1 00 18 */	addi r30, r1, 0x18
/* 803CE120  3B 80 00 00 */	li r28, 0
lbl_803CE124:
/* 803CE124  7F FD FB 78 */	mr r29, r31
/* 803CE128  3B 20 00 00 */	li r25, 0
/* 803CE12C  3B 00 00 00 */	li r24, 0
lbl_803CE130:
/* 803CE130  7C 9E C0 2E */	lwzx r4, r30, r24
/* 803CE134  2C 04 00 00 */	cmpwi r4, 0
/* 803CE138  41 80 00 7C */	blt lbl_803CE1B4
/* 803CE13C  38 61 00 08 */	addi r3, r1, 8
/* 803CE140  7C 03 C8 AE */	lbzx r0, r3, r25
/* 803CE144  7C 00 E0 00 */	cmpw r0, r28
/* 803CE148  40 82 00 6C */	bne lbl_803CE1B4
/* 803CE14C  1C 64 01 38 */	mulli r3, r4, 0x138
/* 803CE150  3A E3 00 10 */	addi r23, r3, 0x10
/* 803CE154  7E FD BA 14 */	add r23, r29, r23
/* 803CE158  7E E3 BB 78 */	mr r3, r23
/* 803CE15C  48 01 25 4D */	bl mPr_GetPrivateIdx
/* 803CE160  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 803CE164  7C 76 1B 78 */	mr r22, r3
/* 803CE168  7C 00 B6 30 */	sraw r0, r0, r22
/* 803CE16C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803CE170  2C 00 00 01 */	cmpwi r0, 1
/* 803CE174  40 82 00 40 */	bne lbl_803CE1B4
/* 803CE178  7E E3 BB 78 */	mr r3, r23
/* 803CE17C  7E C4 B3 78 */	mr r4, r22
/* 803CE180  7F A5 EB 78 */	mr r5, r29
/* 803CE184  7F 86 E3 78 */	mr r6, r28
/* 803CE188  4B FF FD 45 */	bl mNpc_SendEventPresentMail
/* 803CE18C  2C 03 00 01 */	cmpwi r3, 1
/* 803CE190  40 82 00 14 */	bne lbl_803CE1A4
/* 803CE194  38 00 FF FF */	li r0, -1
/* 803CE198  3B 7B 00 01 */	addi r27, r27, 1
/* 803CE19C  7C 1E C1 2E */	stwx r0, r30, r24
/* 803CE1A0  48 00 00 14 */	b lbl_803CE1B4
lbl_803CE1A4:
/* 803CE1A4  38 00 00 01 */	li r0, 1
/* 803CE1A8  7C 00 B0 30 */	slw r0, r0, r22
/* 803CE1AC  7F 40 00 78 */	andc r0, r26, r0
/* 803CE1B0  54 1A 06 3E */	clrlwi r26, r0, 0x18
lbl_803CE1B4:
/* 803CE1B4  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 803CE1B8  40 82 00 0C */	bne lbl_803CE1C4
/* 803CE1BC  7F 63 DB 78 */	mr r3, r27
/* 803CE1C0  48 00 00 28 */	b lbl_803CE1E8
lbl_803CE1C4:
/* 803CE1C4  3B 39 00 01 */	addi r25, r25, 1
/* 803CE1C8  3B 18 00 04 */	addi r24, r24, 4
/* 803CE1CC  2C 19 00 0F */	cmpwi r25, 0xf
/* 803CE1D0  3B BD 09 88 */	addi r29, r29, 0x988
/* 803CE1D4  41 80 FF 5C */	blt lbl_803CE130
/* 803CE1D8  3B 9C 00 01 */	addi r28, r28, 1
/* 803CE1DC  2C 1C 00 03 */	cmpwi r28, 3
/* 803CE1E0  41 80 FF 44 */	blt lbl_803CE124
/* 803CE1E4  7F 63 DB 78 */	mr r3, r27
lbl_803CE1E8:
/* 803CE1E8  39 61 00 80 */	addi r11, r1, 0x80
/* 803CE1EC  4B CC CD 19 */	bl func_8009AF04
/* 803CE1F0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803CE1F4  7C 08 03 A6 */	mtlr r0
/* 803CE1F8  38 21 00 80 */	addi r1, r1, 0x80
/* 803CE1FC  4E 80 00 20 */	blr 
