lbl_805317AC:
/* 805317AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805317B0  7C 08 02 A6 */	mflr r0
/* 805317B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805317B8  38 00 00 00 */	li r0, 0
/* 805317BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805317C0  7C 7F 1B 78 */	mr r31, r3
/* 805317C4  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 805317C8  4B FF B0 79 */	bl func_8052C840
/* 805317CC  98 7F 07 FC */	stb r3, 0x7fc(r31)
/* 805317D0  7F E3 FB 78 */	mr r3, r31
/* 805317D4  4B FF B0 6D */	bl func_8052C840
/* 805317D8  3C 80 80 6A */	lis r4, aNPC_wait_action@ha /* 0x806A2468@ha */
/* 805317DC  7C 60 1B 78 */	mr r0, r3
/* 805317E0  38 84 24 68 */	addi r4, r4, aNPC_wait_action@l /* 0x806A2468@l */
/* 805317E4  7F E3 FB 78 */	mr r3, r31
/* 805317E8  7C 84 00 AE */	lbzx r4, r4, r0
/* 805317EC  4B FF E5 41 */	bl aNPC_setupAction
/* 805317F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805317F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805317F8  7C 08 03 A6 */	mtlr r0
/* 805317FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80531800  4E 80 00 20 */	blr 
