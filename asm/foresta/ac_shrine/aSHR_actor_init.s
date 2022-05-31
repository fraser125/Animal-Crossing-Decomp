lbl_805BB19C:
/* 805BB19C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BB1A0  7C 08 02 A6 */	mflr r0
/* 805BB1A4  38 A0 00 00 */	li r5, 0
/* 805BB1A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BB1AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BB1B0  7C 9F 23 78 */	mr r31, r4
/* 805BB1B4  38 81 00 08 */	addi r4, r1, 8
/* 805BB1B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BB1BC  7C 7E 1B 78 */	mr r30, r3
/* 805BB1C0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F103@ha */
/* 805BB1C4  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805BB1C8  38 63 F1 03 */	addi r3, r3, 0xF103 /* 0x0000F103@l */
/* 805BB1CC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805BB1D0  90 C1 00 08 */	stw r6, 8(r1)
/* 805BB1D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BB1D8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805BB1DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BB1E0  4B DE C6 51 */	bl mFI_SetFG_common
/* 805BB1E4  7F C3 F3 78 */	mr r3, r30
/* 805BB1E8  7F E4 FB 78 */	mr r4, r31
/* 805BB1EC  4B FF FF 4D */	bl aSHR_actor_move
/* 805BB1F0  3C 60 80 5C */	lis r3, aSHR_actor_move@ha /* 0x805BB138@ha */
/* 805BB1F4  38 03 B1 38 */	addi r0, r3, aSHR_actor_move@l /* 0x805BB138@l */
/* 805BB1F8  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805BB1FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BB200  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BB204  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BB208  7C 08 03 A6 */	mtlr r0
/* 805BB20C  38 21 00 20 */	addi r1, r1, 0x20
/* 805BB210  4E 80 00 20 */	blr 
