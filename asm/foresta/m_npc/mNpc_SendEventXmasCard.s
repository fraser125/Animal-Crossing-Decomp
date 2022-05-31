lbl_803CE670:
/* 803CE670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CE674  7C 08 02 A6 */	mflr r0
/* 803CE678  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CE67C  39 61 00 20 */	addi r11, r1, 0x20
/* 803CE680  4B CC C8 4D */	bl func_8009AECC
/* 803CE684  3C A0 81 17 */	lis r5, l_npc_mail@ha /* 0x8116B428@ha */
/* 803CE688  7C 7B 1B 78 */	mr r27, r3
/* 803CE68C  38 05 B4 28 */	addi r0, r5, l_npc_mail@l /* 0x8116B428@l */
/* 803CE690  7C 9D 23 78 */	mr r29, r4
/* 803CE694  7C 1E 03 78 */	mr r30, r0
/* 803CE698  3B 80 00 00 */	li r28, 0
/* 803CE69C  48 01 19 A9 */	bl mPr_NullCheckPersonalID
/* 803CE6A0  2C 03 00 00 */	cmpwi r3, 0
/* 803CE6A4  40 82 00 7C */	bne lbl_803CE720
/* 803CE6A8  7F A3 EB 78 */	mr r3, r29
/* 803CE6AC  4B FE 4F 0D */	bl mHS_get_arrange_idx
/* 803CE6B0  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803CE6B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CE6B8  7F 63 DB 78 */	mr r3, r27
/* 803CE6BC  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803CE6C0  7C 80 2A 14 */	add r4, r0, r5
/* 803CE6C4  3F A4 00 01 */	addis r29, r4, 1
/* 803CE6C8  3B BD 9C E8 */	addi r29, r29, -25368
/* 803CE6CC  7F A4 EB 78 */	mr r4, r29
/* 803CE6D0  48 01 1A 75 */	bl mPr_CheckCmpPersonalID
/* 803CE6D4  2C 03 00 01 */	cmpwi r3, 1
/* 803CE6D8  40 82 00 48 */	bne lbl_803CE720
/* 803CE6DC  38 7D 1A 30 */	addi r3, r29, 0x1a30
/* 803CE6E0  38 80 00 0A */	li r4, 0xa
/* 803CE6E4  4B FE E1 C1 */	bl mMl_chk_mail_free_space
/* 803CE6E8  7C 7F 1B 78 */	mr r31, r3
/* 803CE6EC  2C 1F FF FF */	cmpwi r31, -1
/* 803CE6F0  41 82 00 30 */	beq lbl_803CE720
/* 803CE6F4  7F C3 F3 78 */	mr r3, r30
/* 803CE6F8  4B FE E0 09 */	bl mMl_clear_mail
/* 803CE6FC  7F C3 F3 78 */	mr r3, r30
/* 803CE700  7F 64 DB 78 */	mr r4, r27
/* 803CE704  4B FF FE E5 */	bl mNpc_GetXmasCardData
/* 803CE708  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 803CE70C  7F C4 F3 78 */	mr r4, r30
/* 803CE710  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 803CE714  7C 7D 1A 14 */	add r3, r29, r3
/* 803CE718  4B FE E2 5D */	bl mMl_copy_mail
/* 803CE71C  3B 80 00 01 */	li r28, 1
lbl_803CE720:
/* 803CE720  7F 83 E3 78 */	mr r3, r28
/* 803CE724  39 61 00 20 */	addi r11, r1, 0x20
/* 803CE728  4B CC C7 F1 */	bl func_8009AF18
/* 803CE72C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CE730  7C 08 03 A6 */	mtlr r0
/* 803CE734  38 21 00 20 */	addi r1, r1, 0x20
/* 803CE738  4E 80 00 20 */	blr 
