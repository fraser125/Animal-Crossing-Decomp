lbl_8062D100:
/* 8062D100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D104  7C 08 02 A6 */	mflr r0
/* 8062D108  3D 00 DB 06 */	lis r8, 0xdb06
/* 8062D10C  38 80 00 00 */	li r4, 0
/* 8062D110  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D114  38 00 00 00 */	li r0, 0
/* 8062D118  38 A0 00 00 */	li r5, 0
/* 8062D11C  38 C0 00 00 */	li r6, 0
/* 8062D120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062D124  38 E0 00 00 */	li r7, 0
/* 8062D128  93 C1 00 08 */	stw r30, 8(r1)
/* 8062D12C  7C 7E 1B 78 */	mr r30, r3
/* 8062D130  83 E3 00 00 */	lwz r31, 0(r3)
/* 8062D134  81 5F 02 D0 */	lwz r10, 0x2d0(r31)
/* 8062D138  7F E3 FB 78 */	mr r3, r31
/* 8062D13C  39 2A 00 08 */	addi r9, r10, 8
/* 8062D140  91 3F 02 D0 */	stw r9, 0x2d0(r31)
/* 8062D144  91 0A 00 00 */	stw r8, 0(r10)
/* 8062D148  90 0A 00 04 */	stw r0, 4(r10)
/* 8062D14C  4B DB 85 41 */	bl DisplayList_initialize
/* 8062D150  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 8062D154  3C A0 E7 00 */	lis r5, 0xe700
/* 8062D158  38 00 00 00 */	li r0, 0
/* 8062D15C  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 8062D160  38 C7 00 08 */	addi r6, r7, 8
/* 8062D164  38 80 00 0F */	li r4, 0xf
/* 8062D168  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 8062D16C  90 A7 00 00 */	stw r5, 0(r7)
/* 8062D170  90 07 00 04 */	stw r0, 4(r7)
/* 8062D174  4B DC 72 79 */	bl showView
/* 8062D178  7F C3 F3 78 */	mr r3, r30
/* 8062D17C  4B FF FB 55 */	bl save_menu_draw_title
/* 8062D180  7F C3 F3 78 */	mr r3, r30
/* 8062D184  4B FF FB F9 */	bl save_menu_draw_push_a
/* 8062D188  7F C3 F3 78 */	mr r3, r30
/* 8062D18C  4B FF FC AD */	bl save_menu_draw_select_r
/* 8062D190  7F C3 F3 78 */	mr r3, r30
/* 8062D194  4B FF FD 69 */	bl save_menu_draw_push_b
/* 8062D198  7F C3 F3 78 */	mr r3, r30
/* 8062D19C  4B FF FE 31 */	bl save_menu_draw_select_mode
/* 8062D1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D1A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062D1A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062D1AC  7C 08 03 A6 */	mtlr r0
/* 8062D1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D1B4  4E 80 00 20 */	blr 
