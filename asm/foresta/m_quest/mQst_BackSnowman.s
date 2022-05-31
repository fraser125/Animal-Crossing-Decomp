lbl_803E4738:
/* 803E4738  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E473C  7C 08 02 A6 */	mflr r0
/* 803E4740  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E4744  39 61 00 30 */	addi r11, r1, 0x30
/* 803E4748  4B CB 67 8D */	bl func_8009AED4
/* 803E474C  7C 7D 1B 78 */	mr r29, r3
/* 803E4750  38 60 00 02 */	li r3, 2
/* 803E4754  4B FF EE 11 */	bl mQst_GetOccuredContestIdx
/* 803E4758  2C 03 FF FF */	cmpwi r3, -1
/* 803E475C  41 82 00 88 */	beq lbl_803E47E4
/* 803E4760  1C 83 09 88 */	mulli r4, r3, 0x988
/* 803E4764  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E4768  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803E476C  7C 60 22 14 */	add r3, r0, r4
/* 803E4770  3F C3 00 01 */	addis r30, r3, 1
/* 803E4774  88 1E 7C E1 */	lbz r0, 0x7ce1(r30)
/* 803E4778  3B FE 7C E0 */	addi r31, r30, 0x7ce0
/* 803E477C  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803E4780  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 803E4784  28 00 00 01 */	cmplwi r0, 1
/* 803E4788  40 82 00 5C */	bne lbl_803E47E4
/* 803E478C  80 FD 00 00 */	lwz r7, 0(r29)
/* 803E4790  38 61 00 0C */	addi r3, r1, 0xc
/* 803E4794  80 DD 00 04 */	lwz r6, 4(r29)
/* 803E4798  38 81 00 08 */	addi r4, r1, 8
/* 803E479C  80 1D 00 08 */	lwz r0, 8(r29)
/* 803E47A0  38 A1 00 10 */	addi r5, r1, 0x10
/* 803E47A4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803E47A8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803E47AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 803E47B0  4B FC 0F B1 */	bl mFI_Wpos2BlockNum
/* 803E47B4  2C 03 00 01 */	cmpwi r3, 1
/* 803E47B8  40 82 00 2C */	bne lbl_803E47E4
/* 803E47BC  88 7E 08 99 */	lbz r3, 0x899(r30)
/* 803E47C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803E47C4  7C 03 00 00 */	cmpw r3, r0
/* 803E47C8  40 82 00 1C */	bne lbl_803E47E4
/* 803E47CC  88 7E 08 9A */	lbz r3, 0x89a(r30)
/* 803E47D0  80 01 00 08 */	lwz r0, 8(r1)
/* 803E47D4  7C 03 00 00 */	cmpw r3, r0
/* 803E47D8  40 82 00 0C */	bne lbl_803E47E4
/* 803E47DC  38 7F 00 0E */	addi r3, r31, 0xe
/* 803E47E0  4B FF B8 AD */	bl mPr_ClearPersonalID
lbl_803E47E4:
/* 803E47E4  39 61 00 30 */	addi r11, r1, 0x30
/* 803E47E8  4B CB 67 39 */	bl func_8009AF20
/* 803E47EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E47F0  7C 08 03 A6 */	mtlr r0
/* 803E47F4  38 21 00 30 */	addi r1, r1, 0x30
/* 803E47F8  4E 80 00 20 */	blr 
