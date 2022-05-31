lbl_805C1BC8:
/* 805C1BC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C1BCC  7C 08 02 A6 */	mflr r0
/* 805C1BD0  38 A0 00 00 */	li r5, 0
/* 805C1BD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C1BD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805C1BDC  7C 9F 23 78 */	mr r31, r4
/* 805C1BE0  38 81 00 08 */	addi r4, r1, 8
/* 805C1BE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805C1BE8  7C 7E 1B 78 */	mr r30, r3
/* 805C1BEC  80 C3 02 B8 */	lwz r6, 0x2b8(r3)
/* 805C1BF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C1BF4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805C1BF8  3C C6 00 01 */	addis r6, r6, 1
/* 805C1BFC  38 C6 F1 16 */	addi r6, r6, -3818
/* 805C1C00  90 61 00 08 */	stw r3, 8(r1)
/* 805C1C04  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 805C1C08  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C1C0C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805C1C10  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C1C14  4B DE 5C 1D */	bl mFI_SetFG_common
/* 805C1C18  7F C3 F3 78 */	mr r3, r30
/* 805C1C1C  7F E4 FB 78 */	mr r4, r31
/* 805C1C20  4B FF FF 55 */	bl aWIN_actor_move
/* 805C1C24  3C 60 80 5C */	lis r3, aWIN_actor_move@ha /* 0x805C1B74@ha */
/* 805C1C28  38 03 1B 74 */	addi r0, r3, aWIN_actor_move@l /* 0x805C1B74@l */
/* 805C1C2C  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805C1C30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805C1C34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805C1C38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C1C3C  7C 08 03 A6 */	mtlr r0
/* 805C1C40  38 21 00 20 */	addi r1, r1, 0x20
/* 805C1C44  4E 80 00 20 */	blr 
