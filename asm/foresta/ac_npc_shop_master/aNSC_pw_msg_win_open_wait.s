lbl_8057AEEC:
/* 8057AEEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057AEF0  7C 08 02 A6 */	mflr r0
/* 8057AEF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057AEF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057AEFC  4B B1 FF D5 */	bl func_8009AED0
/* 8057AF00  7C 7C 1B 78 */	mr r28, r3
/* 8057AF04  7C 9D 23 78 */	mr r29, r4
/* 8057AF08  4B E4 47 A1 */	bl func_803BF6A8
/* 8057AF0C  7C 7E 1B 78 */	mr r30, r3
/* 8057AF10  4B E4 48 55 */	bl mMsg_Check_not_series_main_wait
/* 8057AF14  2C 03 00 01 */	cmpwi r3, 1
/* 8057AF18  40 82 00 68 */	bne lbl_8057AF80
/* 8057AF1C  3B E0 00 00 */	li r31, 0
/* 8057AF20  4B E3 8B 7D */	bl mLd_GetLandName
/* 8057AF24  7C 64 1B 78 */	mr r4, r3
/* 8057AF28  38 7C 09 C8 */	addi r3, r28, 0x9c8
/* 8057AF2C  4B E3 88 E1 */	bl mLd_CheckCmpLandName
/* 8057AF30  2C 03 00 00 */	cmpwi r3, 0
/* 8057AF34  40 82 00 08 */	bne lbl_8057AF3C
/* 8057AF38  3B E0 00 01 */	li r31, 1
lbl_8057AF3C:
/* 8057AF3C  3C 60 80 6C */	lis r3, msg_no_1761@ha /* 0x806C03B0@ha */
/* 8057AF40  57 FF 10 3A */	slwi r31, r31, 2
/* 8057AF44  38 63 03 B0 */	addi r3, r3, msg_no_1761@l /* 0x806C03B0@l */
/* 8057AF48  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8057AF4C  4B FF D3 31 */	bl aNSC_get_msg_no
/* 8057AF50  7C 65 1B 78 */	mr r5, r3
/* 8057AF54  7F C3 F3 78 */	mr r3, r30
/* 8057AF58  7F 84 E3 78 */	mr r4, r28
/* 8057AF5C  4B FF D3 A9 */	bl aNSC_ChangeMsgData
/* 8057AF60  7F C3 F3 78 */	mr r3, r30
/* 8057AF64  4B E4 5D C5 */	bl mMsg_Set_ForceNext
/* 8057AF68  3C 80 80 6C */	lis r4, next_act_idx_1762@ha /* 0x806C03B8@ha */
/* 8057AF6C  7F 83 E3 78 */	mr r3, r28
/* 8057AF70  38 A4 03 B8 */	addi r5, r4, next_act_idx_1762@l /* 0x806C03B8@l */
/* 8057AF74  7F A4 EB 78 */	mr r4, r29
/* 8057AF78  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8057AF7C  48 00 15 39 */	bl aNSC_setupAction
lbl_8057AF80:
/* 8057AF80  39 61 00 20 */	addi r11, r1, 0x20
/* 8057AF84  4B B1 FF 99 */	bl func_8009AF1C
/* 8057AF88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057AF8C  7C 08 03 A6 */	mtlr r0
/* 8057AF90  38 21 00 20 */	addi r1, r1, 0x20
/* 8057AF94  4E 80 00 20 */	blr 
