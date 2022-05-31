lbl_805AEA60:
/* 805AEA60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AEA64  7C 08 02 A6 */	mflr r0
/* 805AEA68  38 A0 00 00 */	li r5, 0
/* 805AEA6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AEA70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AEA74  7C 9F 23 78 */	mr r31, r4
/* 805AEA78  38 81 00 08 */	addi r4, r1, 8
/* 805AEA7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AEA80  7C 7E 1B 78 */	mr r30, r3
/* 805AEA84  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F115@ha */
/* 805AEA88  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805AEA8C  38 63 F1 15 */	addi r3, r3, 0xF115 /* 0x0000F115@l */
/* 805AEA90  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805AEA94  90 C1 00 08 */	stw r6, 8(r1)
/* 805AEA98  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AEA9C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805AEAA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AEAA4  4B DF 8D 8D */	bl mFI_SetFG_common
/* 805AEAA8  7F C3 F3 78 */	mr r3, r30
/* 805AEAAC  7F E4 FB 78 */	mr r4, r31
/* 805AEAB0  4B FF FE A5 */	bl aDUM_actor_move
/* 805AEAB4  3C 60 80 5B */	lis r3, aDUM_actor_move@ha /* 0x805AE954@ha */
/* 805AEAB8  38 03 E9 54 */	addi r0, r3, aDUM_actor_move@l /* 0x805AE954@l */
/* 805AEABC  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805AEAC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AEAC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AEAC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AEACC  7C 08 03 A6 */	mtlr r0
/* 805AEAD0  38 21 00 20 */	addi r1, r1, 0x20
/* 805AEAD4  4E 80 00 20 */	blr 
