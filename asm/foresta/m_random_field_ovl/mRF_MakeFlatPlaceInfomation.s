lbl_8050A868:
/* 8050A868  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050A86C  7C 08 02 A6 */	mflr r0
/* 8050A870  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050A874  39 61 00 30 */	addi r11, r1, 0x30
/* 8050A878  4B B9 06 4D */	bl func_8009AEC4
/* 8050A87C  3C A0 81 1D */	lis r5, mRF_river_left_right_info@ha /* 0x811D3324@ha */
/* 8050A880  3C 80 81 1D */	lis r4, mRF_cliff_up_down_info@ha /* 0x811D33B0@ha */
/* 8050A884  7C 7F 1B 78 */	mr r31, r3
/* 8050A888  38 00 00 46 */	li r0, 0x46
/* 8050A88C  38 A5 33 24 */	addi r5, r5, mRF_river_left_right_info@l /* 0x811D3324@l */
/* 8050A890  38 84 33 B0 */	addi r4, r4, mRF_cliff_up_down_info@l /* 0x811D33B0@l */
/* 8050A894  38 60 00 00 */	li r3, 0
/* 8050A898  38 C0 00 02 */	li r6, 2
/* 8050A89C  7C 09 03 A6 */	mtctr r0
lbl_8050A8A0:
/* 8050A8A0  7C C5 1B 2E */	sthx r6, r5, r3
/* 8050A8A4  7C C4 1B 2E */	sthx r6, r4, r3
/* 8050A8A8  38 63 00 02 */	addi r3, r3, 2
/* 8050A8AC  42 00 FF F4 */	bdnz lbl_8050A8A0
/* 8050A8B0  3C 60 81 1D */	lis r3, mRF_cliff_up_down_info@ha /* 0x811D33B0@ha */
/* 8050A8B4  3B 20 00 01 */	li r25, 1
/* 8050A8B8  3B A3 33 B0 */	addi r29, r3, mRF_cliff_up_down_info@l /* 0x811D33B0@l */
lbl_8050A8BC:
/* 8050A8BC  3B 60 00 00 */	li r27, 0
/* 8050A8C0  3B 40 00 01 */	li r26, 1
lbl_8050A8C4:
/* 8050A8C4  7F 23 CB 78 */	mr r3, r25
/* 8050A8C8  7F 44 D3 78 */	mr r4, r26
/* 8050A8CC  4B FF E5 71 */	bl mRF_D2ToD1
/* 8050A8D0  7C 7E 1B 78 */	mr r30, r3
/* 8050A8D4  7F 60 07 35 */	extsh. r0, r27
/* 8050A8D8  7C 7F F0 AE */	lbzx r3, r31, r30
/* 8050A8DC  40 82 00 18 */	bne lbl_8050A8F4
/* 8050A8E0  38 80 00 08 */	li r4, 8
/* 8050A8E4  4B FF E5 D9 */	bl mRF_CheckBlockGroup
/* 8050A8E8  2C 03 00 00 */	cmpwi r3, 0
/* 8050A8EC  41 82 00 08 */	beq lbl_8050A8F4
/* 8050A8F0  3B 60 00 01 */	li r27, 1
lbl_8050A8F4:
/* 8050A8F4  3B 5A 00 01 */	addi r26, r26, 1
/* 8050A8F8  57 C0 08 3C */	slwi r0, r30, 1
/* 8050A8FC  2C 1A 00 09 */	cmpwi r26, 9
/* 8050A900  7F 7D 03 2E */	sthx r27, r29, r0
/* 8050A904  41 80 FF C0 */	blt lbl_8050A8C4
/* 8050A908  3B 39 00 01 */	addi r25, r25, 1
/* 8050A90C  2C 19 00 06 */	cmpwi r25, 6
/* 8050A910  41 80 FF AC */	blt lbl_8050A8BC
/* 8050A914  3C 60 81 1D */	lis r3, mRF_river_left_right_info@ha /* 0x811D3324@ha */
/* 8050A918  3B 40 00 01 */	li r26, 1
/* 8050A91C  3B C3 33 24 */	addi r30, r3, mRF_river_left_right_info@l /* 0x811D3324@l */
lbl_8050A920:
/* 8050A920  3B 60 00 00 */	li r27, 0
/* 8050A924  3B 80 00 01 */	li r28, 1
lbl_8050A928:
/* 8050A928  7F 83 E3 78 */	mr r3, r28
/* 8050A92C  7F 44 D3 78 */	mr r4, r26
/* 8050A930  4B FF E5 0D */	bl mRF_D2ToD1
/* 8050A934  7C 7D 1B 78 */	mr r29, r3
/* 8050A938  7F 60 07 35 */	extsh. r0, r27
/* 8050A93C  7F 3F E8 AE */	lbzx r25, r31, r29
/* 8050A940  40 82 00 30 */	bne lbl_8050A970
/* 8050A944  7F 23 CB 78 */	mr r3, r25
/* 8050A948  38 80 00 01 */	li r4, 1
/* 8050A94C  4B FF E5 71 */	bl mRF_CheckBlockGroup
/* 8050A950  2C 03 00 00 */	cmpwi r3, 0
/* 8050A954  40 82 00 18 */	bne lbl_8050A96C
/* 8050A958  7F 23 CB 78 */	mr r3, r25
/* 8050A95C  38 80 00 04 */	li r4, 4
/* 8050A960  4B FF E5 5D */	bl mRF_CheckBlockGroup
/* 8050A964  2C 03 00 00 */	cmpwi r3, 0
/* 8050A968  41 82 00 08 */	beq lbl_8050A970
lbl_8050A96C:
/* 8050A96C  3B 60 00 01 */	li r27, 1
lbl_8050A970:
/* 8050A970  3B 9C 00 01 */	addi r28, r28, 1
/* 8050A974  57 A0 08 3C */	slwi r0, r29, 1
/* 8050A978  2C 1C 00 06 */	cmpwi r28, 6
/* 8050A97C  7F 7E 03 2E */	sthx r27, r30, r0
/* 8050A980  41 80 FF A8 */	blt lbl_8050A928
/* 8050A984  3B 5A 00 01 */	addi r26, r26, 1
/* 8050A988  2C 1A 00 09 */	cmpwi r26, 9
/* 8050A98C  41 80 FF 94 */	blt lbl_8050A920
/* 8050A990  39 61 00 30 */	addi r11, r1, 0x30
/* 8050A994  4B B9 05 7D */	bl func_8009AF10
/* 8050A998  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050A99C  7C 08 03 A6 */	mtlr r0
/* 8050A9A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8050A9A4  4E 80 00 20 */	blr 
