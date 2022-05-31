lbl_805BD9F8:
/* 805BD9F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BD9FC  7C 08 02 A6 */	mflr r0
/* 805BDA00  38 A0 00 00 */	li r5, 0
/* 805BDA04  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BDA08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BDA0C  7C 9F 23 78 */	mr r31, r4
/* 805BDA10  38 81 00 08 */	addi r4, r1, 8
/* 805BDA14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BDA18  7C 7E 1B 78 */	mr r30, r3
/* 805BDA1C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F0F9@ha */
/* 805BDA20  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805BDA24  38 63 F0 F9 */	addi r3, r3, 0xF0F9 /* 0x0000F0F9@l */
/* 805BDA28  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805BDA2C  90 C1 00 08 */	stw r6, 8(r1)
/* 805BDA30  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BDA34  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805BDA38  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BDA3C  4B DE 9D F5 */	bl mFI_SetFG_common
/* 805BDA40  7F C3 F3 78 */	mr r3, r30
/* 805BDA44  7F E4 FB 78 */	mr r4, r31
/* 805BDA48  4B FF FF 31 */	bl aSPR_actor_move
/* 805BDA4C  3C 60 80 5C */	lis r3, aSPR_actor_move@ha /* 0x805BD978@ha */
/* 805BDA50  38 03 D9 78 */	addi r0, r3, aSPR_actor_move@l /* 0x805BD978@l */
/* 805BDA54  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805BDA58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BDA5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BDA60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BDA64  7C 08 03 A6 */	mtlr r0
/* 805BDA68  38 21 00 20 */	addi r1, r1, 0x20
/* 805BDA6C  4E 80 00 20 */	blr 
