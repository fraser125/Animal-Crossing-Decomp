lbl_805AC504:
/* 805AC504  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AC508  7C 08 02 A6 */	mflr r0
/* 805AC50C  38 A0 00 00 */	li r5, 0
/* 805AC510  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AC514  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AC518  7C 9F 23 78 */	mr r31, r4
/* 805AC51C  38 81 00 08 */	addi r4, r1, 8
/* 805AC520  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AC524  7C 7E 1B 78 */	mr r30, r3
/* 805AC528  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F10E@ha */
/* 805AC52C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805AC530  38 63 F1 0E */	addi r3, r3, 0xF10E /* 0x0000F10E@l */
/* 805AC534  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805AC538  90 C1 00 08 */	stw r6, 8(r1)
/* 805AC53C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AC540  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805AC544  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AC548  4B DF B2 E9 */	bl mFI_SetFG_common
/* 805AC54C  7F C3 F3 78 */	mr r3, r30
/* 805AC550  7F E4 FB 78 */	mr r4, r31
/* 805AC554  4B FF FE 65 */	bl aCOU_actor_move
/* 805AC558  3C 60 80 5B */	lis r3, aCOU_actor_move@ha /* 0x805AC3B8@ha */
/* 805AC55C  38 03 C3 B8 */	addi r0, r3, aCOU_actor_move@l /* 0x805AC3B8@l */
/* 805AC560  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805AC564  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AC568  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AC56C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AC570  7C 08 03 A6 */	mtlr r0
/* 805AC574  38 21 00 20 */	addi r1, r1, 0x20
/* 805AC578  4E 80 00 20 */	blr 
