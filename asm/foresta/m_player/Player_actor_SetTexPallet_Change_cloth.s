lbl_80504668:
/* 80504668  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050466C  7C 08 02 A6 */	mflr r0
/* 80504670  90 01 00 24 */	stw r0, 0x24(r1)
/* 80504674  39 61 00 20 */	addi r11, r1, 0x20
/* 80504678  4B B9 68 5D */	bl func_8009AED4
/* 8050467C  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 80504680  7C 7E 1B 78 */	mr r30, r3
/* 80504684  7C 9D 23 78 */	mr r29, r4
/* 80504688  20 00 00 49 */	subfic r0, r0, 0x49
/* 8050468C  38 7E 01 74 */	addi r3, r30, 0x174
/* 80504690  7C 00 00 34 */	cntlzw r0, r0
/* 80504694  54 1F D9 7F */	rlwinm. r31, r0, 0x1b, 5, 0x1f
/* 80504698  41 82 00 10 */	beq lbl_805046A8
/* 8050469C  3C 80 80 64 */	lis r4, lit_1076@ha /* 0x80646A18@ha */
/* 805046A0  C0 24 6A 18 */	lfs f1, lit_1076@l(r4)  /* 0x80646A18@l */
/* 805046A4  48 00 00 0C */	b lbl_805046B0
lbl_805046A8:
/* 805046A8  3C 80 80 64 */	lis r4, lit_1077@ha /* 0x80646A1C@ha */
/* 805046AC  C0 24 6A 1C */	lfs f1, lit_1077@l(r4)  /* 0x80646A1C@l */
lbl_805046B0:
/* 805046B0  4B FD 2F 51 */	bl Player_actor_Check_AnimationFrame
/* 805046B4  2C 03 00 00 */	cmpwi r3, 0
/* 805046B8  41 82 00 44 */	beq lbl_805046FC
/* 805046BC  2C 1F 00 00 */	cmpwi r31, 0
/* 805046C0  A3 FE 0D 24 */	lhz r31, 0xd24(r30)
/* 805046C4  A3 DE 0D 26 */	lhz r30, 0xd26(r30)
/* 805046C8  40 82 00 28 */	bne lbl_805046F0
/* 805046CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805046D0  7F E4 FB 78 */	mr r4, r31
/* 805046D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805046D8  3C 63 00 02 */	addis r3, r3, 2
/* 805046DC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805046E0  38 63 10 88 */	addi r3, r3, 0x1088
/* 805046E4  4B ED 50 89 */	bl mPlib_change_player_cloth_info
/* 805046E8  7F E3 FB 78 */	mr r3, r31
/* 805046EC  4B ED C4 E1 */	bl mPr_SetItemCollectBit
lbl_805046F0:
/* 805046F0  7F A3 EB 78 */	mr r3, r29
/* 805046F4  7F C4 F3 78 */	mr r4, r30
/* 805046F8  4B ED 4D 81 */	bl mPlib_change_player_cloth
lbl_805046FC:
/* 805046FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80504700  4B B9 68 21 */	bl func_8009AF20
/* 80504704  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80504708  7C 08 03 A6 */	mtlr r0
/* 8050470C  38 21 00 20 */	addi r1, r1, 0x20
/* 80504710  4E 80 00 20 */	blr 
