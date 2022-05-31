lbl_803D8454:
/* 803D8454  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D8458  7C 08 02 A6 */	mflr r0
/* 803D845C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D8460  39 61 00 30 */	addi r11, r1, 0x30
/* 803D8464  4B CC 2A 5D */	bl func_8009AEC0
/* 803D8468  7C 7E 1B 78 */	mr r30, r3
/* 803D846C  7F DF F3 78 */	mr r31, r30
/* 803D8470  4B FF F4 2D */	bl mNpcW_ClearNpcWalk
/* 803D8474  3C 60 81 17 */	lis r3, data_8116ED80@ha /* 0x8116ED80@ha */
/* 803D8478  38 80 00 10 */	li r4, 0x10
/* 803D847C  38 63 ED 80 */	addi r3, r3, data_8116ED80@l /* 0x8116ED80@l */
/* 803D8480  4B C8 4B E9 */	bl bzero
/* 803D8484  3C 60 81 17 */	lis r3, l_arrive_stay_count@ha /* 0x8116ED90@ha */
/* 803D8488  38 80 00 3C */	li r4, 0x3c
/* 803D848C  38 63 ED 90 */	addi r3, r3, l_arrive_stay_count@l /* 0x8116ED90@l */
/* 803D8490  4B C8 4B D9 */	bl bzero
/* 803D8494  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D8498  38 00 00 03 */	li r0, 3
/* 803D849C  3B 83 85 38 */	addi r28, r3, common_data@l /* 0x81138538@l */
/* 803D84A0  3B 00 00 00 */	li r24, 0
/* 803D84A4  88 7C 00 18 */	lbz r3, 0x18(r28)
/* 803D84A8  3F 7C 00 01 */	addis r27, r28, 1
/* 803D84AC  3B A0 00 01 */	li r29, 1
/* 803D84B0  7F 43 03 D6 */	divw r26, r3, r0
/* 803D84B4  3B 7B 74 38 */	addi r27, r27, 0x7438
/* 803D84B8  48 00 00 50 */	b lbl_803D8508
lbl_803D84BC:
/* 803D84BC  A0 9E 00 8C */	lhz r4, 0x8c(r30)
/* 803D84C0  7F 63 DB 78 */	mr r3, r27
/* 803D84C4  4B FF F5 3D */	bl mNpcW_DecideNpc
/* 803D84C8  7C 79 1B 78 */	mr r25, r3
/* 803D84CC  2C 19 FF FF */	cmpwi r25, -1
/* 803D84D0  41 82 00 40 */	beq lbl_803D8510
/* 803D84D4  1C 19 09 88 */	mulli r0, r25, 0x988
/* 803D84D8  7F E3 FB 78 */	mr r3, r31
/* 803D84DC  7F 25 CB 78 */	mr r5, r25
/* 803D84E0  7C 9C 02 14 */	add r4, r28, r0
/* 803D84E4  3C 84 00 01 */	addis r4, r4, 1
/* 803D84E8  38 84 74 38 */	addi r4, r4, 0x7438
/* 803D84EC  4B FF F6 4D */	bl mNpcW_SetNpcWalkInfo
/* 803D84F0  A0 7E 00 8C */	lhz r3, 0x8c(r30)
/* 803D84F4  7F A0 C8 30 */	slw r0, r29, r25
/* 803D84F8  3B FF 00 1C */	addi r31, r31, 0x1c
/* 803D84FC  3B 18 00 01 */	addi r24, r24, 1
/* 803D8500  7C 60 03 78 */	or r0, r3, r0
/* 803D8504  B0 1E 00 8C */	sth r0, 0x8c(r30)
lbl_803D8508:
/* 803D8508  7C 18 D0 00 */	cmpw r24, r26
/* 803D850C  41 80 FF B0 */	blt lbl_803D84BC
lbl_803D8510:
/* 803D8510  7F C3 F3 78 */	mr r3, r30
/* 803D8514  7F 64 DB 78 */	mr r4, r27
/* 803D8518  4B FF FD A5 */	bl mNpcW_InitGoalBlockSource
/* 803D851C  39 61 00 30 */	addi r11, r1, 0x30
/* 803D8520  4B CC 29 ED */	bl func_8009AF0C
/* 803D8524  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D8528  7C 08 03 A6 */	mtlr r0
/* 803D852C  38 21 00 30 */	addi r1, r1, 0x30
/* 803D8530  4E 80 00 20 */	blr 
