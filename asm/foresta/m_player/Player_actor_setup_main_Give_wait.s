lbl_804FC068:
/* 804FC068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FC06C  7C 08 02 A6 */	mflr r0
/* 804FC070  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FC074  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC078  4B B9 EE 5D */	bl func_8009AED4
/* 804FC07C  7C 7F 1B 78 */	mr r31, r3
/* 804FC080  A0 63 0D 6C */	lhz r3, 0xd6c(r3)
/* 804FC084  80 1F 0D 60 */	lwz r0, 0xd60(r31)
/* 804FC088  7C 9D 23 78 */	mr r29, r4
/* 804FC08C  90 1F 0D 18 */	stw r0, 0xd18(r31)
/* 804FC090  80 1F 0D 64 */	lwz r0, 0xd64(r31)
/* 804FC094  90 1F 0D 1C */	stw r0, 0xd1c(r31)
/* 804FC098  80 1F 0D 68 */	lwz r0, 0xd68(r31)
/* 804FC09C  90 1F 0D 20 */	stw r0, 0xd20(r31)
/* 804FC0A0  80 1F 0D 70 */	lwz r0, 0xd70(r31)
/* 804FC0A4  90 1F 0D 24 */	stw r0, 0xd24(r31)
/* 804FC0A8  4B FD EE DD */	bl Player_actor_check_item_is_fish
/* 804FC0AC  2C 03 00 00 */	cmpwi r3, 0
/* 804FC0B0  41 82 00 0C */	beq lbl_804FC0BC
/* 804FC0B4  3B C0 00 5E */	li r30, 0x5e
/* 804FC0B8  48 00 00 1C */	b lbl_804FC0D4
lbl_804FC0BC:
/* 804FC0BC  80 1F 0D 24 */	lwz r0, 0xd24(r31)
/* 804FC0C0  2C 00 00 00 */	cmpwi r0, 0
/* 804FC0C4  41 82 00 0C */	beq lbl_804FC0D0
/* 804FC0C8  3B C0 00 00 */	li r30, 0
/* 804FC0CC  48 00 00 08 */	b lbl_804FC0D4
lbl_804FC0D0:
/* 804FC0D0  3B C0 00 0F */	li r30, 0xf
lbl_804FC0D4:
/* 804FC0D4  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804FC0D8  7F E3 FB 78 */	mr r3, r31
/* 804FC0DC  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804FC0E0  7F C4 F3 78 */	mr r4, r30
/* 804FC0E4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FC0E8  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FC0EC  38 C1 00 08 */	addi r6, r1, 8
/* 804FC0F0  4B FD DE 71 */	bl Player_actor_SetupItem_Base1
/* 804FC0F4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FC0F8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FC0FC  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FC100  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FC104  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FC108  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FC10C  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FC110  7F E3 FB 78 */	mr r3, r31
/* 804FC114  FC 40 08 90 */	fmr f2, f1
/* 804FC118  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FC11C  80 E1 00 08 */	lwz r7, 8(r1)
/* 804FC120  7F A4 EB 78 */	mr r4, r29
/* 804FC124  7F C5 F3 78 */	mr r5, r30
/* 804FC128  4B FD A5 D1 */	bl Player_actor_InitAnimation_Base1
/* 804FC12C  7F E3 FB 78 */	mr r3, r31
/* 804FC130  7F A4 EB 78 */	mr r4, r29
/* 804FC134  4B FD 97 C5 */	bl Player_actor_setup_main_Base
/* 804FC138  7F E3 FB 78 */	mr r3, r31
/* 804FC13C  38 80 00 02 */	li r4, 2
/* 804FC140  4B FD B5 19 */	bl Player_actor_CHange_TradingItemMode
/* 804FC144  80 1F 0D 24 */	lwz r0, 0xd24(r31)
/* 804FC148  2C 00 00 00 */	cmpwi r0, 0
/* 804FC14C  40 82 00 0C */	bne lbl_804FC158
/* 804FC150  7F E3 FB 78 */	mr r3, r31
/* 804FC154  4B FD B5 41 */	bl Player_actor_Set_item_matrix_set
lbl_804FC158:
/* 804FC158  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC15C  4B B9 ED C5 */	bl func_8009AF20
/* 804FC160  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FC164  7C 08 03 A6 */	mtlr r0
/* 804FC168  38 21 00 20 */	addi r1, r1, 0x20
/* 804FC16C  4E 80 00 20 */	blr 
