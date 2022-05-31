lbl_8062D214:
/* 8062D214  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062D218  7C 08 02 A6 */	mflr r0
/* 8062D21C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062D220  39 61 00 20 */	addi r11, r1, 0x20
/* 8062D224  4B A6 DC B1 */	bl func_8009AED4
/* 8062D228  7C 7D 1B 78 */	mr r29, r3
/* 8062D22C  3C 60 80 63 */	lis r3, save_menu_main@ha /* 0x8062D1B8@ha */
/* 8062D230  80 9D 00 00 */	lwz r4, 0(r29)
/* 8062D234  38 03 D1 B8 */	addi r0, r3, save_menu_main@l /* 0x8062D1B8@l */
/* 8062D238  3C 60 80 63 */	lis r3, save_menu_cleanup@ha /* 0x8062D210@ha */
/* 8062D23C  3B FD 00 E0 */	addi r31, r29, 0xe0
/* 8062D240  90 1D 00 04 */	stw r0, 4(r29)
/* 8062D244  38 03 D2 10 */	addi r0, r3, save_menu_cleanup@l /* 0x8062D210@l */
/* 8062D248  7F E3 FB 78 */	mr r3, r31
/* 8062D24C  90 1D 00 08 */	stw r0, 8(r29)
/* 8062D250  4B DC 6B 85 */	bl initView
/* 8062D254  38 00 00 08 */	li r0, 8
/* 8062D258  7F A3 EB 78 */	mr r3, r29
/* 8062D25C  90 1F 01 18 */	stw r0, 0x118(r31)
/* 8062D260  4B DD EF 3D */	bl func_8040C19C
/* 8062D264  38 60 00 01 */	li r3, 1
/* 8062D268  4B DD 7B CD */	bl SetGameFrame
/* 8062D26C  3B E0 00 00 */	li r31, 0
/* 8062D270  3B C0 00 00 */	li r30, 0
/* 8062D274  93 FD 02 00 */	stw r31, 0x200(r29)
/* 8062D278  93 FD 02 04 */	stw r31, 0x204(r29)
/* 8062D27C  93 FD 02 08 */	stw r31, 0x208(r29)
lbl_8062D280:
/* 8062D280  38 7F 02 0C */	addi r3, r31, 0x20c
/* 8062D284  7C 7D 1A 14 */	add r3, r29, r3
/* 8062D288  4B FF F7 65 */	bl save_menu_reset_cursor_col
/* 8062D28C  3B DE 00 01 */	addi r30, r30, 1
/* 8062D290  3B FF 00 0C */	addi r31, r31, 0xc
/* 8062D294  2C 1E 00 02 */	cmpwi r30, 2
/* 8062D298  41 80 FF E8 */	blt lbl_8062D280
/* 8062D29C  39 61 00 20 */	addi r11, r1, 0x20
/* 8062D2A0  4B A6 DC 81 */	bl func_8009AF20
/* 8062D2A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062D2A8  7C 08 03 A6 */	mtlr r0
/* 8062D2AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8062D2B0  4E 80 00 20 */	blr 
