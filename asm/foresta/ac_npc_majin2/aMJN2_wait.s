lbl_80557964:
/* 80557964  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80557968  7C 08 02 A6 */	mflr r0
/* 8055796C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80557970  39 61 00 20 */	addi r11, r1, 0x20
/* 80557974  4B B4 35 61 */	bl func_8009AED4
/* 80557978  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055797C  7C 7D 1B 78 */	mr r29, r3
/* 80557980  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80557984  7C 9E 23 78 */	mr r30, r4
/* 80557988  3C 63 00 03 */	addis r3, r3, 3
/* 8055798C  8B E3 88 69 */	lbz r31, -0x7797(r3)
/* 80557990  2C 1F 00 00 */	cmpwi r31, 0
/* 80557994  40 82 00 3C */	bne lbl_805579D0
/* 80557998  7F C3 F3 78 */	mr r3, r30
/* 8055799C  4B FF FE 1D */	bl aMJN2_check_submenu
/* 805579A0  2C 03 00 01 */	cmpwi r3, 1
/* 805579A4  40 82 00 0C */	bne lbl_805579B0
/* 805579A8  3B E0 00 03 */	li r31, 3
/* 805579AC  48 00 00 24 */	b lbl_805579D0
lbl_805579B0:
/* 805579B0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805579B4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805579B8  80 63 00 00 */	lwz r3, 0(r3)
/* 805579BC  4B E8 1C 85 */	bl get_player_actor_withoutCheck
/* 805579C0  80 03 12 14 */	lwz r0, 0x1214(r3)
/* 805579C4  2C 00 00 00 */	cmpwi r0, 0
/* 805579C8  41 82 00 08 */	beq lbl_805579D0
/* 805579CC  3B E0 00 02 */	li r31, 2
lbl_805579D0:
/* 805579D0  2C 1F 00 00 */	cmpwi r31, 0
/* 805579D4  41 82 00 48 */	beq lbl_80557A1C
/* 805579D8  7F A4 EB 78 */	mr r4, r29
/* 805579DC  38 60 00 08 */	li r3, 8
/* 805579E0  4B E4 28 85 */	bl mDemo_Check
/* 805579E4  2C 03 00 00 */	cmpwi r3, 0
/* 805579E8  40 82 00 34 */	bne lbl_80557A1C
/* 805579EC  7F A4 EB 78 */	mr r4, r29
/* 805579F0  38 60 00 07 */	li r3, 7
/* 805579F4  4B E4 28 71 */	bl mDemo_Check
/* 805579F8  2C 03 00 00 */	cmpwi r3, 0
/* 805579FC  40 82 00 20 */	bne lbl_80557A1C
/* 80557A00  3C 60 80 6A */	lis r3, next_act_idx@ha /* 0x806A68AC@ha */
/* 80557A04  57 E0 10 3A */	slwi r0, r31, 2
/* 80557A08  38 83 68 AC */	addi r4, r3, next_act_idx@l /* 0x806A68AC@l */
/* 80557A0C  7F A3 EB 78 */	mr r3, r29
/* 80557A10  7C A4 00 2E */	lwzx r5, r4, r0
/* 80557A14  7F C4 F3 78 */	mr r4, r30
/* 80557A18  48 00 02 49 */	bl aMJN2_setup_think_proc
lbl_80557A1C:
/* 80557A1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80557A20  4B B4 35 01 */	bl func_8009AF20
/* 80557A24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80557A28  7C 08 03 A6 */	mtlr r0
/* 80557A2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80557A30  4E 80 00 20 */	blr 
