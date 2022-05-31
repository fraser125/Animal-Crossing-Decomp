lbl_805A9060:
/* 805A9060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A9064  7C 08 02 A6 */	mflr r0
/* 805A9068  38 A0 00 00 */	li r5, 0
/* 805A906C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A9070  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A9074  7C 9F 23 78 */	mr r31, r4
/* 805A9078  38 81 00 08 */	addi r4, r1, 8
/* 805A907C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A9080  7C 7E 1B 78 */	mr r30, r3
/* 805A9084  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F104@ha */
/* 805A9088  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805A908C  38 63 F1 04 */	addi r3, r3, 0xF104 /* 0x0000F104@l */
/* 805A9090  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805A9094  90 C1 00 08 */	stw r6, 8(r1)
/* 805A9098  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A909C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805A90A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A90A4  4B DF E7 8D */	bl mFI_SetFG_common
/* 805A90A8  7F C3 F3 78 */	mr r3, r30
/* 805A90AC  7F E4 FB 78 */	mr r4, r31
/* 805A90B0  4B FF FE 35 */	bl aBRS_actor_move
/* 805A90B4  3C 60 80 5B */	lis r3, aBRS_actor_move@ha /* 0x805A8EE4@ha */
/* 805A90B8  38 03 8E E4 */	addi r0, r3, aBRS_actor_move@l /* 0x805A8EE4@l */
/* 805A90BC  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805A90C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A90C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A90C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A90CC  7C 08 03 A6 */	mtlr r0
/* 805A90D0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A90D4  4E 80 00 20 */	blr 
