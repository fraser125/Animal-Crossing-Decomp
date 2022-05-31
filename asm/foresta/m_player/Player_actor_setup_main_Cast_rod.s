lbl_804F5160:
/* 804F5160  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804F5164  7C 08 02 A6 */	mflr r0
/* 804F5168  90 01 00 44 */	stw r0, 0x44(r1)
/* 804F516C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804F5170  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804F5174  39 61 00 30 */	addi r11, r1, 0x30
/* 804F5178  4B BA 5D 5D */	bl func_8009AED4
/* 804F517C  7C 9D 23 78 */	mr r29, r4
/* 804F5180  7C 7F 1B 78 */	mr r31, r3
/* 804F5184  7F A3 EB 78 */	mr r3, r29
/* 804F5188  4B EE 44 B9 */	bl get_player_actor_withoutCheck
/* 804F518C  7C 7E 1B 78 */	mr r30, r3
/* 804F5190  C3 E3 0A 28 */	lfs f31, 0xa28(r3)
/* 804F5194  4B FE B7 AD */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F5198  80 DE 0D 60 */	lwz r6, 0xd60(r30)
/* 804F519C  7C 64 07 74 */	extsb r4, r3
/* 804F51A0  80 1E 0D 64 */	lwz r0, 0xd64(r30)
/* 804F51A4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F51A8  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 804F51AC  FC 40 F8 90 */	fmr f2, f31
/* 804F51B0  90 DE 0D 18 */	stw r6, 0xd18(r30)
/* 804F51B4  7F E3 FB 78 */	mr r3, r31
/* 804F51B8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F51BC  38 A0 00 12 */	li r5, 0x12
/* 804F51C0  90 1E 0D 1C */	stw r0, 0xd1c(r30)
/* 804F51C4  38 C0 00 0D */	li r6, 0xd
/* 804F51C8  38 E0 00 00 */	li r7, 0
/* 804F51CC  80 1E 0D 68 */	lwz r0, 0xd68(r30)
/* 804F51D0  90 1E 0D 20 */	stw r0, 0xd20(r30)
/* 804F51D4  4B FE 4E 49 */	bl Player_actor_SetupItem_Base2
/* 804F51D8  7F E3 FB 78 */	mr r3, r31
/* 804F51DC  7F A4 EB 78 */	mr r4, r29
/* 804F51E0  4B FE 07 19 */	bl Player_actor_setup_main_Base
/* 804F51E4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804F51E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F51EC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804F51F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F51F4  3C 63 00 02 */	addis r3, r3, 2
/* 804F51F8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F51FC  90 81 00 08 */	stw r4, 8(r1)
/* 804F5200  7F A7 EB 78 */	mr r7, r29
/* 804F5204  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804F5208  38 81 00 08 */	addi r4, r1, 8
/* 804F520C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F5210  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F5214  38 60 00 4E */	li r3, 0x4e
/* 804F5218  38 A0 00 02 */	li r5, 2
/* 804F521C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804F5220  39 40 00 00 */	li r10, 0
/* 804F5224  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F5228  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804F522C  81 86 00 00 */	lwz r12, 0(r6)
/* 804F5230  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804F5234  A8 DF 00 DE */	lha r6, 0xde(r31)
/* 804F5238  7C 09 07 34 */	extsh r9, r0
/* 804F523C  7D 89 03 A6 */	mtctr r12
/* 804F5240  4E 80 04 21 */	bctrl 
/* 804F5244  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804F5248  39 61 00 30 */	addi r11, r1, 0x30
/* 804F524C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804F5250  4B BA 5C D1 */	bl func_8009AF20
/* 804F5254  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F5258  7C 08 03 A6 */	mtlr r0
/* 804F525C  38 21 00 40 */	addi r1, r1, 0x40
/* 804F5260  4E 80 00 20 */	blr 
