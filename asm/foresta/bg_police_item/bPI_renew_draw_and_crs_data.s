lbl_804BE53C:
/* 804BE53C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BE540  7C 08 02 A6 */	mflr r0
/* 804BE544  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BE548  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804BE54C  7C 7F 1B 78 */	mr r31, r3
/* 804BE550  7C 83 23 78 */	mr r3, r4
/* 804BE554  4B F1 B0 ED */	bl get_player_actor_withoutCheck
/* 804BE558  28 03 00 00 */	cmplwi r3, 0
/* 804BE55C  41 82 00 34 */	beq lbl_804BE590
/* 804BE560  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 804BE564  3C 80 80 69 */	lis r4, lit_495@ha /* 0x80695C44@ha */
/* 804BE568  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804BE56C  38 A4 5C 44 */	addi r5, r4, lit_495@l /* 0x80695C44@l */
/* 804BE570  38 81 00 08 */	addi r4, r1, 8
/* 804BE574  90 C1 00 08 */	stw r6, 8(r1)
/* 804BE578  38 C0 00 B6 */	li r6, 0xb6
/* 804BE57C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BE580  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804BE584  38 7F 46 24 */	addi r3, r31, 0x4624
/* 804BE588  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BE58C  4B EE 98 0D */	bl mFI_GetItemTable
lbl_804BE590:
/* 804BE590  7F E3 FB 78 */	mr r3, r31
/* 804BE594  4B FF FF 35 */	bl bPI_chg_draw_tbl
/* 804BE598  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BE59C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804BE5A0  7C 08 03 A6 */	mtlr r0
/* 804BE5A4  38 21 00 20 */	addi r1, r1, 0x20
/* 804BE5A8  4E 80 00 20 */	blr 
