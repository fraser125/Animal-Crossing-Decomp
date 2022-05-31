lbl_8055126C:
/* 8055126C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80551270  7C 08 02 A6 */	mflr r0
/* 80551274  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551278  39 61 00 20 */	addi r11, r1, 0x20
/* 8055127C  4B B4 9C 55 */	bl func_8009AED0
/* 80551280  7C 7C 1B 78 */	mr r28, r3
/* 80551284  7C 9D 23 78 */	mr r29, r4
/* 80551288  4B E6 E4 21 */	bl func_803BF6A8
/* 8055128C  7C 7E 1B 78 */	mr r30, r3
/* 80551290  4B E6 E4 D5 */	bl mMsg_Check_not_series_main_wait
/* 80551294  2C 03 00 01 */	cmpwi r3, 1
/* 80551298  40 82 00 68 */	bne lbl_80551300
/* 8055129C  3B E0 00 00 */	li r31, 0
/* 805512A0  4B E6 27 FD */	bl mLd_GetLandName
/* 805512A4  7C 64 1B 78 */	mr r4, r3
/* 805512A8  38 7C 09 C8 */	addi r3, r28, 0x9c8
/* 805512AC  4B E6 25 61 */	bl mLd_CheckCmpLandName
/* 805512B0  2C 03 00 00 */	cmpwi r3, 0
/* 805512B4  40 82 00 08 */	bne lbl_805512BC
/* 805512B8  3B E0 00 01 */	li r31, 1
lbl_805512BC:
/* 805512BC  3C 60 80 6A */	lis r3, msg_no_1786@ha /* 0x806A5DEC@ha */
/* 805512C0  57 FF 10 3A */	slwi r31, r31, 2
/* 805512C4  38 63 5D EC */	addi r3, r3, msg_no_1786@l /* 0x806A5DEC@l */
/* 805512C8  7C 63 F8 2E */	lwzx r3, r3, r31
/* 805512CC  4B FF D3 31 */	bl aNSC_get_msg_no
/* 805512D0  7C 65 1B 78 */	mr r5, r3
/* 805512D4  7F C3 F3 78 */	mr r3, r30
/* 805512D8  7F 84 E3 78 */	mr r4, r28
/* 805512DC  4B FF D3 A9 */	bl aNSC_ChangeMsgData
/* 805512E0  7F C3 F3 78 */	mr r3, r30
/* 805512E4  4B E6 FA 45 */	bl mMsg_Set_ForceNext
/* 805512E8  3C 80 80 6A */	lis r4, next_act_idx_1787@ha /* 0x806A5DF4@ha */
/* 805512EC  7F 83 E3 78 */	mr r3, r28
/* 805512F0  38 A4 5D F4 */	addi r5, r4, next_act_idx_1787@l /* 0x806A5DF4@l */
/* 805512F4  7F A4 EB 78 */	mr r4, r29
/* 805512F8  7C A5 F8 2E */	lwzx r5, r5, r31
/* 805512FC  48 00 15 39 */	bl aNSC_setupAction
lbl_80551300:
/* 80551300  39 61 00 20 */	addi r11, r1, 0x20
/* 80551304  4B B4 9C 19 */	bl func_8009AF1C
/* 80551308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055130C  7C 08 03 A6 */	mtlr r0
/* 80551310  38 21 00 20 */	addi r1, r1, 0x20
/* 80551314  4E 80 00 20 */	blr 
