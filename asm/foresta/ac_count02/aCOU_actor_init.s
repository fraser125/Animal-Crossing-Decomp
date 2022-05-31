lbl_805ABCC4:
/* 805ABCC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805ABCC8  7C 08 02 A6 */	mflr r0
/* 805ABCCC  38 A0 00 00 */	li r5, 0
/* 805ABCD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ABCD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805ABCD8  7C 9F 23 78 */	mr r31, r4
/* 805ABCDC  38 81 00 08 */	addi r4, r1, 8
/* 805ABCE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805ABCE4  7C 7E 1B 78 */	mr r30, r3
/* 805ABCE8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F10F@ha */
/* 805ABCEC  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805ABCF0  38 63 F1 0F */	addi r3, r3, 0xF10F /* 0x0000F10F@l */
/* 805ABCF4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805ABCF8  90 C1 00 08 */	stw r6, 8(r1)
/* 805ABCFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805ABD00  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805ABD04  90 01 00 10 */	stw r0, 0x10(r1)
/* 805ABD08  4B DF BB 29 */	bl mFI_SetFG_common
/* 805ABD0C  7F C3 F3 78 */	mr r3, r30
/* 805ABD10  7F E4 FB 78 */	mr r4, r31
/* 805ABD14  4B FF FE A5 */	bl aCOU_actor_move
/* 805ABD18  3C 60 80 5B */	lis r3, aCOU_actor_move@ha /* 0x805ABBB8@ha */
/* 805ABD1C  38 03 BB B8 */	addi r0, r3, aCOU_actor_move@l /* 0x805ABBB8@l */
/* 805ABD20  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805ABD24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805ABD28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805ABD2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805ABD30  7C 08 03 A6 */	mtlr r0
/* 805ABD34  38 21 00 20 */	addi r1, r1, 0x20
/* 805ABD38  4E 80 00 20 */	blr 
