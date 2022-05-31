lbl_8039B37C:
/* 8039B37C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039B380  7C 08 02 A6 */	mflr r0
/* 8039B384  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039B388  39 61 00 20 */	addi r11, r1, 0x20
/* 8039B38C  4B CF FB 41 */	bl func_8009AECC
/* 8039B390  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039B394  7C 7B 1B 78 */	mr r27, r3
/* 8039B398  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8039B39C  54 9D EF 7E */	rlwinm r29, r4, 0x1d, 0x1d, 0x1f
/* 8039B3A0  3F C5 00 02 */	addis r30, r5, 2
/* 8039B3A4  54 9F 07 7E */	clrlwi r31, r4, 0x1d
/* 8039B3A8  3B 80 00 00 */	li r28, 0
/* 8039B3AC  4B FF FC 2D */	bl last_day_of_month
/* 8039B3B0  2C 1D 00 07 */	cmpwi r29, 7
/* 8039B3B4  40 82 00 54 */	bne lbl_8039B408
/* 8039B3B8  88 9E 61 25 */	lbz r4, 0x6125(r30)
/* 8039B3BC  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8039B3C0  7C 00 20 40 */	cmplw r0, r4
/* 8039B3C4  40 81 00 0C */	ble lbl_8039B3D0
/* 8039B3C8  3B A0 00 01 */	li r29, 1
/* 8039B3CC  48 00 00 3C */	b lbl_8039B408
lbl_8039B3D0:
/* 8039B3D0  40 80 00 0C */	bge lbl_8039B3DC
/* 8039B3D4  3B A0 00 06 */	li r29, 6
/* 8039B3D8  48 00 00 30 */	b lbl_8039B408
lbl_8039B3DC:
/* 8039B3DC  88 BE 61 24 */	lbz r5, 0x6124(r30)
/* 8039B3E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8039B3E4  88 9E 61 23 */	lbz r4, 0x6123(r30)
/* 8039B3E8  7C BF 28 50 */	subf r5, r31, r5
/* 8039B3EC  7C 85 20 50 */	subf r4, r5, r4
/* 8039B3F0  54 9C 06 3E */	clrlwi r28, r4, 0x18
/* 8039B3F4  7C 1C 00 40 */	cmplw r28, r0
/* 8039B3F8  40 81 00 0C */	ble lbl_8039B404
/* 8039B3FC  3B A0 00 06 */	li r29, 6
/* 8039B400  48 00 00 08 */	b lbl_8039B408
lbl_8039B404:
/* 8039B404  3B A0 00 00 */	li r29, 0
lbl_8039B408:
/* 8039B408  2C 1D 00 06 */	cmpwi r29, 6
/* 8039B40C  40 82 00 5C */	bne lbl_8039B468
/* 8039B410  3C 80 81 16 */	lis r4, weekday1st@ha /* 0x8116769C@ha */
/* 8039B414  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8039B418  38 84 76 9C */	addi r4, r4, weekday1st@l /* 0x8116769C@l */
/* 8039B41C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8039B420  7C 04 00 AE */	lbzx r0, r4, r0
/* 8039B424  38 60 00 07 */	li r3, 7
/* 8039B428  7C 85 02 14 */	add r4, r5, r0
/* 8039B42C  38 84 FF FF */	addi r4, r4, -1
/* 8039B430  7C 04 1B D6 */	divw r0, r4, r3
/* 8039B434  7C 00 19 D6 */	mullw r0, r0, r3
/* 8039B438  7C 00 20 50 */	subf r0, r0, r4
/* 8039B43C  7C 1F 00 00 */	cmpw r31, r0
/* 8039B440  41 81 00 14 */	bgt lbl_8039B454
/* 8039B444  7C 1F 00 50 */	subf r0, r31, r0
/* 8039B448  7C 00 28 50 */	subf r0, r0, r5
/* 8039B44C  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 8039B450  48 00 00 68 */	b lbl_8039B4B8
lbl_8039B454:
/* 8039B454  7C 1F 00 50 */	subf r0, r31, r0
/* 8039B458  7C 60 28 50 */	subf r3, r0, r5
/* 8039B45C  38 03 FF F9 */	addi r0, r3, -7
/* 8039B460  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 8039B464  48 00 00 54 */	b lbl_8039B4B8
lbl_8039B468:
/* 8039B468  2C 1D 00 00 */	cmpwi r29, 0
/* 8039B46C  41 82 00 4C */	beq lbl_8039B4B8
/* 8039B470  3C 60 81 16 */	lis r3, weekday1st@ha /* 0x8116769C@ha */
/* 8039B474  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8039B478  38 63 76 9C */	addi r3, r3, weekday1st@l /* 0x8116769C@l */
/* 8039B47C  7C 03 00 AE */	lbzx r0, r3, r0
/* 8039B480  7C 1F 00 00 */	cmpw r31, r0
/* 8039B484  41 80 00 20 */	blt lbl_8039B4A4
/* 8039B488  38 7D FF FF */	addi r3, r29, -1
/* 8039B48C  7C 00 F8 50 */	subf r0, r0, r31
/* 8039B490  1C 63 00 07 */	mulli r3, r3, 7
/* 8039B494  7C 63 02 14 */	add r3, r3, r0
/* 8039B498  38 03 00 01 */	addi r0, r3, 1
/* 8039B49C  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 8039B4A0  48 00 00 18 */	b lbl_8039B4B8
lbl_8039B4A4:
/* 8039B4A4  1C 7D 00 07 */	mulli r3, r29, 7
/* 8039B4A8  7C 00 F8 50 */	subf r0, r0, r31
/* 8039B4AC  7C 63 02 14 */	add r3, r3, r0
/* 8039B4B0  38 03 00 01 */	addi r0, r3, 1
/* 8039B4B4  54 1C 06 3E */	clrlwi r28, r0, 0x18
lbl_8039B4B8:
/* 8039B4B8  7F 83 E3 78 */	mr r3, r28
/* 8039B4BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8039B4C0  4B CF FA 59 */	bl func_8009AF18
/* 8039B4C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039B4C8  7C 08 03 A6 */	mtlr r0
/* 8039B4CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8039B4D0  4E 80 00 20 */	blr 
