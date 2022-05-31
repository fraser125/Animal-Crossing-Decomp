lbl_805B7734:
/* 805B7734  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B7738  7C 08 02 A6 */	mflr r0
/* 805B773C  38 A0 00 00 */	li r5, 0
/* 805B7740  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B7744  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B7748  7C 9F 23 78 */	mr r31, r4
/* 805B774C  38 81 00 08 */	addi r4, r1, 8
/* 805B7750  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B7754  7C 7E 1B 78 */	mr r30, r3
/* 805B7758  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F101@ha */
/* 805B775C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B7760  38 63 F1 01 */	addi r3, r3, 0xF101 /* 0x0000F101@l */
/* 805B7764  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B7768  90 C1 00 08 */	stw r6, 8(r1)
/* 805B776C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B7770  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B7774  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B7778  4B DF 00 B9 */	bl mFI_SetFG_common
/* 805B777C  7F C3 F3 78 */	mr r3, r30
/* 805B7780  7F E4 FB 78 */	mr r4, r31
/* 805B7784  4B FF FE 85 */	bl aPBOX_actor_move
/* 805B7788  3C 60 80 5B */	lis r3, aPBOX_actor_move@ha /* 0x805B7608@ha */
/* 805B778C  38 03 76 08 */	addi r0, r3, aPBOX_actor_move@l /* 0x805B7608@l */
/* 805B7790  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B7794  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B7798  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B779C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B77A0  7C 08 03 A6 */	mtlr r0
/* 805B77A4  38 21 00 20 */	addi r1, r1, 0x20
/* 805B77A8  4E 80 00 20 */	blr 
