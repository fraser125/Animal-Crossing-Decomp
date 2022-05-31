lbl_804FB344:
/* 804FB344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FB348  7C 08 02 A6 */	mflr r0
/* 804FB34C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FB350  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB354  4B B9 FB 81 */	bl func_8009AED4
/* 804FB358  7C 7D 1B 78 */	mr r29, r3
/* 804FB35C  A0 63 0D 6C */	lhz r3, 0xd6c(r3)
/* 804FB360  80 1D 0D 60 */	lwz r0, 0xd60(r29)
/* 804FB364  7C 9E 23 78 */	mr r30, r4
/* 804FB368  90 1D 0D 18 */	stw r0, 0xd18(r29)
/* 804FB36C  80 1D 0D 64 */	lwz r0, 0xd64(r29)
/* 804FB370  90 1D 0D 1C */	stw r0, 0xd1c(r29)
/* 804FB374  80 1D 0D 68 */	lwz r0, 0xd68(r29)
/* 804FB378  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 804FB37C  B0 7D 0D 24 */	sth r3, 0xd24(r29)
/* 804FB380  80 1D 0D 70 */	lwz r0, 0xd70(r29)
/* 804FB384  90 1D 0D 28 */	stw r0, 0xd28(r29)
/* 804FB388  4B FD FB FD */	bl Player_actor_check_item_is_fish
/* 804FB38C  2C 03 00 00 */	cmpwi r3, 0
/* 804FB390  41 82 00 0C */	beq lbl_804FB39C
/* 804FB394  3B E0 00 5B */	li r31, 0x5b
/* 804FB398  48 00 00 1C */	b lbl_804FB3B4
lbl_804FB39C:
/* 804FB39C  80 1D 0D 28 */	lwz r0, 0xd28(r29)
/* 804FB3A0  2C 00 00 00 */	cmpwi r0, 0
/* 804FB3A4  41 82 00 0C */	beq lbl_804FB3B0
/* 804FB3A8  3B E0 00 6A */	li r31, 0x6a
/* 804FB3AC  48 00 00 08 */	b lbl_804FB3B4
lbl_804FB3B0:
/* 804FB3B0  3B E0 00 0A */	li r31, 0xa
lbl_804FB3B4:
/* 804FB3B4  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804FB3B8  7F A3 EB 78 */	mr r3, r29
/* 804FB3BC  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804FB3C0  7F E4 FB 78 */	mr r4, r31
/* 804FB3C4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FB3C8  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FB3CC  38 C1 00 08 */	addi r6, r1, 8
/* 804FB3D0  4B FD EB 91 */	bl Player_actor_SetupItem_Base1
/* 804FB3D4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FB3D8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FB3DC  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FB3E0  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FB3E4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FB3E8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FB3EC  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FB3F0  7F A3 EB 78 */	mr r3, r29
/* 804FB3F4  FC 40 08 90 */	fmr f2, f1
/* 804FB3F8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FB3FC  81 01 00 08 */	lwz r8, 8(r1)
/* 804FB400  7F C4 F3 78 */	mr r4, r30
/* 804FB404  7F E5 FB 78 */	mr r5, r31
/* 804FB408  38 E0 00 00 */	li r7, 0
/* 804FB40C  4B FD B4 05 */	bl Player_actor_InitAnimation_Base2
/* 804FB410  7F A3 EB 78 */	mr r3, r29
/* 804FB414  7F C4 F3 78 */	mr r4, r30
/* 804FB418  4B FD A4 E1 */	bl Player_actor_setup_main_Base
/* 804FB41C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB420  4B B9 FB 01 */	bl func_8009AF20
/* 804FB424  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FB428  7C 08 03 A6 */	mtlr r0
/* 804FB42C  38 21 00 20 */	addi r1, r1, 0x20
/* 804FB430  4E 80 00 20 */	blr 
