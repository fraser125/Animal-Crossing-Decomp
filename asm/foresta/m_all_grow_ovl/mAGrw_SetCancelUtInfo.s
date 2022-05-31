lbl_805136A0:
/* 805136A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805136A4  7C 08 02 A6 */	mflr r0
/* 805136A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805136AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805136B0  4B B8 78 1D */	bl func_8009AECC
/* 805136B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805136B8  7C 7B 1B 78 */	mr r27, r3
/* 805136BC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805136C0  38 80 03 C0 */	li r4, 0x3c0
/* 805136C4  3F C5 00 01 */	addis r30, r5, 1
/* 805136C8  3B DE 37 A8 */	addi r30, r30, 0x37a8
/* 805136CC  4B B4 99 9D */	bl bzero
/* 805136D0  3B A0 00 00 */	li r29, 0
/* 805136D4  3B E0 00 00 */	li r31, 0
lbl_805136D8:
/* 805136D8  3B 80 00 00 */	li r28, 0
lbl_805136DC:
/* 805136DC  7F 63 DB 78 */	mr r3, r27
/* 805136E0  7F C4 F3 78 */	mr r4, r30
/* 805136E4  7F E6 FB 78 */	mr r6, r31
/* 805136E8  57 85 20 36 */	slwi r5, r28, 4
/* 805136EC  4B FF FD 39 */	bl mAGrw_SetblockCancelUtInfo
/* 805136F0  3B 9C 00 01 */	addi r28, r28, 1
/* 805136F4  3B DE 02 00 */	addi r30, r30, 0x200
/* 805136F8  2C 1C 00 05 */	cmpwi r28, 5
/* 805136FC  41 80 FF E0 */	blt lbl_805136DC
/* 80513700  3B BD 00 01 */	addi r29, r29, 1
/* 80513704  3B FF 00 10 */	addi r31, r31, 0x10
/* 80513708  2C 1D 00 06 */	cmpwi r29, 6
/* 8051370C  41 80 FF CC */	blt lbl_805136D8
/* 80513710  39 61 00 20 */	addi r11, r1, 0x20
/* 80513714  4B B8 78 05 */	bl func_8009AF18
/* 80513718  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051371C  7C 08 03 A6 */	mtlr r0
/* 80513720  38 21 00 20 */	addi r1, r1, 0x20
/* 80513724  4E 80 00 20 */	blr 
