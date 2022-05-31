lbl_805AD298:
/* 805AD298  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AD29C  7C 08 02 A6 */	mflr r0
/* 805AD2A0  38 A0 00 00 */	li r5, 0
/* 805AD2A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AD2A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AD2AC  7C 9F 23 78 */	mr r31, r4
/* 805AD2B0  38 81 00 08 */	addi r4, r1, 8
/* 805AD2B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AD2B8  7C 7E 1B 78 */	mr r30, r3
/* 805AD2BC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F0FA@ha */
/* 805AD2C0  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805AD2C4  38 63 F0 FA */	addi r3, r3, 0xF0FA /* 0x0000F0FA@l */
/* 805AD2C8  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805AD2CC  90 C1 00 08 */	stw r6, 8(r1)
/* 805AD2D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AD2D4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805AD2D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AD2DC  4B DF A5 55 */	bl mFI_SetFG_common
/* 805AD2E0  7F C3 F3 78 */	mr r3, r30
/* 805AD2E4  7F E4 FB 78 */	mr r4, r31
/* 805AD2E8  4B FF FF 31 */	bl aDPT_actor_move
/* 805AD2EC  3C 60 80 5B */	lis r3, aDPT_actor_move@ha /* 0x805AD218@ha */
/* 805AD2F0  38 03 D2 18 */	addi r0, r3, aDPT_actor_move@l /* 0x805AD218@l */
/* 805AD2F4  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805AD2F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AD2FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AD300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AD304  7C 08 03 A6 */	mtlr r0
/* 805AD308  38 21 00 20 */	addi r1, r1, 0x20
/* 805AD30C  4E 80 00 20 */	blr 
