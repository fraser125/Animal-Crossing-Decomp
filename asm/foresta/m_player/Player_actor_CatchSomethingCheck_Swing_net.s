lbl_804F3390:
/* 804F3390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3394  7C 08 02 A6 */	mflr r0
/* 804F3398  3C 80 80 64 */	lis r4, lit_5247@ha /* 0x80647CE4@ha */
/* 804F339C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F33A0  C0 24 7C E4 */	lfs f1, lit_5247@l(r4)  /* 0x80647CE4@l */
/* 804F33A4  4B FF FE ED */	bl Player_actor_CatchSomethingCheck_common
/* 804F33A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F33AC  7C 08 03 A6 */	mtlr r0
/* 804F33B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F33B4  4E 80 00 20 */	blr 
