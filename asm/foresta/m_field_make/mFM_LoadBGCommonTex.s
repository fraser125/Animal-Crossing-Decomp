lbl_803A38B8:
/* 803A38B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A38BC  7C 08 02 A6 */	mflr r0
/* 803A38C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A38C4  39 61 00 30 */	addi r11, r1, 0x30
/* 803A38C8  4B CF 75 FD */	bl func_8009AEC4
/* 803A38CC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803A38D0  3C C0 80 65 */	lis r6, data_80653520@ha /* 0x80653520@ha */
/* 803A38D4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803A38D8  98 81 00 08 */	stb r4, 8(r1)
/* 803A38DC  3C 85 00 02 */	addis r4, r5, 2
/* 803A38E0  7C 7E 1B 78 */	mr r30, r3
/* 803A38E4  83 44 61 10 */	lwz r26, 0x6110(r4)
/* 803A38E8  3B E6 35 20 */	addi r31, r6, data_80653520@l /* 0x80653520@l */
/* 803A38EC  28 1A 00 04 */	cmplwi r26, 4
/* 803A38F0  41 80 00 08 */	blt lbl_803A38F8
/* 803A38F4  3B 40 00 00 */	li r26, 0
lbl_803A38F8:
/* 803A38F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A38FC  3B 63 85 38 */	addi r27, r3, common_data@l /* 0x81138538@l */
/* 803A3900  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 803A3904  2C 00 00 21 */	cmpwi r0, 0x21
/* 803A3908  40 82 00 0C */	bne lbl_803A3914
/* 803A390C  38 61 00 08 */	addi r3, r1, 8
/* 803A3910  4B FF FF 61 */	bl mFM_DecideBgTexIdx
lbl_803A3914:
/* 803A3914  88 01 00 08 */	lbz r0, 8(r1)
/* 803A3918  28 00 00 03 */	cmplwi r0, 3
/* 803A391C  41 80 00 0C */	blt lbl_803A3928
/* 803A3920  38 00 00 00 */	li r0, 0
/* 803A3924  98 01 00 08 */	stb r0, 8(r1)
lbl_803A3928:
/* 803A3928  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 803A392C  2C 00 00 26 */	cmpwi r0, 0x26
/* 803A3930  40 82 00 18 */	bne lbl_803A3948
/* 803A3934  88 01 00 08 */	lbz r0, 8(r1)
/* 803A3938  38 7F 05 9C */	addi r3, r31, 0x59c
/* 803A393C  54 00 10 3A */	slwi r0, r0, 2
/* 803A3940  7F 43 00 2E */	lwzx r26, r3, r0
/* 803A3944  48 00 00 30 */	b lbl_803A3974
lbl_803A3948:
/* 803A3948  28 1A 00 03 */	cmplwi r26, 3
/* 803A394C  40 82 00 18 */	bne lbl_803A3964
/* 803A3950  88 01 00 08 */	lbz r0, 8(r1)
/* 803A3954  38 7F 06 EC */	addi r3, r31, 0x6ec
/* 803A3958  54 00 10 3A */	slwi r0, r0, 2
/* 803A395C  7F 43 00 2E */	lwzx r26, r3, r0
/* 803A3960  48 00 00 14 */	b lbl_803A3974
lbl_803A3964:
/* 803A3964  88 01 00 08 */	lbz r0, 8(r1)
/* 803A3968  38 7F 05 9C */	addi r3, r31, 0x59c
/* 803A396C  54 00 10 3A */	slwi r0, r0, 2
/* 803A3970  7F 43 00 2E */	lwzx r26, r3, r0
lbl_803A3974:
/* 803A3974  3B 7F 07 0C */	addi r27, r31, 0x70c
/* 803A3978  3B 20 00 00 */	li r25, 0
/* 803A397C  3B A0 00 00 */	li r29, 0
/* 803A3980  3B 80 00 00 */	li r28, 0
lbl_803A3984:
/* 803A3984  2C 1E 00 01 */	cmpwi r30, 1
/* 803A3988  41 82 00 10 */	beq lbl_803A3998
/* 803A398C  88 1B 00 00 */	lbz r0, 0(r27)
/* 803A3990  28 00 00 01 */	cmplwi r0, 1
/* 803A3994  40 82 00 1C */	bne lbl_803A39B0
lbl_803A3998:
/* 803A3998  38 BF 03 58 */	addi r5, r31, 0x358
/* 803A399C  7C 7A E8 2E */	lwzx r3, r26, r29
/* 803A39A0  7C A5 E2 14 */	add r5, r5, r28
/* 803A39A4  80 85 00 00 */	lwz r4, 0(r5)
/* 803A39A8  80 A5 00 04 */	lwz r5, 4(r5)
/* 803A39AC  4B CB 96 71 */	bl func_8005D01C
lbl_803A39B0:
/* 803A39B0  3B 39 00 01 */	addi r25, r25, 1
/* 803A39B4  3B 9C 00 08 */	addi r28, r28, 8
/* 803A39B8  2C 19 00 1B */	cmpwi r25, 0x1b
/* 803A39BC  3B 7B 00 01 */	addi r27, r27, 1
/* 803A39C0  3B BD 00 04 */	addi r29, r29, 4
/* 803A39C4  41 80 FF C0 */	blt lbl_803A3984
/* 803A39C8  4B FF FD ED */	bl mFM_LoadBGCommonMonthlyPal
/* 803A39CC  39 61 00 30 */	addi r11, r1, 0x30
/* 803A39D0  4B CF 75 41 */	bl func_8009AF10
/* 803A39D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A39D8  7C 08 03 A6 */	mtlr r0
/* 803A39DC  38 21 00 30 */	addi r1, r1, 0x30
/* 803A39E0  4E 80 00 20 */	blr 
