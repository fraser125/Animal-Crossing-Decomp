lbl_80511308:
/* 80511308  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051130C  7C 08 02 A6 */	mflr r0
/* 80511310  90 01 00 34 */	stw r0, 0x34(r1)
/* 80511314  39 61 00 30 */	addi r11, r1, 0x30
/* 80511318  4B B8 9B B1 */	bl func_8009AEC8
/* 8051131C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80511320  3C 80 81 1D */	lis r4, data_811D3518@ha /* 0x811D3518@ha */
/* 80511324  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80511328  38 00 00 00 */	li r0, 0
/* 8051132C  3F C5 00 01 */	addis r30, r5, 1
/* 80511330  2C 03 00 1E */	cmpwi r3, 0x1e
/* 80511334  38 84 35 18 */	addi r4, r4, data_811D3518@l /* 0x811D3518@l */
/* 80511338  98 01 00 08 */	stb r0, 8(r1)
/* 8051133C  3B DE 37 A8 */	addi r30, r30, 0x37a8
/* 80511340  3B 80 00 00 */	li r28, 0
/* 80511344  7F DF F3 78 */	mr r31, r30
/* 80511348  7C 9D 23 78 */	mr r29, r4
/* 8051134C  40 80 00 90 */	bge lbl_805113DC
/* 80511350  23 63 00 1E */	subfic r27, r3, 0x1e
/* 80511354  7C 83 23 78 */	mr r3, r4
/* 80511358  38 80 00 1E */	li r4, 0x1e
/* 8051135C  4B B4 BD 0D */	bl bzero
/* 80511360  3B 40 00 00 */	li r26, 0
lbl_80511364:
/* 80511364  7F E3 FB 78 */	mr r3, r31
/* 80511368  4B FF FA E5 */	bl mAGrw_GetChangeAbleTreeNum2
/* 8051136C  98 7D 00 00 */	stb r3, 0(r29)
/* 80511370  88 1D 00 00 */	lbz r0, 0(r29)
/* 80511374  28 00 00 00 */	cmplwi r0, 0
/* 80511378  41 82 00 14 */	beq lbl_8051138C
/* 8051137C  88 61 00 08 */	lbz r3, 8(r1)
/* 80511380  7F 9C 02 14 */	add r28, r28, r0
/* 80511384  38 03 00 01 */	addi r0, r3, 1
/* 80511388  98 01 00 08 */	stb r0, 8(r1)
lbl_8051138C:
/* 8051138C  3B 5A 00 01 */	addi r26, r26, 1
/* 80511390  3B FF 02 00 */	addi r31, r31, 0x200
/* 80511394  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 80511398  3B BD 00 01 */	addi r29, r29, 1
/* 8051139C  41 80 FF C8 */	blt lbl_80511364
/* 805113A0  2C 1C 00 00 */	cmpwi r28, 0
/* 805113A4  40 81 00 38 */	ble lbl_805113DC
/* 805113A8  7C 1B E0 00 */	cmpw r27, r28
/* 805113AC  40 81 00 08 */	ble lbl_805113B4
/* 805113B0  7F 9B E3 78 */	mr r27, r28
lbl_805113B4:
/* 805113B4  3C 60 81 1D */	lis r3, data_811D3518@ha /* 0x811D3518@ha */
/* 805113B8  3B E3 35 18 */	addi r31, r3, data_811D3518@l /* 0x811D3518@l */
/* 805113BC  48 00 00 18 */	b lbl_805113D4
lbl_805113C0:
/* 805113C0  7F C3 F3 78 */	mr r3, r30
/* 805113C4  7F E4 FB 78 */	mr r4, r31
/* 805113C8  38 A1 00 08 */	addi r5, r1, 8
/* 805113CC  4B FF FE 61 */	bl mAGrw_SetMoneyTreeRandom
/* 805113D0  3B 7B FF FF */	addi r27, r27, -1
lbl_805113D4:
/* 805113D4  2C 1B 00 00 */	cmpwi r27, 0
/* 805113D8  40 82 FF E8 */	bne lbl_805113C0
lbl_805113DC:
/* 805113DC  39 61 00 30 */	addi r11, r1, 0x30
/* 805113E0  4B B8 9B 35 */	bl func_8009AF14
/* 805113E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805113E8  7C 08 03 A6 */	mtlr r0
/* 805113EC  38 21 00 30 */	addi r1, r1, 0x30
/* 805113F0  4E 80 00 20 */	blr 
