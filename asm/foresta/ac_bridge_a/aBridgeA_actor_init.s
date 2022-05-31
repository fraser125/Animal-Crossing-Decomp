lbl_805A9A38:
/* 805A9A38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A9A3C  7C 08 02 A6 */	mflr r0
/* 805A9A40  38 A0 00 00 */	li r5, 0
/* 805A9A44  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A9A48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A9A4C  7C 9F 23 78 */	mr r31, r4
/* 805A9A50  38 81 00 08 */	addi r4, r1, 8
/* 805A9A54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A9A58  7C 7E 1B 78 */	mr r30, r3
/* 805A9A5C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F121@ha */
/* 805A9A60  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805A9A64  38 63 F1 21 */	addi r3, r3, 0xF121 /* 0x0000F121@l */
/* 805A9A68  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805A9A6C  90 C1 00 08 */	stw r6, 8(r1)
/* 805A9A70  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A9A74  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805A9A78  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A9A7C  4B DF DD B5 */	bl mFI_SetFG_common
/* 805A9A80  7F C3 F3 78 */	mr r3, r30
/* 805A9A84  7F E4 FB 78 */	mr r4, r31
/* 805A9A88  4B FF FF 45 */	bl aBridgeA_actor_move
/* 805A9A8C  3C 60 80 5B */	lis r3, aBridgeA_actor_move@ha /* 0x805A99CC@ha */
/* 805A9A90  38 03 99 CC */	addi r0, r3, aBridgeA_actor_move@l /* 0x805A99CC@l */
/* 805A9A94  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805A9A98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A9A9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A9AA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A9AA4  7C 08 03 A6 */	mtlr r0
/* 805A9AA8  38 21 00 20 */	addi r1, r1, 0x20
/* 805A9AAC  4E 80 00 20 */	blr 
