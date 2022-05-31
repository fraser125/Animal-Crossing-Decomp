lbl_805AF294:
/* 805AF294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AF298  7C 08 02 A6 */	mflr r0
/* 805AF29C  38 A0 00 00 */	li r5, 0
/* 805AF2A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AF2A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AF2A8  7C 9F 23 78 */	mr r31, r4
/* 805AF2AC  38 81 00 08 */	addi r4, r1, 8
/* 805AF2B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AF2B4  7C 7E 1B 78 */	mr r30, r3
/* 805AF2B8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F125@ha */
/* 805AF2BC  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805AF2C0  38 63 F1 25 */	addi r3, r3, 0xF125 /* 0x0000F125@l */
/* 805AF2C4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805AF2C8  90 C1 00 08 */	stw r6, 8(r1)
/* 805AF2CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AF2D0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805AF2D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AF2D8  4B DF 85 59 */	bl mFI_SetFG_common
/* 805AF2DC  7F C3 F3 78 */	mr r3, r30
/* 805AF2E0  7F E4 FB 78 */	mr r4, r31
/* 805AF2E4  4B FF FF AD */	bl aGhog_actor_move
/* 805AF2E8  3C 60 80 5B */	lis r3, aGhog_actor_move@ha /* 0x805AF290@ha */
/* 805AF2EC  38 03 F2 90 */	addi r0, r3, aGhog_actor_move@l /* 0x805AF290@l */
/* 805AF2F0  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805AF2F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AF2F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AF2FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AF300  7C 08 03 A6 */	mtlr r0
/* 805AF304  38 21 00 20 */	addi r1, r1, 0x20
/* 805AF308  4E 80 00 20 */	blr 
