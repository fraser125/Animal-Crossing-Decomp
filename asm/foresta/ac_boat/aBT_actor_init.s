lbl_805A840C:
/* 805A840C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A8410  7C 08 02 A6 */	mflr r0
/* 805A8414  38 A0 00 00 */	li r5, 0
/* 805A8418  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A841C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A8420  7C 9F 23 78 */	mr r31, r4
/* 805A8424  38 81 00 08 */	addi r4, r1, 8
/* 805A8428  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A842C  7C 7E 1B 78 */	mr r30, r3
/* 805A8430  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F128@ha */
/* 805A8434  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805A8438  38 63 F1 28 */	addi r3, r3, 0xF128 /* 0x0000F128@l */
/* 805A843C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805A8440  90 C1 00 08 */	stw r6, 8(r1)
/* 805A8444  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A8448  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805A844C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A8450  4B DF F3 E1 */	bl mFI_SetFG_common
/* 805A8454  7F C3 F3 78 */	mr r3, r30
/* 805A8458  7F E4 FB 78 */	mr r4, r31
/* 805A845C  4B FF FF 39 */	bl aBT_actor_move
/* 805A8460  3C 60 80 5B */	lis r3, aBT_actor_move@ha /* 0x805A8394@ha */
/* 805A8464  38 03 83 94 */	addi r0, r3, aBT_actor_move@l /* 0x805A8394@l */
/* 805A8468  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805A846C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A8470  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A8474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A8478  7C 08 03 A6 */	mtlr r0
/* 805A847C  38 21 00 20 */	addi r1, r1, 0x20
/* 805A8480  4E 80 00 20 */	blr 
