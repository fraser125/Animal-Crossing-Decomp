lbl_8057B0EC:
/* 8057B0EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057B0F0  7C 08 02 A6 */	mflr r0
/* 8057B0F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057B0F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B0FC  4B B1 FD D5 */	bl func_8009AED0
/* 8057B100  7C 7C 1B 78 */	mr r28, r3
/* 8057B104  7C 9D 23 78 */	mr r29, r4
/* 8057B108  4B E4 45 A1 */	bl func_803BF6A8
/* 8057B10C  7C 7E 1B 78 */	mr r30, r3
/* 8057B110  4B E4 46 55 */	bl mMsg_Check_not_series_main_wait
/* 8057B114  2C 03 00 01 */	cmpwi r3, 1
/* 8057B118  40 82 00 6C */	bne lbl_8057B184
/* 8057B11C  80 7D 1F 60 */	lwz r3, 0x1f60(r29)
/* 8057B120  38 00 00 00 */	li r0, 0
/* 8057B124  A0 63 00 00 */	lhz r3, 0(r3)
/* 8057B128  28 03 00 00 */	cmplwi r3, 0
/* 8057B12C  41 82 00 14 */	beq lbl_8057B140
/* 8057B130  B0 7C 09 F4 */	sth r3, 0x9f4(r28)
/* 8057B134  38 80 00 02 */	li r4, 2
/* 8057B138  4B FF C4 E1 */	bl aNSC_set_item_name_str
/* 8057B13C  38 00 00 01 */	li r0, 1
lbl_8057B140:
/* 8057B140  3C 60 80 6C */	lis r3, msg_no_1794@ha /* 0x806C03CC@ha */
/* 8057B144  54 1F 10 3A */	slwi r31, r0, 2
/* 8057B148  38 63 03 CC */	addi r3, r3, msg_no_1794@l /* 0x806C03CC@l */
/* 8057B14C  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8057B150  4B FF D1 2D */	bl aNSC_get_msg_no
/* 8057B154  7C 65 1B 78 */	mr r5, r3
/* 8057B158  7F C3 F3 78 */	mr r3, r30
/* 8057B15C  7F 84 E3 78 */	mr r4, r28
/* 8057B160  4B FF D1 A5 */	bl aNSC_ChangeMsgData
/* 8057B164  7F C3 F3 78 */	mr r3, r30
/* 8057B168  4B E4 5B C1 */	bl mMsg_Set_ForceNext
/* 8057B16C  3C 80 80 6C */	lis r4, next_act_idx_1795@ha /* 0x806C03D4@ha */
/* 8057B170  7F 83 E3 78 */	mr r3, r28
/* 8057B174  38 A4 03 D4 */	addi r5, r4, next_act_idx_1795@l /* 0x806C03D4@l */
/* 8057B178  7F A4 EB 78 */	mr r4, r29
/* 8057B17C  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8057B180  48 00 13 35 */	bl aNSC_setupAction
lbl_8057B184:
/* 8057B184  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B188  4B B1 FD 95 */	bl func_8009AF1C
/* 8057B18C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057B190  7C 08 03 A6 */	mtlr r0
/* 8057B194  38 21 00 20 */	addi r1, r1, 0x20
/* 8057B198  4E 80 00 20 */	blr 
