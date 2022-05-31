lbl_803E458C:
/* 803E458C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E4590  7C 08 02 A6 */	mflr r0
/* 803E4594  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E4598  39 61 00 20 */	addi r11, r1, 0x20
/* 803E459C  4B CB 69 39 */	bl func_8009AED4
/* 803E45A0  7C 7D 1B 78 */	mr r29, r3
/* 803E45A4  3B C0 00 00 */	li r30, 0
/* 803E45A8  38 60 00 01 */	li r3, 1
/* 803E45AC  4B FF EF B9 */	bl mQst_GetOccuredContestIdx
/* 803E45B0  2C 03 FF FF */	cmpwi r3, -1
/* 803E45B4  41 82 00 98 */	beq lbl_803E464C
/* 803E45B8  28 1D 00 00 */	cmplwi r29, 0
/* 803E45BC  41 82 00 90 */	beq lbl_803E464C
/* 803E45C0  1C 03 09 88 */	mulli r0, r3, 0x988
/* 803E45C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E45C8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E45CC  7C 64 02 14 */	add r3, r4, r0
/* 803E45D0  3F E3 00 01 */	addis r31, r3, 1
/* 803E45D4  88 1F 7C E1 */	lbz r0, 0x7ce1(r31)
/* 803E45D8  3B FF 7C E0 */	addi r31, r31, 0x7ce0
/* 803E45DC  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 803E45E0  28 00 00 02 */	cmplwi r0, 2
/* 803E45E4  40 82 00 68 */	bne lbl_803E464C
/* 803E45E8  3C 64 00 02 */	addis r3, r4, 2
/* 803E45EC  80 63 60 4C */	lwz r3, 0x604c(r3)
/* 803E45F0  28 03 00 00 */	cmplwi r3, 0
/* 803E45F4  41 82 00 58 */	beq lbl_803E464C
/* 803E45F8  80 9D 01 7C */	lwz r4, 0x17c(r29)
/* 803E45FC  28 04 00 00 */	cmplwi r4, 0
/* 803E4600  41 82 00 08 */	beq lbl_803E4608
/* 803E4604  8B C4 00 0D */	lbz r30, 0xd(r4)
lbl_803E4608:
/* 803E4608  81 83 01 24 */	lwz r12, 0x124(r3)
/* 803E460C  7F A3 EB 78 */	mr r3, r29
/* 803E4610  38 9E 0D 8B */	addi r4, r30, 0xd8b
/* 803E4614  7D 89 03 A6 */	mtctr r12
/* 803E4618  4E 80 04 21 */	bctrl 
/* 803E461C  2C 03 00 01 */	cmpwi r3, 1
/* 803E4620  40 82 00 2C */	bne lbl_803E464C
/* 803E4624  88 1F 00 01 */	lbz r0, 1(r31)
/* 803E4628  38 60 00 01 */	li r3, 1
/* 803E462C  50 60 1E 78 */	rlwimi r0, r3, 3, 0x19, 0x1c
/* 803E4630  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E4634  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E4638  98 1F 00 01 */	stb r0, 1(r31)
/* 803E463C  3C 83 00 02 */	addis r4, r3, 2
/* 803E4640  38 7F 00 0E */	addi r3, r31, 0xe
/* 803E4644  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803E4648  4B FF BA D9 */	bl mPr_CopyPersonalID
lbl_803E464C:
/* 803E464C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E4650  4B CB 68 D1 */	bl func_8009AF20
/* 803E4654  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E4658  7C 08 03 A6 */	mtlr r0
/* 803E465C  38 21 00 20 */	addi r1, r1, 0x20
/* 803E4660  4E 80 00 20 */	blr 
