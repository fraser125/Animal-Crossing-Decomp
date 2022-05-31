lbl_805AB4BC:
/* 805AB4BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AB4C0  7C 08 02 A6 */	mflr r0
/* 805AB4C4  38 A0 00 00 */	li r5, 0
/* 805AB4C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AB4CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AB4D0  7C 9F 23 78 */	mr r31, r4
/* 805AB4D4  38 81 00 08 */	addi r4, r1, 8
/* 805AB4D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AB4DC  7C 7E 1B 78 */	mr r30, r3
/* 805AB4E0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F0F8@ha */
/* 805AB4E4  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805AB4E8  38 63 F0 F8 */	addi r3, r3, 0xF0F8 /* 0x0000F0F8@l */
/* 805AB4EC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805AB4F0  90 C1 00 08 */	stw r6, 8(r1)
/* 805AB4F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AB4F8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805AB4FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AB500  4B DF C3 31 */	bl mFI_SetFG_common
/* 805AB504  7F C3 F3 78 */	mr r3, r30
/* 805AB508  7F E4 FB 78 */	mr r4, r31
/* 805AB50C  4B FF FF 31 */	bl aCNV_actor_move
/* 805AB510  3C 60 80 5B */	lis r3, aCNV_actor_move@ha /* 0x805AB43C@ha */
/* 805AB514  38 03 B4 3C */	addi r0, r3, aCNV_actor_move@l /* 0x805AB43C@l */
/* 805AB518  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805AB51C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AB520  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AB524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AB528  7C 08 03 A6 */	mtlr r0
/* 805AB52C  38 21 00 20 */	addi r1, r1, 0x20
/* 805AB530  4E 80 00 20 */	blr 
