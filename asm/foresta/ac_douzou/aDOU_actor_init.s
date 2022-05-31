lbl_805AE220:
/* 805AE220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AE224  7C 08 02 A6 */	mflr r0
/* 805AE228  38 A0 00 00 */	li r5, 0
/* 805AE22C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AE230  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AE234  7C 9F 23 78 */	mr r31, r4
/* 805AE238  38 81 00 08 */	addi r4, r1, 8
/* 805AE23C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AE240  7C 7E 1B 78 */	mr r30, r3
/* 805AE244  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F11D@ha */
/* 805AE248  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805AE24C  38 63 F1 1D */	addi r3, r3, 0xF11D /* 0x0000F11D@l */
/* 805AE250  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805AE254  90 C1 00 08 */	stw r6, 8(r1)
/* 805AE258  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AE25C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805AE260  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AE264  4B DF 95 CD */	bl mFI_SetFG_common
/* 805AE268  7F C3 F3 78 */	mr r3, r30
/* 805AE26C  7F E4 FB 78 */	mr r4, r31
/* 805AE270  4B FF FF 3D */	bl aDOU_actor_move
/* 805AE274  3C 60 80 5B */	lis r3, aDOU_actor_move@ha /* 0x805AE1AC@ha */
/* 805AE278  38 03 E1 AC */	addi r0, r3, aDOU_actor_move@l /* 0x805AE1AC@l */
/* 805AE27C  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805AE280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AE284  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AE288  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AE28C  7C 08 03 A6 */	mtlr r0
/* 805AE290  38 21 00 20 */	addi r1, r1, 0x20
/* 805AE294  4E 80 00 20 */	blr 
