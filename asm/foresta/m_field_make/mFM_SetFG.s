lbl_803A27D4:
/* 803A27D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A27D8  7C 08 02 A6 */	mflr r0
/* 803A27DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A27E0  38 00 00 00 */	li r0, 0
/* 803A27E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A27E8  7C 9F 23 78 */	mr r31, r4
/* 803A27EC  93 C1 00 08 */	stw r30, 8(r1)
/* 803A27F0  7C 7E 1B 78 */	mr r30, r3
/* 803A27F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A27F8  B0 BE 00 00 */	sth r5, 0(r30)
/* 803A27FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A2800  B0 1E 00 8C */	sth r0, 0x8c(r30)
/* 803A2804  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803A2808  2C 00 00 07 */	cmpwi r0, 7
/* 803A280C  41 82 00 D0 */	beq lbl_803A28DC
/* 803A2810  2C 00 00 14 */	cmpwi r0, 0x14
/* 803A2814  41 82 00 C8 */	beq lbl_803A28DC
/* 803A2818  2C 00 00 15 */	cmpwi r0, 0x15
/* 803A281C  41 82 00 C0 */	beq lbl_803A28DC
/* 803A2820  2C 00 00 16 */	cmpwi r0, 0x16
/* 803A2824  41 82 00 B8 */	beq lbl_803A28DC
/* 803A2828  2C 00 00 28 */	cmpwi r0, 0x28
/* 803A282C  41 82 00 B0 */	beq lbl_803A28DC
/* 803A2830  2C 00 00 29 */	cmpwi r0, 0x29
/* 803A2834  41 82 00 A8 */	beq lbl_803A28DC
/* 803A2838  2C 00 00 2A */	cmpwi r0, 0x2a
/* 803A283C  41 82 00 A0 */	beq lbl_803A28DC
/* 803A2840  2C 00 00 2B */	cmpwi r0, 0x2b
/* 803A2844  41 82 00 98 */	beq lbl_803A28DC
/* 803A2848  2C 00 00 2C */	cmpwi r0, 0x2c
/* 803A284C  41 82 00 90 */	beq lbl_803A28DC
/* 803A2850  2C 00 00 2D */	cmpwi r0, 0x2d
/* 803A2854  41 82 00 88 */	beq lbl_803A28DC
/* 803A2858  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803A285C  41 82 00 80 */	beq lbl_803A28DC
/* 803A2860  2C 00 00 30 */	cmpwi r0, 0x30
/* 803A2864  40 82 00 6C */	bne lbl_803A28D0
/* 803A2868  48 03 2B D1 */	bl mNpc_GetIslandRoomFtrNum
/* 803A286C  2C 03 00 00 */	cmpwi r3, 0
/* 803A2870  40 81 00 30 */	ble lbl_803A28A0
/* 803A2874  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A2878  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A287C  3C 63 00 02 */	addis r3, r3, 2
/* 803A2880  A0 63 34 40 */	lhz r3, 0x3440(r3)
/* 803A2884  48 03 1C B1 */	bl mNpc_GetIslandRoomP
/* 803A2888  7C 64 1B 78 */	mr r4, r3
/* 803A288C  80 7E 00 04 */	lwz r3, 4(r30)
/* 803A2890  4B FF FA 25 */	bl mFM_FgUtDataSet
/* 803A2894  80 7E 00 04 */	lwz r3, 4(r30)
/* 803A2898  48 03 20 55 */	bl mNpc_ChangeIslandRoom
/* 803A289C  48 00 00 10 */	b lbl_803A28AC
lbl_803A28A0:
/* 803A28A0  80 7E 00 04 */	lwz r3, 4(r30)
/* 803A28A4  38 9F 00 02 */	addi r4, r31, 2
/* 803A28A8  4B FF FA 0D */	bl mFM_FgUtDataSet
lbl_803A28AC:
/* 803A28AC  28 1E 00 00 */	cmplwi r30, 0
/* 803A28B0  41 82 00 2C */	beq lbl_803A28DC
/* 803A28B4  80 7E 00 04 */	lwz r3, 4(r30)
/* 803A28B8  28 03 00 00 */	cmplwi r3, 0
/* 803A28BC  41 82 00 20 */	beq lbl_803A28DC
/* 803A28C0  38 00 40 80 */	li r0, 0x4080
/* 803A28C4  B0 03 01 06 */	sth r0, 0x106(r3)
/* 803A28C8  B0 03 01 08 */	sth r0, 0x108(r3)
/* 803A28CC  48 00 00 10 */	b lbl_803A28DC
lbl_803A28D0:
/* 803A28D0  80 7E 00 04 */	lwz r3, 4(r30)
/* 803A28D4  38 9F 00 02 */	addi r4, r31, 2
/* 803A28D8  4B FF F9 DD */	bl mFM_FgUtDataSet
lbl_803A28DC:
/* 803A28DC  38 00 00 04 */	li r0, 4
/* 803A28E0  38 80 00 00 */	li r4, 0
/* 803A28E4  7C 09 03 A6 */	mtctr r0
lbl_803A28E8:
/* 803A28E8  38 64 02 02 */	addi r3, r4, 0x202
/* 803A28EC  38 04 00 8E */	addi r0, r4, 0x8e
/* 803A28F0  7C 7F 18 AE */	lbzx r3, r31, r3
/* 803A28F4  38 84 00 01 */	addi r4, r4, 1
/* 803A28F8  7C 7E 01 AE */	stbx r3, r30, r0
/* 803A28FC  42 00 FF EC */	bdnz lbl_803A28E8
/* 803A2900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A2904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A2908  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A290C  7C 08 03 A6 */	mtlr r0
/* 803A2910  38 21 00 10 */	addi r1, r1, 0x10
/* 803A2914  4E 80 00 20 */	blr 
