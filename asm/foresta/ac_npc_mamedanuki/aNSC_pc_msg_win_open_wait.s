lbl_8055DE80:
/* 8055DE80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055DE84  7C 08 02 A6 */	mflr r0
/* 8055DE88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055DE8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DE90  4B B3 D0 41 */	bl func_8009AED0
/* 8055DE94  7C 7C 1B 78 */	mr r28, r3
/* 8055DE98  7C 9D 23 78 */	mr r29, r4
/* 8055DE9C  4B E6 18 0D */	bl func_803BF6A8
/* 8055DEA0  7C 7E 1B 78 */	mr r30, r3
/* 8055DEA4  4B E6 18 C1 */	bl mMsg_Check_not_series_main_wait
/* 8055DEA8  2C 03 00 01 */	cmpwi r3, 1
/* 8055DEAC  40 82 00 50 */	bne lbl_8055DEFC
/* 8055DEB0  7F 83 E3 78 */	mr r3, r28
/* 8055DEB4  4B FF CD 61 */	bl aNSC_pc_check_password
/* 8055DEB8  3C 80 80 6B */	lis r4, msg_no_1738@ha /* 0x806A9FBC@ha */
/* 8055DEBC  54 7F 10 3A */	slwi r31, r3, 2
/* 8055DEC0  38 64 9F BC */	addi r3, r4, msg_no_1738@l /* 0x806A9FBC@l */
/* 8055DEC4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8055DEC8  4B FF D7 15 */	bl aNSC_get_msg_no
/* 8055DECC  7C 65 1B 78 */	mr r5, r3
/* 8055DED0  7F C3 F3 78 */	mr r3, r30
/* 8055DED4  7F 84 E3 78 */	mr r4, r28
/* 8055DED8  4B FF D7 7D */	bl aNSC_ChangeMsgData
/* 8055DEDC  7F C3 F3 78 */	mr r3, r30
/* 8055DEE0  4B E6 2E 49 */	bl mMsg_Set_ForceNext
/* 8055DEE4  3C 80 80 6B */	lis r4, next_act_idx_1739@ha /* 0x806A9FE4@ha */
/* 8055DEE8  7F 83 E3 78 */	mr r3, r28
/* 8055DEEC  38 A4 9F E4 */	addi r5, r4, next_act_idx_1739@l /* 0x806A9FE4@l */
/* 8055DEF0  7F A4 EB 78 */	mr r4, r29
/* 8055DEF4  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8055DEF8  48 00 0E D9 */	bl aNSC_setupAction
lbl_8055DEFC:
/* 8055DEFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DF00  4B B3 D0 1D */	bl func_8009AF1C
/* 8055DF04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055DF08  7C 08 03 A6 */	mtlr r0
/* 8055DF0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8055DF10  4E 80 00 20 */	blr 
