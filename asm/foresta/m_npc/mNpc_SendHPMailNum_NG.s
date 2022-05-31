lbl_803D69B0:
/* 803D69B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D69B4  7C 08 02 A6 */	mflr r0
/* 803D69B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D69BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D69C0  4B CC 45 11 */	bl func_8009AED0
/* 803D69C4  7C 9D 23 79 */	or. r29, r4, r4
/* 803D69C8  3C 80 81 17 */	lis r4, l_npc_hp_mail@ha /* 0x8116EBB4@ha */
/* 803D69CC  38 04 EB B4 */	addi r0, r4, l_npc_hp_mail@l /* 0x8116EBB4@l */
/* 803D69D0  7C 7C 1B 78 */	mr r28, r3
/* 803D69D4  3B C0 00 00 */	li r30, 0
/* 803D69D8  7C 1F 03 78 */	mr r31, r0
/* 803D69DC  41 82 00 94 */	beq lbl_803D6A70
/* 803D69E0  48 00 84 85 */	bl mPO_get_keep_mail_sum
/* 803D69E4  2C 03 00 05 */	cmpwi r3, 5
/* 803D69E8  40 80 00 88 */	bge lbl_803D6A70
/* 803D69EC  7F E3 FB 78 */	mr r3, r31
/* 803D69F0  4B FE 5D 11 */	bl mMl_clear_mail
/* 803D69F4  88 DD 00 0D */	lbz r6, 0xd(r29)
/* 803D69F8  7F 84 E3 78 */	mr r4, r28
/* 803D69FC  38 60 00 00 */	li r3, 0
/* 803D6A00  38 A0 00 08 */	li r5, 8
/* 803D6A04  3B C6 03 BE */	addi r30, r6, 0x3be
/* 803D6A08  4B FD AF 51 */	bl mHandbill_Set_free_str
/* 803D6A0C  3C 60 81 17 */	lis r3, name_str_4885@ha /* 0x8116ED3C@ha */
/* 803D6A10  38 80 00 08 */	li r4, 8
/* 803D6A14  38 63 ED 3C */	addi r3, r3, name_str_4885@l /* 0x8116ED3C@l */
/* 803D6A18  4B FF 49 19 */	bl mNpc_ClearBufSpace1
/* 803D6A1C  3C 60 81 17 */	lis r3, name_str_4885@ha /* 0x8116ED3C@ha */
/* 803D6A20  7F A4 EB 78 */	mr r4, r29
/* 803D6A24  38 63 ED 3C */	addi r3, r3, name_str_4885@l /* 0x8116ED3C@l */
/* 803D6A28  4B FF AF 29 */	bl mNpc_GetNpcWorldNameAnm
/* 803D6A2C  3C 80 81 17 */	lis r4, name_str_4885@ha /* 0x8116ED3C@ha */
/* 803D6A30  38 60 00 06 */	li r3, 6
/* 803D6A34  38 84 ED 3C */	addi r4, r4, name_str_4885@l /* 0x8116ED3C@l */
/* 803D6A38  38 A0 00 08 */	li r5, 8
/* 803D6A3C  4B FD AF 1D */	bl mHandbill_Set_free_str
/* 803D6A40  4B FF 72 71 */	bl mNpc_GetPaperType
/* 803D6A44  7C 67 1B 78 */	mr r7, r3
/* 803D6A48  7F E3 FB 78 */	mr r3, r31
/* 803D6A4C  7F 84 E3 78 */	mr r4, r28
/* 803D6A50  7F A5 EB 78 */	mr r5, r29
/* 803D6A54  7F C8 F3 78 */	mr r8, r30
/* 803D6A58  38 C0 00 00 */	li r6, 0
/* 803D6A5C  4B FF 72 B5 */	bl mNpc_LoadMailDataCommon2
/* 803D6A60  7F E3 FB 78 */	mr r3, r31
/* 803D6A64  38 80 00 00 */	li r4, 0
/* 803D6A68  48 00 85 F9 */	bl mPO_receipt_proc
/* 803D6A6C  7C 7E 1B 78 */	mr r30, r3
lbl_803D6A70:
/* 803D6A70  7F C3 F3 78 */	mr r3, r30
/* 803D6A74  39 61 00 20 */	addi r11, r1, 0x20
/* 803D6A78  4B CC 44 A5 */	bl func_8009AF1C
/* 803D6A7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D6A80  7C 08 03 A6 */	mtlr r0
/* 803D6A84  38 21 00 20 */	addi r1, r1, 0x20
/* 803D6A88  4E 80 00 20 */	blr 
