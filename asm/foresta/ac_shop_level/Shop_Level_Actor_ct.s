lbl_8049F87C:
/* 8049F87C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049F880  7C 08 02 A6 */	mflr r0
/* 8049F884  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049F888  39 61 00 20 */	addi r11, r1, 0x20
/* 8049F88C  4B BF B6 49 */	bl func_8009AED4
/* 8049F890  7C 9E 23 78 */	mr r30, r4
/* 8049F894  7C 7D 1B 78 */	mr r29, r3
/* 8049F898  7F C3 F3 78 */	mr r3, r30
/* 8049F89C  4B F3 9D A5 */	bl get_player_actor_withoutCheck
/* 8049F8A0  38 00 00 00 */	li r0, 0
/* 8049F8A4  28 03 00 00 */	cmplwi r3, 0
/* 8049F8A8  90 1D 01 74 */	stw r0, 0x174(r29)
/* 8049F8AC  90 1D 01 78 */	stw r0, 0x178(r29)
/* 8049F8B0  41 82 00 0C */	beq lbl_8049F8BC
/* 8049F8B4  38 E3 00 28 */	addi r7, r3, 0x28
/* 8049F8B8  48 00 00 08 */	b lbl_8049F8C0
lbl_8049F8BC:
/* 8049F8BC  38 FD 00 28 */	addi r7, r29, 0x28
lbl_8049F8C0:
/* 8049F8C0  80 C7 00 00 */	lwz r6, 0(r7)
/* 8049F8C4  38 7D 01 74 */	addi r3, r29, 0x174
/* 8049F8C8  80 07 00 04 */	lwz r0, 4(r7)
/* 8049F8CC  38 9D 01 78 */	addi r4, r29, 0x178
/* 8049F8D0  38 A0 00 02 */	li r5, 2
/* 8049F8D4  90 DD 00 28 */	stw r6, 0x28(r29)
/* 8049F8D8  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 8049F8DC  80 07 00 08 */	lwz r0, 8(r7)
/* 8049F8E0  90 1D 00 30 */	stw r0, 0x30(r29)
/* 8049F8E4  4B F0 6B 1D */	bl mFI_BlockKind2BkNum
/* 8049F8E8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049F8EC  7C 7F 1B 78 */	mr r31, r3
/* 8049F8F0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8049F8F4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8049F8F8  2C 00 00 07 */	cmpwi r0, 7
/* 8049F8FC  40 82 00 38 */	bne lbl_8049F934
/* 8049F900  3C 83 00 02 */	addis r4, r3, 2
/* 8049F904  38 A0 00 27 */	li r5, 0x27
/* 8049F908  88 64 60 03 */	lbz r3, 0x6003(r4)
/* 8049F90C  38 C0 00 00 */	li r6, 0
/* 8049F910  38 84 04 0E */	addi r4, r4, 0x40e
/* 8049F914  4B F4 9A BD */	bl mSP_SetShopRareFurnitureChirashi
/* 8049F918  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049F91C  38 80 00 00 */	li r4, 0
/* 8049F920  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049F924  3C 63 00 02 */	addis r3, r3, 2
/* 8049F928  88 03 04 66 */	lbz r0, 0x466(r3)
/* 8049F92C  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 8049F930  98 03 04 66 */	stb r0, 0x466(r3)
lbl_8049F934:
/* 8049F934  2C 1F 00 00 */	cmpwi r31, 0
/* 8049F938  41 82 00 10 */	beq lbl_8049F948
/* 8049F93C  7F A3 EB 78 */	mr r3, r29
/* 8049F940  7F C4 F3 78 */	mr r4, r30
/* 8049F944  4B FF FE 05 */	bl aSL_RenewShop
lbl_8049F948:
/* 8049F948  39 61 00 20 */	addi r11, r1, 0x20
/* 8049F94C  4B BF B5 D5 */	bl func_8009AF20
/* 8049F950  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049F954  7C 08 03 A6 */	mtlr r0
/* 8049F958  38 21 00 20 */	addi r1, r1, 0x20
/* 8049F95C  4E 80 00 20 */	blr 
