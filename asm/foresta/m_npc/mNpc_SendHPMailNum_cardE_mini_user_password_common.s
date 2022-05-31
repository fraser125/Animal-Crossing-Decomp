lbl_803D6A8C:
/* 803D6A8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D6A90  7C 08 02 A6 */	mflr r0
/* 803D6A94  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D6A98  39 61 00 20 */	addi r11, r1, 0x20
/* 803D6A9C  4B CC 44 31 */	bl func_8009AECC
/* 803D6AA0  7C 9C 23 78 */	mr r28, r4
/* 803D6AA4  3C 80 81 17 */	lis r4, l_npc_hp_mail@ha /* 0x8116EBB4@ha */
/* 803D6AA8  38 04 EB B4 */	addi r0, r4, l_npc_hp_mail@l /* 0x8116EBB4@l */
/* 803D6AAC  8B DC 00 0D */	lbz r30, 0xd(r28)
/* 803D6AB0  7C 7B 1B 78 */	mr r27, r3
/* 803D6AB4  3B A0 00 00 */	li r29, 0
/* 803D6AB8  7C 1F 03 78 */	mr r31, r0
/* 803D6ABC  48 00 83 A9 */	bl mPO_get_keep_mail_sum
/* 803D6AC0  2C 03 00 05 */	cmpwi r3, 5
/* 803D6AC4  40 80 00 78 */	bge lbl_803D6B3C
/* 803D6AC8  2C 1E 00 06 */	cmpwi r30, 6
/* 803D6ACC  40 80 00 70 */	bge lbl_803D6B3C
/* 803D6AD0  7F E3 FB 78 */	mr r3, r31
/* 803D6AD4  4B FE 5C 2D */	bl mMl_clear_mail
/* 803D6AD8  3C 60 81 17 */	lis r3, name_str_4893@ha /* 0x8116ED4C@ha */
/* 803D6ADC  38 80 00 08 */	li r4, 8
/* 803D6AE0  38 63 ED 4C */	addi r3, r3, name_str_4893@l /* 0x8116ED4C@l */
/* 803D6AE4  4B FF 48 4D */	bl mNpc_ClearBufSpace1
/* 803D6AE8  3C 60 81 17 */	lis r3, name_str_4893@ha /* 0x8116ED4C@ha */
/* 803D6AEC  7F 84 E3 78 */	mr r4, r28
/* 803D6AF0  38 63 ED 4C */	addi r3, r3, name_str_4893@l /* 0x8116ED4C@l */
/* 803D6AF4  4B FF AE 5D */	bl mNpc_GetNpcWorldNameAnm
/* 803D6AF8  3C 80 81 17 */	lis r4, name_str_4893@ha /* 0x8116ED4C@ha */
/* 803D6AFC  38 60 00 06 */	li r3, 6
/* 803D6B00  38 84 ED 4C */	addi r4, r4, name_str_4893@l /* 0x8116ED4C@l */
/* 803D6B04  38 A0 00 08 */	li r5, 8
/* 803D6B08  4B FD AE 51 */	bl mHandbill_Set_free_str
/* 803D6B0C  4B FF 71 A5 */	bl mNpc_GetPaperType
/* 803D6B10  7C 67 1B 78 */	mr r7, r3
/* 803D6B14  7F E3 FB 78 */	mr r3, r31
/* 803D6B18  7F 64 DB 78 */	mr r4, r27
/* 803D6B1C  7F 85 E3 78 */	mr r5, r28
/* 803D6B20  39 1E 03 D0 */	addi r8, r30, 0x3d0
/* 803D6B24  38 C0 00 00 */	li r6, 0
/* 803D6B28  4B FF 71 E9 */	bl mNpc_LoadMailDataCommon2
/* 803D6B2C  7F E3 FB 78 */	mr r3, r31
/* 803D6B30  38 80 00 00 */	li r4, 0
/* 803D6B34  48 00 85 2D */	bl mPO_receipt_proc
/* 803D6B38  7C 7D 1B 78 */	mr r29, r3
lbl_803D6B3C:
/* 803D6B3C  7F A3 EB 78 */	mr r3, r29
/* 803D6B40  39 61 00 20 */	addi r11, r1, 0x20
/* 803D6B44  4B CC 43 D5 */	bl func_8009AF18
/* 803D6B48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D6B4C  7C 08 03 A6 */	mtlr r0
/* 803D6B50  38 21 00 20 */	addi r1, r1, 0x20
/* 803D6B54  4E 80 00 20 */	blr 
