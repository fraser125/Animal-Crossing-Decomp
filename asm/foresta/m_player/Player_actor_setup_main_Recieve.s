lbl_804FB638:
/* 804FB638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FB63C  7C 08 02 A6 */	mflr r0
/* 804FB640  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FB644  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB648  4B B9 F8 8D */	bl func_8009AED4
/* 804FB64C  7C 7D 1B 78 */	mr r29, r3
/* 804FB650  A0 63 0D 6C */	lhz r3, 0xd6c(r3)
/* 804FB654  80 1D 0D 60 */	lwz r0, 0xd60(r29)
/* 804FB658  7C 9E 23 78 */	mr r30, r4
/* 804FB65C  90 1D 0D 18 */	stw r0, 0xd18(r29)
/* 804FB660  80 1D 0D 64 */	lwz r0, 0xd64(r29)
/* 804FB664  90 1D 0D 1C */	stw r0, 0xd1c(r29)
/* 804FB668  80 1D 0D 68 */	lwz r0, 0xd68(r29)
/* 804FB66C  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 804FB670  B0 7D 0D 24 */	sth r3, 0xd24(r29)
/* 804FB674  80 1D 0D 70 */	lwz r0, 0xd70(r29)
/* 804FB678  90 1D 0D 28 */	stw r0, 0xd28(r29)
/* 804FB67C  4B FD F9 09 */	bl Player_actor_check_item_is_fish
/* 804FB680  2C 03 00 00 */	cmpwi r3, 0
/* 804FB684  41 82 00 0C */	beq lbl_804FB690
/* 804FB688  3B E0 00 5C */	li r31, 0x5c
/* 804FB68C  48 00 00 1C */	b lbl_804FB6A8
lbl_804FB690:
/* 804FB690  80 1D 0D 28 */	lwz r0, 0xd28(r29)
/* 804FB694  2C 00 00 00 */	cmpwi r0, 0
/* 804FB698  41 82 00 0C */	beq lbl_804FB6A4
/* 804FB69C  3B E0 00 6B */	li r31, 0x6b
/* 804FB6A0  48 00 00 08 */	b lbl_804FB6A8
lbl_804FB6A4:
/* 804FB6A4  3B E0 00 15 */	li r31, 0x15
lbl_804FB6A8:
/* 804FB6A8  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804FB6AC  7F A3 EB 78 */	mr r3, r29
/* 804FB6B0  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804FB6B4  7F E4 FB 78 */	mr r4, r31
/* 804FB6B8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FB6BC  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FB6C0  38 C1 00 08 */	addi r6, r1, 8
/* 804FB6C4  4B FD E8 9D */	bl Player_actor_SetupItem_Base1
/* 804FB6C8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FB6CC  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FB6D0  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FB6D4  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FB6D8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FB6DC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FB6E0  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FB6E4  7F A3 EB 78 */	mr r3, r29
/* 804FB6E8  FC 40 08 90 */	fmr f2, f1
/* 804FB6EC  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FB6F0  81 01 00 08 */	lwz r8, 8(r1)
/* 804FB6F4  7F C4 F3 78 */	mr r4, r30
/* 804FB6F8  7F E5 FB 78 */	mr r5, r31
/* 804FB6FC  38 E0 00 00 */	li r7, 0
/* 804FB700  4B FD B1 11 */	bl Player_actor_InitAnimation_Base2
/* 804FB704  7F A3 EB 78 */	mr r3, r29
/* 804FB708  7F C4 F3 78 */	mr r4, r30
/* 804FB70C  4B FD A1 ED */	bl Player_actor_setup_main_Base
/* 804FB710  7F A3 EB 78 */	mr r3, r29
/* 804FB714  4B FD BF 99 */	bl Player_actor_Change_ItemParent
/* 804FB718  7F A3 EB 78 */	mr r3, r29
/* 804FB71C  4B FD BF 79 */	bl Player_actor_Set_item_matrix_set
/* 804FB720  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB724  4B B9 F7 FD */	bl func_8009AF20
/* 804FB728  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FB72C  7C 08 03 A6 */	mtlr r0
/* 804FB730  38 21 00 20 */	addi r1, r1, 0x20
/* 804FB734  4E 80 00 20 */	blr 
