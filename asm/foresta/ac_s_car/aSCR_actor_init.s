lbl_805B92F0:
/* 805B92F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B92F4  7C 08 02 A6 */	mflr r0
/* 805B92F8  38 A0 00 00 */	li r5, 0
/* 805B92FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9300  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B9304  7C 9F 23 78 */	mr r31, r4
/* 805B9308  38 81 00 08 */	addi r4, r1, 8
/* 805B930C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B9310  7C 7E 1B 78 */	mr r30, r3
/* 805B9314  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F106@ha */
/* 805B9318  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B931C  38 63 F1 06 */	addi r3, r3, 0xF106 /* 0x0000F106@l */
/* 805B9320  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B9324  90 C1 00 08 */	stw r6, 8(r1)
/* 805B9328  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B932C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B9330  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B9334  4B DE E4 FD */	bl mFI_SetFG_common
/* 805B9338  7F C3 F3 78 */	mr r3, r30
/* 805B933C  7F E4 FB 78 */	mr r4, r31
/* 805B9340  4B FF FD F9 */	bl aSCR_actor_move
/* 805B9344  3C 60 80 5C */	lis r3, aSCR_actor_move@ha /* 0x805B9138@ha */
/* 805B9348  38 03 91 38 */	addi r0, r3, aSCR_actor_move@l /* 0x805B9138@l */
/* 805B934C  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B9350  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B9354  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B9358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B935C  7C 08 03 A6 */	mtlr r0
/* 805B9360  38 21 00 20 */	addi r1, r1, 0x20
/* 805B9364  4E 80 00 20 */	blr 
