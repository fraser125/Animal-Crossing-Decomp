lbl_803E4664:
/* 803E4664  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E4668  7C 08 02 A6 */	mflr r0
/* 803E466C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E4670  39 61 00 30 */	addi r11, r1, 0x30
/* 803E4674  4B CB 68 61 */	bl func_8009AED4
/* 803E4678  7C 7D 1B 78 */	mr r29, r3
/* 803E467C  38 60 00 02 */	li r3, 2
/* 803E4680  4B FF EE E5 */	bl mQst_GetOccuredContestIdx
/* 803E4684  2C 03 FF FF */	cmpwi r3, -1
/* 803E4688  41 82 00 98 */	beq lbl_803E4720
/* 803E468C  1C 83 09 88 */	mulli r4, r3, 0x988
/* 803E4690  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E4694  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803E4698  7C 60 22 14 */	add r3, r0, r4
/* 803E469C  3F C3 00 01 */	addis r30, r3, 1
/* 803E46A0  88 1E 7C E1 */	lbz r0, 0x7ce1(r30)
/* 803E46A4  3B FE 7C E0 */	addi r31, r30, 0x7ce0
/* 803E46A8  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803E46AC  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 803E46B0  28 00 00 01 */	cmplwi r0, 1
/* 803E46B4  40 82 00 6C */	bne lbl_803E4720
/* 803E46B8  80 FD 00 00 */	lwz r7, 0(r29)
/* 803E46BC  38 61 00 0C */	addi r3, r1, 0xc
/* 803E46C0  80 DD 00 04 */	lwz r6, 4(r29)
/* 803E46C4  38 81 00 08 */	addi r4, r1, 8
/* 803E46C8  80 1D 00 08 */	lwz r0, 8(r29)
/* 803E46CC  38 A1 00 10 */	addi r5, r1, 0x10
/* 803E46D0  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803E46D4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803E46D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 803E46DC  4B FC 10 85 */	bl mFI_Wpos2BlockNum
/* 803E46E0  2C 03 00 01 */	cmpwi r3, 1
/* 803E46E4  40 82 00 3C */	bne lbl_803E4720
/* 803E46E8  88 7E 08 99 */	lbz r3, 0x899(r30)
/* 803E46EC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803E46F0  7C 03 00 00 */	cmpw r3, r0
/* 803E46F4  40 82 00 2C */	bne lbl_803E4720
/* 803E46F8  88 7E 08 9A */	lbz r3, 0x89a(r30)
/* 803E46FC  80 01 00 08 */	lwz r0, 8(r1)
/* 803E4700  7C 03 00 00 */	cmpw r3, r0
/* 803E4704  40 82 00 1C */	bne lbl_803E4720
/* 803E4708  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E470C  38 7F 00 0E */	addi r3, r31, 0xe
/* 803E4710  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E4714  3C 84 00 02 */	addis r4, r4, 2
/* 803E4718  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803E471C  4B FF BA 05 */	bl mPr_CopyPersonalID
lbl_803E4720:
/* 803E4720  39 61 00 30 */	addi r11, r1, 0x30
/* 803E4724  4B CB 67 FD */	bl func_8009AF20
/* 803E4728  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E472C  7C 08 03 A6 */	mtlr r0
/* 803E4730  38 21 00 30 */	addi r1, r1, 0x30
/* 803E4734  4E 80 00 20 */	blr 
