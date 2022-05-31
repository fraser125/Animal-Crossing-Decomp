lbl_803C84D0:
/* 803C84D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803C84D4  7C 08 02 A6 */	mflr r0
/* 803C84D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803C84DC  39 61 00 40 */	addi r11, r1, 0x40
/* 803C84E0  4B CD 29 D1 */	bl func_8009AEB0
/* 803C84E4  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803C84E8  3C E0 81 17 */	lis r7, data_8116AC78@ha /* 0x8116AC78@ha */
/* 803C84EC  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 803C84F0  7C 9A 23 78 */	mr r26, r4
/* 803C84F4  3F C6 00 01 */	addis r30, r6, 1
/* 803C84F8  3B E7 AC 78 */	addi r31, r7, data_8116AC78@l /* 0x8116AC78@l */
/* 803C84FC  3B DE 37 A8 */	addi r30, r30, 0x37a8
/* 803C8500  7C 79 1B 78 */	mr r25, r3
/* 803C8504  7C BB 2B 78 */	mr r27, r5
/* 803C8508  38 7F 00 00 */	addi r3, r31, 0
/* 803C850C  7F D5 F3 78 */	mr r21, r30
/* 803C8510  3B A0 00 00 */	li r29, 0
/* 803C8514  3B 80 00 00 */	li r28, 0
/* 803C8518  38 80 03 C0 */	li r4, 0x3c0
/* 803C851C  4B C9 4B 4D */	bl bzero
/* 803C8520  38 7F 03 C0 */	addi r3, r31, 0x3c0
/* 803C8524  38 80 00 1E */	li r4, 0x1e
/* 803C8528  4B C9 4B 41 */	bl bzero
/* 803C852C  38 7F 03 E0 */	addi r3, r31, 0x3e0
/* 803C8530  38 80 00 1E */	li r4, 0x1e
/* 803C8534  4B C9 4B 35 */	bl bzero
/* 803C8538  38 1F 03 C0 */	addi r0, r31, 0x3c0
/* 803C853C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C8540  7C 18 03 78 */	mr r24, r0
/* 803C8544  3A 80 00 00 */	li r20, 0
/* 803C8548  3A C3 85 38 */	addi r22, r3, common_data@l /* 0x81138538@l */
/* 803C854C  3A E0 00 00 */	li r23, 0
lbl_803C8550:
/* 803C8550  7C 76 BA 14 */	add r3, r22, r23
/* 803C8554  38 BF 00 00 */	addi r5, r31, 0
/* 803C8558  3C 83 00 02 */	addis r4, r3, 2
/* 803C855C  7E A3 AB 78 */	mr r3, r21
/* 803C8560  7C A5 BA 14 */	add r5, r5, r23
/* 803C8564  38 84 0F 1C */	addi r4, r4, 0xf1c
/* 803C8568  4B FF FC 4D */	bl mMsr_GetBlockClearAbleMushroomNum
/* 803C856C  98 78 00 00 */	stb r3, 0(r24)
/* 803C8570  88 18 00 00 */	lbz r0, 0(r24)
/* 803C8574  28 00 00 00 */	cmplwi r0, 0
/* 803C8578  41 82 00 0C */	beq lbl_803C8584
/* 803C857C  7F 9C 02 14 */	add r28, r28, r0
/* 803C8580  3B BD 00 01 */	addi r29, r29, 1
lbl_803C8584:
/* 803C8584  3A 94 00 01 */	addi r20, r20, 1
/* 803C8588  3B 18 00 01 */	addi r24, r24, 1
/* 803C858C  2C 14 00 1E */	cmpwi r20, 0x1e
/* 803C8590  3A F7 00 20 */	addi r23, r23, 0x20
/* 803C8594  3A B5 02 00 */	addi r21, r21, 0x200
/* 803C8598  41 80 FF B8 */	blt lbl_803C8550
/* 803C859C  34 1A FF FF */	addic. r0, r26, -1
/* 803C85A0  41 80 00 64 */	blt lbl_803C8604
/* 803C85A4  38 1A FF FF */	addi r0, r26, -1
/* 803C85A8  2C 00 00 05 */	cmpwi r0, 5
/* 803C85AC  40 80 00 58 */	bge lbl_803C8604
/* 803C85B0  34 1B FF FF */	addic. r0, r27, -1
/* 803C85B4  41 80 00 50 */	blt lbl_803C8604
/* 803C85B8  38 1B FF FF */	addi r0, r27, -1
/* 803C85BC  2C 00 00 06 */	cmpwi r0, 6
/* 803C85C0  40 80 00 44 */	bge lbl_803C8604
/* 803C85C4  1C 00 00 05 */	mulli r0, r0, 5
/* 803C85C8  38 DF 03 C0 */	addi r6, r31, 0x3c0
/* 803C85CC  7C FA 02 14 */	add r7, r26, r0
/* 803C85D0  38 E7 FF FF */	addi r7, r7, -1
/* 803C85D4  7C A6 38 AE */	lbzx r5, r6, r7
/* 803C85D8  28 05 00 00 */	cmplwi r5, 0
/* 803C85DC  41 82 00 28 */	beq lbl_803C8604
/* 803C85E0  38 80 00 00 */	li r4, 0
/* 803C85E4  54 E0 28 34 */	slwi r0, r7, 5
/* 803C85E8  38 7F 00 00 */	addi r3, r31, 0
/* 803C85EC  7C 86 39 AE */	stbx r4, r6, r7
/* 803C85F0  7F 85 E0 50 */	subf r28, r5, r28
/* 803C85F4  38 80 00 20 */	li r4, 0x20
/* 803C85F8  7C 63 02 14 */	add r3, r3, r0
/* 803C85FC  3B BD FF FF */	addi r29, r29, -1
/* 803C8600  4B C9 4A 69 */	bl bzero
lbl_803C8604:
/* 803C8604  2C 1C 00 00 */	cmpwi r28, 0
/* 803C8608  40 81 00 9C */	ble lbl_803C86A4
/* 803C860C  7C 1C C8 00 */	cmpw r28, r25
/* 803C8610  40 80 00 18 */	bge lbl_803C8628
/* 803C8614  7F C3 F3 78 */	mr r3, r30
/* 803C8618  38 9F 00 00 */	addi r4, r31, 0
/* 803C861C  38 BF 03 C0 */	addi r5, r31, 0x3c0
/* 803C8620  4B FF FE 45 */	bl mMsr_ClearCandidateMushroom
/* 803C8624  48 00 00 80 */	b lbl_803C86A4
lbl_803C8628:
/* 803C8628  7F A5 EB 78 */	mr r5, r29
/* 803C862C  7F 86 E3 78 */	mr r6, r28
/* 803C8630  7F 27 CB 78 */	mr r7, r25
/* 803C8634  38 7F 03 E0 */	addi r3, r31, 0x3e0
/* 803C8638  38 9F 03 C0 */	addi r4, r31, 0x3c0
/* 803C863C  4B FF FC 31 */	bl mMsr_SetShareNum
/* 803C8640  38 1F 03 E0 */	addi r0, r31, 0x3e0
/* 803C8644  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C8648  3A C0 00 00 */	li r22, 0
/* 803C864C  3B 20 00 00 */	li r25, 0
/* 803C8650  7C 1A 03 78 */	mr r26, r0
/* 803C8654  3A E3 85 38 */	addi r23, r3, common_data@l /* 0x81138538@l */
lbl_803C8658:
/* 803C8658  88 9A 00 00 */	lbz r4, 0(r26)
/* 803C865C  28 04 00 00 */	cmplwi r4, 0
/* 803C8660  41 82 00 2C */	beq lbl_803C868C
/* 803C8664  7C 77 CA 14 */	add r3, r23, r25
/* 803C8668  7F C5 F3 78 */	mr r5, r30
/* 803C866C  3C C3 00 02 */	addis r6, r3, 2
/* 803C8670  38 E0 00 00 */	li r7, 0
/* 803C8674  38 60 28 05 */	li r3, 0x2805
/* 803C8678  38 C6 0F 1C */	addi r6, r6, 0xf1c
/* 803C867C  4B FE 1B 65 */	bl mFI_ClearBlockItemRandom_common
/* 803C8680  2C 03 00 00 */	cmpwi r3, 0
/* 803C8684  40 81 00 08 */	ble lbl_803C868C
/* 803C8688  4B FD F7 AD */	bl mFI_SetFGUpData
lbl_803C868C:
/* 803C868C  3A D6 00 01 */	addi r22, r22, 1
/* 803C8690  3B 39 00 20 */	addi r25, r25, 0x20
/* 803C8694  2C 16 00 1E */	cmpwi r22, 0x1e
/* 803C8698  3B 5A 00 01 */	addi r26, r26, 1
/* 803C869C  3B DE 02 00 */	addi r30, r30, 0x200
/* 803C86A0  41 80 FF B8 */	blt lbl_803C8658
lbl_803C86A4:
/* 803C86A4  39 61 00 40 */	addi r11, r1, 0x40
/* 803C86A8  4B CD 28 55 */	bl func_8009AEFC
/* 803C86AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803C86B0  7C 08 03 A6 */	mtlr r0
/* 803C86B4  38 21 00 40 */	addi r1, r1, 0x40
/* 803C86B8  4E 80 00 20 */	blr 
