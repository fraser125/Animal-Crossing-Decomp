lbl_803A4994:
/* 803A4994  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A4998  7C 08 02 A6 */	mflr r0
/* 803A499C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A49A0  39 61 00 30 */	addi r11, r1, 0x30
/* 803A49A4  4B CF 65 1D */	bl func_8009AEC0
/* 803A49A8  3C C0 80 70 */	lis r6, data_806FDF48@ha /* 0x806FDF48@ha */
/* 803A49AC  3C A0 80 81 */	lis r5, data_8080DC80@ha /* 0x8080DC80@ha */
/* 803A49B0  38 06 DF 48 */	addi r0, r6, data_806FDF48@l /* 0x806FDF48@l */
/* 803A49B4  7C 7C 1B 78 */	mr r28, r3
/* 803A49B8  7C 9D 23 78 */	mr r29, r4
/* 803A49BC  3B E5 DC 80 */	addi r31, r5, data_8080DC80@l /* 0x8080DC80@l */
/* 803A49C0  7C 19 03 78 */	mr r25, r0
/* 803A49C4  48 00 02 CD */	bl mFI_CheckFieldData
/* 803A49C8  2C 03 00 00 */	cmpwi r3, 0
/* 803A49CC  41 82 00 EC */	beq lbl_803A4AB8
/* 803A49D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A49D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A49D8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803A49DC  2C 00 00 07 */	cmpwi r0, 7
/* 803A49E0  40 82 00 D8 */	bne lbl_803A4AB8
/* 803A49E4  48 00 02 C9 */	bl mFI_GetBlockTopP
/* 803A49E8  7C 7A 1B 79 */	or. r26, r3, r3
/* 803A49EC  41 82 00 CC */	beq lbl_803A4AB8
/* 803A49F0  38 60 04 94 */	li r3, 0x494
/* 803A49F4  48 01 7A 69 */	bl zelda_malloc
/* 803A49F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 803A49FC  41 82 00 BC */	beq lbl_803A4AB8
/* 803A4A00  3C A0 80 75 */	lis r5, data_bgd_number@ha /* 0x8074B734@ha */
/* 803A4A04  7F 24 CB 78 */	mr r4, r25
/* 803A4A08  38 A5 B7 34 */	addi r5, r5, data_bgd_number@l /* 0x8074B734@l */
/* 803A4A0C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803A4A10  4B FF D7 CD */	bl func_803A21DC
/* 803A4A14  80 7C 00 00 */	lwz r3, 0(r28)
/* 803A4A18  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A4A1C  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803A4A20  54 65 08 3C */	slwi r5, r3, 1
/* 803A4A24  38 80 00 08 */	li r4, 8
/* 803A4A28  7C A0 2A 14 */	add r5, r0, r5
/* 803A4A2C  3F 25 00 01 */	addis r25, r5, 1
/* 803A4A30  3B 39 74 18 */	addi r25, r25, 0x7418
/* 803A4A34  48 00 07 85 */	bl mFI_GetBlockNum
/* 803A4A38  1C 03 06 14 */	mulli r0, r3, 0x614
/* 803A4A3C  3B 00 00 00 */	li r24, 0
/* 803A4A40  3B 60 00 00 */	li r27, 0
/* 803A4A44  7F 5A 02 14 */	add r26, r26, r0
/* 803A4A48  48 00 00 58 */	b lbl_803A4AA0
lbl_803A4A4C:
/* 803A4A4C  A0 19 00 00 */	lhz r0, 0(r25)
/* 803A4A50  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 803A4A54  1C 00 00 06 */	mulli r0, r0, 6
/* 803A4A58  7C FF 02 2E */	lhzx r7, r31, r0
/* 803A4A5C  2C 07 01 25 */	cmpwi r7, 0x125
/* 803A4A60  41 81 00 30 */	bgt lbl_803A4A90
/* 803A4A64  54 E0 10 3A */	slwi r0, r7, 2
/* 803A4A68  7C 9E 00 2E */	lwzx r4, r30, r0
/* 803A4A6C  28 04 00 00 */	cmplwi r4, 0
/* 803A4A70  41 82 00 20 */	beq lbl_803A4A90
/* 803A4A74  88 19 00 01 */	lbz r0, 1(r25)
/* 803A4A78  7F 43 D3 78 */	mr r3, r26
/* 803A4A7C  88 DA 00 11 */	lbz r6, 0x11(r26)
/* 803A4A80  39 20 00 08 */	li r9, 8
/* 803A4A84  7D 1C D8 2E */	lwzx r8, r28, r27
/* 803A4A88  54 05 07 BE */	clrlwi r5, r0, 0x1e
/* 803A4A8C  4B FF DC 85 */	bl mFM_SetBG
lbl_803A4A90:
/* 803A4A90  3B 5A 06 14 */	addi r26, r26, 0x614
/* 803A4A94  3B 39 00 02 */	addi r25, r25, 2
/* 803A4A98  3B 18 00 01 */	addi r24, r24, 1
/* 803A4A9C  3B 7B 00 04 */	addi r27, r27, 4
lbl_803A4AA0:
/* 803A4AA0  7C 18 E8 00 */	cmpw r24, r29
/* 803A4AA4  41 80 FF A8 */	blt lbl_803A4A4C
/* 803A4AA8  28 1E 00 00 */	cmplwi r30, 0
/* 803A4AAC  41 82 00 0C */	beq lbl_803A4AB8
/* 803A4AB0  7F C3 F3 78 */	mr r3, r30
/* 803A4AB4  48 01 7A 01 */	bl zelda_free
lbl_803A4AB8:
/* 803A4AB8  39 61 00 30 */	addi r11, r1, 0x30
/* 803A4ABC  4B CF 64 51 */	bl func_8009AF0C
/* 803A4AC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A4AC4  7C 08 03 A6 */	mtlr r0
/* 803A4AC8  38 21 00 30 */	addi r1, r1, 0x30
/* 803A4ACC  4E 80 00 20 */	blr 
