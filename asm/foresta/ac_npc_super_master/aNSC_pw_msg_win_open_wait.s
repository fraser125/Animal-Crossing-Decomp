lbl_805849F8:
/* 805849F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805849FC  7C 08 02 A6 */	mflr r0
/* 80584A00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80584A04  39 61 00 20 */	addi r11, r1, 0x20
/* 80584A08  4B B1 64 C9 */	bl func_8009AED0
/* 80584A0C  7C 7C 1B 78 */	mr r28, r3
/* 80584A10  7C 9D 23 78 */	mr r29, r4
/* 80584A14  4B E3 AC 95 */	bl func_803BF6A8
/* 80584A18  7C 7E 1B 78 */	mr r30, r3
/* 80584A1C  4B E3 AD 49 */	bl mMsg_Check_not_series_main_wait
/* 80584A20  2C 03 00 01 */	cmpwi r3, 1
/* 80584A24  40 82 00 68 */	bne lbl_80584A8C
/* 80584A28  3B E0 00 00 */	li r31, 0
/* 80584A2C  4B E2 F0 71 */	bl mLd_GetLandName
/* 80584A30  7C 64 1B 78 */	mr r4, r3
/* 80584A34  38 7C 09 C8 */	addi r3, r28, 0x9c8
/* 80584A38  4B E2 ED D5 */	bl mLd_CheckCmpLandName
/* 80584A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80584A40  40 82 00 08 */	bne lbl_80584A48
/* 80584A44  3B E0 00 01 */	li r31, 1
lbl_80584A48:
/* 80584A48  3C 60 80 6C */	lis r3, msg_no_1801@ha /* 0x806C18F4@ha */
/* 80584A4C  57 FF 10 3A */	slwi r31, r31, 2
/* 80584A50  38 63 18 F4 */	addi r3, r3, msg_no_1801@l /* 0x806C18F4@l */
/* 80584A54  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80584A58  4B FF D3 31 */	bl aNSC_get_msg_no
/* 80584A5C  7C 65 1B 78 */	mr r5, r3
/* 80584A60  7F C3 F3 78 */	mr r3, r30
/* 80584A64  7F 84 E3 78 */	mr r4, r28
/* 80584A68  4B FF D3 A9 */	bl aNSC_ChangeMsgData
/* 80584A6C  7F C3 F3 78 */	mr r3, r30
/* 80584A70  4B E3 C2 B9 */	bl mMsg_Set_ForceNext
/* 80584A74  3C 80 80 6C */	lis r4, next_act_idx_1802@ha /* 0x806C18FC@ha */
/* 80584A78  7F 83 E3 78 */	mr r3, r28
/* 80584A7C  38 A4 18 FC */	addi r5, r4, next_act_idx_1802@l /* 0x806C18FC@l */
/* 80584A80  7F A4 EB 78 */	mr r4, r29
/* 80584A84  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80584A88  48 00 15 39 */	bl aNSC_setupAction
lbl_80584A8C:
/* 80584A8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80584A90  4B B1 64 8D */	bl func_8009AF1C
/* 80584A94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80584A98  7C 08 03 A6 */	mtlr r0
/* 80584A9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80584AA0  4E 80 00 20 */	blr 
