lbl_805BF7CC:
/* 805BF7CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BF7D0  7C 08 02 A6 */	mflr r0
/* 805BF7D4  38 A0 00 00 */	li r5, 0
/* 805BF7D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BF7DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BF7E0  7C 9F 23 78 */	mr r31, r4
/* 805BF7E4  38 81 00 08 */	addi r4, r1, 8
/* 805BF7E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BF7EC  7C 7E 1B 78 */	mr r30, r3
/* 805BF7F0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F11E@ha */
/* 805BF7F4  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805BF7F8  38 63 F1 1E */	addi r3, r3, 0xF11E /* 0x0000F11E@l */
/* 805BF7FC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805BF800  90 C1 00 08 */	stw r6, 8(r1)
/* 805BF804  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BF808  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805BF80C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BF810  4B DE 80 21 */	bl mFI_SetFG_common
/* 805BF814  7F C3 F3 78 */	mr r3, r30
/* 805BF818  7F E4 FB 78 */	mr r4, r31
/* 805BF81C  4B FF FE 95 */	bl aTOU_actor_move
/* 805BF820  3C 60 80 5C */	lis r3, aTOU_actor_move@ha /* 0x805BF6B0@ha */
/* 805BF824  38 03 F6 B0 */	addi r0, r3, aTOU_actor_move@l /* 0x805BF6B0@l */
/* 805BF828  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805BF82C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BF830  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BF834  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BF838  7C 08 03 A6 */	mtlr r0
/* 805BF83C  38 21 00 20 */	addi r1, r1, 0x20
/* 805BF840  4E 80 00 20 */	blr 
