lbl_805B4884:
/* 805B4884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B4888  7C 08 02 A6 */	mflr r0
/* 805B488C  38 A0 00 00 */	li r5, 0
/* 805B4890  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B4894  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B4898  7C 9F 23 78 */	mr r31, r4
/* 805B489C  38 81 00 08 */	addi r4, r1, 8
/* 805B48A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B48A4  7C 7E 1B 78 */	mr r30, r3
/* 805B48A8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F120@ha */
/* 805B48AC  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B48B0  38 63 F1 20 */	addi r3, r3, 0xF120 /* 0x0000F120@l */
/* 805B48B4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B48B8  90 C1 00 08 */	stw r6, 8(r1)
/* 805B48BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B48C0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B48C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B48C8  4B DF 2F 69 */	bl mFI_SetFG_common
/* 805B48CC  7F C3 F3 78 */	mr r3, r30
/* 805B48D0  7F E4 FB 78 */	mr r4, r31
/* 805B48D4  4B FF FE A1 */	bl aMsm_actor_move
/* 805B48D8  3C 60 80 5B */	lis r3, aMsm_actor_move@ha /* 0x805B4774@ha */
/* 805B48DC  38 03 47 74 */	addi r0, r3, aMsm_actor_move@l /* 0x805B4774@l */
/* 805B48E0  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B48E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B48E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B48EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B48F0  7C 08 03 A6 */	mtlr r0
/* 805B48F4  38 21 00 20 */	addi r1, r1, 0x20
/* 805B48F8  4E 80 00 20 */	blr 
