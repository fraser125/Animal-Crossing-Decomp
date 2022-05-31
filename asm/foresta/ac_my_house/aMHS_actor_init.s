lbl_805B5BD4:
/* 805B5BD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B5BD8  7C 08 02 A6 */	mflr r0
/* 805B5BDC  38 A0 00 00 */	li r5, 0
/* 805B5BE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B5BE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B5BE8  7C 9F 23 78 */	mr r31, r4
/* 805B5BEC  38 81 00 08 */	addi r4, r1, 8
/* 805B5BF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B5BF4  7C 7E 1B 78 */	mr r30, r3
/* 805B5BF8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B5BFC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B5C00  90 61 00 08 */	stw r3, 8(r1)
/* 805B5C04  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B5C08  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B5C0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B5C10  80 7E 02 B4 */	lwz r3, 0x2b4(r30)
/* 805B5C14  3C 63 00 01 */	addis r3, r3, 1
/* 805B5C18  38 03 F0 F3 */	addi r0, r3, -3853
/* 805B5C1C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 805B5C20  4B DF 1C 11 */	bl mFI_SetFG_common
/* 805B5C24  7F C3 F3 78 */	mr r3, r30
/* 805B5C28  7F E4 FB 78 */	mr r4, r31
/* 805B5C2C  4B FF FE 89 */	bl aMHS_actor_move
/* 805B5C30  3C 60 80 5B */	lis r3, aMHS_actor_move@ha /* 0x805B5AB4@ha */
/* 805B5C34  38 03 5A B4 */	addi r0, r3, aMHS_actor_move@l /* 0x805B5AB4@l */
/* 805B5C38  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B5C3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B5C40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B5C44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B5C48  7C 08 03 A6 */	mtlr r0
/* 805B5C4C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B5C50  4E 80 00 20 */	blr 
