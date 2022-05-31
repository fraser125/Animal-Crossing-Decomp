lbl_8062C5C4:
/* 8062C5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062C5C8  7C 08 02 A6 */	mflr r0
/* 8062C5CC  3D 40 DB 06 */	lis r10, 0xdb06
/* 8062C5D0  39 20 00 00 */	li r9, 0
/* 8062C5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062C5D8  38 80 00 00 */	li r4, 0
/* 8062C5DC  38 A0 00 00 */	li r5, 0
/* 8062C5E0  38 C0 00 00 */	li r6, 0
/* 8062C5E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062C5E8  38 E0 00 00 */	li r7, 0
/* 8062C5EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8062C5F0  7C 7E 1B 78 */	mr r30, r3
/* 8062C5F4  83 E3 00 00 */	lwz r31, 0(r3)
/* 8062C5F8  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 8062C5FC  7F E3 FB 78 */	mr r3, r31
/* 8062C600  38 08 00 08 */	addi r0, r8, 8
/* 8062C604  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8062C608  91 48 00 00 */	stw r10, 0(r8)
/* 8062C60C  91 28 00 04 */	stw r9, 4(r8)
/* 8062C610  81 1F 02 F0 */	lwz r8, 0x2f0(r31)
/* 8062C614  38 08 00 08 */	addi r0, r8, 8
/* 8062C618  90 1F 02 F0 */	stw r0, 0x2f0(r31)
/* 8062C61C  91 48 00 00 */	stw r10, 0(r8)
/* 8062C620  91 28 00 04 */	stw r9, 4(r8)
/* 8062C624  4B DB 90 69 */	bl DisplayList_initialize
/* 8062C628  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 8062C62C  3C A0 E7 00 */	lis r5, 0xe700
/* 8062C630  38 00 00 00 */	li r0, 0
/* 8062C634  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 8062C638  38 C7 00 08 */	addi r6, r7, 8
/* 8062C63C  38 80 00 0F */	li r4, 0xf
/* 8062C640  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 8062C644  90 A7 00 00 */	stw r5, 0(r7)
/* 8062C648  90 07 00 04 */	stw r0, 4(r7)
/* 8062C64C  4B DC 7D A1 */	bl showView
/* 8062C650  7F C3 F3 78 */	mr r3, r30
/* 8062C654  4B FF FC 89 */	bl player_select_draw_title
/* 8062C658  7F C3 F3 78 */	mr r3, r30
/* 8062C65C  4B FF FD 21 */	bl player_select_draw_player_no
/* 8062C660  7F C3 F3 78 */	mr r3, r30
/* 8062C664  4B FF FE A5 */	bl player_select_draw_yosokara
/* 8062C668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062C66C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062C670  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062C674  7C 08 03 A6 */	mtlr r0
/* 8062C678  38 21 00 10 */	addi r1, r1, 0x10
/* 8062C67C  4E 80 00 20 */	blr 
