lbl_805C3840:
/* 805C3840  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C3844  7C 08 02 A6 */	mflr r0
/* 805C3848  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C384C  39 61 00 30 */	addi r11, r1, 0x30
/* 805C3850  4B AD 76 75 */	bl func_8009AEC4
/* 805C3854  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C3858  3C 80 80 6C */	lis r4, aNSM_itemNo@ha /* 0x806C7AA0@ha */
/* 805C385C  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 805C3860  3C 60 80 6C */	lis r3, data_806C7A90@ha /* 0x806C7A90@ha */
/* 805C3864  3F 65 00 02 */	addis r27, r5, 2
/* 805C3868  3B 84 7A A0 */	addi r28, r4, aNSM_itemNo@l /* 0x806C7AA0@l */
/* 805C386C  3B A3 7A 90 */	addi r29, r3, data_806C7A90@l /* 0x806C7A90@l */
/* 805C3870  3B 20 00 00 */	li r25, 0
/* 805C3874  3B 40 00 00 */	li r26, 0
/* 805C3878  3B E0 00 00 */	li r31, 0
/* 805C387C  3B C0 00 00 */	li r30, 0
lbl_805C3880:
/* 805C3880  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 805C3884  38 A0 00 00 */	li r5, 0
/* 805C3888  7C 9C F2 2E */	lhzx r4, r28, r30
/* 805C388C  4B E1 D1 41 */	bl mPr_GetPossessionItemSumWithCond
/* 805C3890  7C 1D F8 2E */	lwzx r0, r29, r31
/* 805C3894  3B 5A 00 01 */	addi r26, r26, 1
/* 805C3898  2C 1A 00 04 */	cmpwi r26, 4
/* 805C389C  3B FF 00 04 */	addi r31, r31, 4
/* 805C38A0  7C 03 01 D6 */	mullw r0, r3, r0
/* 805C38A4  3B DE 00 02 */	addi r30, r30, 2
/* 805C38A8  7F 39 02 14 */	add r25, r25, r0
/* 805C38AC  41 80 FF D4 */	blt lbl_805C3880
/* 805C38B0  7F 23 CB 78 */	mr r3, r25
/* 805C38B4  39 61 00 30 */	addi r11, r1, 0x30
/* 805C38B8  4B AD 76 59 */	bl func_8009AF10
/* 805C38BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C38C0  7C 08 03 A6 */	mtlr r0
/* 805C38C4  38 21 00 30 */	addi r1, r1, 0x30
/* 805C38C8  4E 80 00 20 */	blr 
