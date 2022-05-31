lbl_803AE44C:
/* 803AE44C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AE450  7C 08 02 A6 */	mflr r0
/* 803AE454  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AE458  39 61 00 30 */	addi r11, r1, 0x30
/* 803AE45C  4B CE CA 5D */	bl func_8009AEB8
/* 803AE460  3C C0 80 81 */	lis r6, data_8080DC80@ha /* 0x8080DC80@ha */
/* 803AE464  3C 80 80 81 */	lis r4, data_combi_table_number@ha /* 0x8080E520@ha */
/* 803AE468  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803AE46C  7C 7F 1B 78 */	mr r31, r3
/* 803AE470  3B 46 DC 80 */	addi r26, r6, data_8080DC80@l /* 0x8080DC80@l */
/* 803AE474  3B 84 E5 20 */	addi r28, r4, data_combi_table_number@l /* 0x8080E520@l */
/* 803AE478  3B 65 85 38 */	addi r27, r5, common_data@l /* 0x81138538@l */
/* 803AE47C  3A C0 00 00 */	li r22, 0
/* 803AE480  3A E0 00 00 */	li r23, 0
/* 803AE484  3B C0 00 00 */	li r30, 0
lbl_803AE488:
/* 803AE488  7F 3B F2 14 */	add r25, r27, r30
/* 803AE48C  3B 00 00 00 */	li r24, 0
/* 803AE490  3B A0 00 00 */	li r29, 0
lbl_803AE494:
/* 803AE494  3C 7D 00 01 */	addis r3, r29, 1
/* 803AE498  80 1C 00 00 */	lwz r0, 0(r28)
/* 803AE49C  38 63 73 A8 */	addi r3, r3, 0x73a8
/* 803AE4A0  7C 79 1A 2E */	lhzx r3, r25, r3
/* 803AE4A4  54 63 F4 BE */	rlwinm r3, r3, 0x1e, 0x12, 0x1f
/* 803AE4A8  7C 03 00 00 */	cmpw r3, r0
/* 803AE4AC  40 80 00 24 */	bge lbl_803AE4D0
/* 803AE4B0  1C 63 00 06 */	mulli r3, r3, 6
/* 803AE4B4  38 03 00 04 */	addi r0, r3, 4
/* 803AE4B8  7C 7A 00 AE */	lbzx r3, r26, r0
/* 803AE4BC  48 03 65 9D */	bl mRF_Type2BlockInfo
/* 803AE4C0  7C 60 F8 39 */	and. r0, r3, r31
/* 803AE4C4  41 82 00 14 */	beq lbl_803AE4D8
/* 803AE4C8  3A D6 00 01 */	addi r22, r22, 1
/* 803AE4CC  48 00 00 0C */	b lbl_803AE4D8
lbl_803AE4D0:
/* 803AE4D0  38 60 FF FF */	li r3, -1
/* 803AE4D4  48 00 00 28 */	b lbl_803AE4FC
lbl_803AE4D8:
/* 803AE4D8  3B 18 00 01 */	addi r24, r24, 1
/* 803AE4DC  3B BD 00 02 */	addi r29, r29, 2
/* 803AE4E0  2C 18 00 07 */	cmpwi r24, 7
/* 803AE4E4  41 80 FF B0 */	blt lbl_803AE494
/* 803AE4E8  3A F7 00 01 */	addi r23, r23, 1
/* 803AE4EC  3B DE 00 0E */	addi r30, r30, 0xe
/* 803AE4F0  2C 17 00 0A */	cmpwi r23, 0xa
/* 803AE4F4  41 80 FF 94 */	blt lbl_803AE488
/* 803AE4F8  7E C3 B3 78 */	mr r3, r22
lbl_803AE4FC:
/* 803AE4FC  39 61 00 30 */	addi r11, r1, 0x30
/* 803AE500  4B CE CA 05 */	bl func_8009AF04
/* 803AE504  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AE508  7C 08 03 A6 */	mtlr r0
/* 803AE50C  38 21 00 30 */	addi r1, r1, 0x30
/* 803AE510  4E 80 00 20 */	blr 
