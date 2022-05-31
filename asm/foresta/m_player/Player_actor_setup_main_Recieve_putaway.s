lbl_804FB964:
/* 804FB964  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FB968  7C 08 02 A6 */	mflr r0
/* 804FB96C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FB970  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB974  4B B9 F5 61 */	bl func_8009AED4
/* 804FB978  7C 7D 1B 78 */	mr r29, r3
/* 804FB97C  A0 63 0D 6C */	lhz r3, 0xd6c(r3)
/* 804FB980  80 1D 0D 60 */	lwz r0, 0xd60(r29)
/* 804FB984  7C 9E 23 78 */	mr r30, r4
/* 804FB988  90 1D 0D 18 */	stw r0, 0xd18(r29)
/* 804FB98C  80 1D 0D 64 */	lwz r0, 0xd64(r29)
/* 804FB990  90 1D 0D 1C */	stw r0, 0xd1c(r29)
/* 804FB994  80 1D 0D 68 */	lwz r0, 0xd68(r29)
/* 804FB998  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 804FB99C  80 1D 0D 70 */	lwz r0, 0xd70(r29)
/* 804FB9A0  90 1D 0D 24 */	stw r0, 0xd24(r29)
/* 804FB9A4  4B FD F5 E1 */	bl Player_actor_check_item_is_fish
/* 804FB9A8  2C 03 00 00 */	cmpwi r3, 0
/* 804FB9AC  41 82 00 0C */	beq lbl_804FB9B8
/* 804FB9B0  3B E0 00 5D */	li r31, 0x5d
/* 804FB9B4  48 00 00 1C */	b lbl_804FB9D0
lbl_804FB9B8:
/* 804FB9B8  80 1D 0D 24 */	lwz r0, 0xd24(r29)
/* 804FB9BC  2C 00 00 00 */	cmpwi r0, 0
/* 804FB9C0  41 82 00 0C */	beq lbl_804FB9CC
/* 804FB9C4  3B E0 00 6C */	li r31, 0x6c
/* 804FB9C8  48 00 00 08 */	b lbl_804FB9D0
lbl_804FB9CC:
/* 804FB9CC  3B E0 00 0C */	li r31, 0xc
lbl_804FB9D0:
/* 804FB9D0  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804FB9D4  7F A3 EB 78 */	mr r3, r29
/* 804FB9D8  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804FB9DC  7F E4 FB 78 */	mr r4, r31
/* 804FB9E0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FB9E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FB9E8  38 C1 00 08 */	addi r6, r1, 8
/* 804FB9EC  4B FD E5 75 */	bl Player_actor_SetupItem_Base1
/* 804FB9F0  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FB9F4  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FB9F8  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FB9FC  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FBA00  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FBA04  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FBA08  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FBA0C  7F A3 EB 78 */	mr r3, r29
/* 804FBA10  FC 40 08 90 */	fmr f2, f1
/* 804FBA14  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FBA18  81 01 00 08 */	lwz r8, 8(r1)
/* 804FBA1C  7F C4 F3 78 */	mr r4, r30
/* 804FBA20  7F E5 FB 78 */	mr r5, r31
/* 804FBA24  38 E0 00 00 */	li r7, 0
/* 804FBA28  4B FD AD E9 */	bl Player_actor_InitAnimation_Base2
/* 804FBA2C  7F A3 EB 78 */	mr r3, r29
/* 804FBA30  7F C4 F3 78 */	mr r4, r30
/* 804FBA34  4B FD 9E C5 */	bl Player_actor_setup_main_Base
/* 804FBA38  7F A3 EB 78 */	mr r3, r29
/* 804FBA3C  38 80 00 07 */	li r4, 7
/* 804FBA40  4B FD BC 19 */	bl Player_actor_CHange_TradingItemMode
/* 804FBA44  7F A3 EB 78 */	mr r3, r29
/* 804FBA48  4B FD BC 4D */	bl Player_actor_Set_item_matrix_set
/* 804FBA4C  7F A3 EB 78 */	mr r3, r29
/* 804FBA50  4B FE 3A 35 */	bl Player_actor_sound_GASAGOSO
/* 804FBA54  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBA58  4B B9 F4 C9 */	bl func_8009AF20
/* 804FBA5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FBA60  7C 08 03 A6 */	mtlr r0
/* 804FBA64  38 21 00 20 */	addi r1, r1, 0x20
/* 804FBA68  4E 80 00 20 */	blr 
