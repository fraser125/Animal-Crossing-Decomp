lbl_804FBD3C:
/* 804FBD3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FBD40  7C 08 02 A6 */	mflr r0
/* 804FBD44  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FBD48  39 61 00 30 */	addi r11, r1, 0x30
/* 804FBD4C  4B B9 F1 7D */	bl func_8009AEC8
/* 804FBD50  7C 7B 1B 78 */	mr r27, r3
/* 804FBD54  7C 9C 23 78 */	mr r28, r4
/* 804FBD58  A3 E3 0D 6C */	lhz r31, 0xd6c(r3)
/* 804FBD5C  83 C3 0D 70 */	lwz r30, 0xd70(r3)
/* 804FBD60  83 A3 0D 74 */	lwz r29, 0xd74(r3)
/* 804FBD64  7F E3 FB 78 */	mr r3, r31
/* 804FBD68  80 1B 0D 60 */	lwz r0, 0xd60(r27)
/* 804FBD6C  90 1B 0D 18 */	stw r0, 0xd18(r27)
/* 804FBD70  80 1B 0D 64 */	lwz r0, 0xd64(r27)
/* 804FBD74  90 1B 0D 1C */	stw r0, 0xd1c(r27)
/* 804FBD78  80 1B 0D 68 */	lwz r0, 0xd68(r27)
/* 804FBD7C  90 1B 0D 20 */	stw r0, 0xd20(r27)
/* 804FBD80  A0 1B 0D 6C */	lhz r0, 0xd6c(r27)
/* 804FBD84  B0 1B 0D 24 */	sth r0, 0xd24(r27)
/* 804FBD88  80 1B 0D 78 */	lwz r0, 0xd78(r27)
/* 804FBD8C  90 1B 0D 28 */	stw r0, 0xd28(r27)
/* 804FBD90  4B FD F1 F5 */	bl Player_actor_check_item_is_fish
/* 804FBD94  2C 03 00 00 */	cmpwi r3, 0
/* 804FBD98  41 82 00 0C */	beq lbl_804FBDA4
/* 804FBD9C  3B 40 00 5F */	li r26, 0x5f
/* 804FBDA0  48 00 00 1C */	b lbl_804FBDBC
lbl_804FBDA4:
/* 804FBDA4  80 1B 0D 28 */	lwz r0, 0xd28(r27)
/* 804FBDA8  2C 00 00 00 */	cmpwi r0, 0
/* 804FBDAC  41 82 00 0C */	beq lbl_804FBDB8
/* 804FBDB0  3B 40 00 5A */	li r26, 0x5a
/* 804FBDB4  48 00 00 08 */	b lbl_804FBDBC
lbl_804FBDB8:
/* 804FBDB8  3B 40 00 10 */	li r26, 0x10
lbl_804FBDBC:
/* 804FBDBC  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804FBDC0  7F 63 DB 78 */	mr r3, r27
/* 804FBDC4  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804FBDC8  7F 44 D3 78 */	mr r4, r26
/* 804FBDCC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FBDD0  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FBDD4  38 C1 00 08 */	addi r6, r1, 8
/* 804FBDD8  4B FD E1 89 */	bl Player_actor_SetupItem_Base1
/* 804FBDDC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FBDE0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FBDE4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FBDE8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FBDEC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FBDF0  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FBDF4  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FBDF8  7F 63 DB 78 */	mr r3, r27
/* 804FBDFC  FC 40 08 90 */	fmr f2, f1
/* 804FBE00  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FBE04  81 01 00 08 */	lwz r8, 8(r1)
/* 804FBE08  7F 84 E3 78 */	mr r4, r28
/* 804FBE0C  7F 45 D3 78 */	mr r5, r26
/* 804FBE10  38 E0 00 00 */	li r7, 0
/* 804FBE14  4B FD A9 FD */	bl Player_actor_InitAnimation_Base2
/* 804FBE18  7F 63 DB 78 */	mr r3, r27
/* 804FBE1C  7F 84 E3 78 */	mr r4, r28
/* 804FBE20  4B FD 9A D9 */	bl Player_actor_setup_main_Base
/* 804FBE24  7F 63 DB 78 */	mr r3, r27
/* 804FBE28  7F E4 FB 78 */	mr r4, r31
/* 804FBE2C  7F C5 F3 78 */	mr r5, r30
/* 804FBE30  7F A6 EB 78 */	mr r6, r29
/* 804FBE34  4B FD B9 09 */	bl Player_actor_Birth_TradingItem
/* 804FBE38  7F 63 DB 78 */	mr r3, r27
/* 804FBE3C  4B FD B8 59 */	bl Player_actor_Set_item_matrix_set
/* 804FBE40  7F 63 DB 78 */	mr r3, r27
/* 804FBE44  4B FE 36 41 */	bl Player_actor_sound_GASAGOSO
/* 804FBE48  39 61 00 30 */	addi r11, r1, 0x30
/* 804FBE4C  4B B9 F0 C9 */	bl func_8009AF14
/* 804FBE50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FBE54  7C 08 03 A6 */	mtlr r0
/* 804FBE58  38 21 00 30 */	addi r1, r1, 0x30
/* 804FBE5C  4E 80 00 20 */	blr 
