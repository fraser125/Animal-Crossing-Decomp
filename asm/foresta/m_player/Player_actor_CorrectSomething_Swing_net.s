lbl_804F33B8:
/* 804F33B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F33BC  7C 08 02 A6 */	mflr r0
/* 804F33C0  38 83 0E 38 */	addi r4, r3, 0xe38
/* 804F33C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F33C8  80 A3 0E 70 */	lwz r5, 0xe70(r3)
/* 804F33CC  28 05 00 00 */	cmplwi r5, 0
/* 804F33D0  41 82 00 18 */	beq lbl_804F33E8
/* 804F33D4  88 03 0E 74 */	lbz r0, 0xe74(r3)
/* 804F33D8  7C 00 07 75 */	extsb. r0, r0
/* 804F33DC  40 82 00 0C */	bne lbl_804F33E8
/* 804F33E0  38 00 00 00 */	li r0, 0
/* 804F33E4  98 05 00 B5 */	stb r0, 0xb5(r5)
lbl_804F33E8:
/* 804F33E8  4B FE DE 39 */	bl Player_actor_CorrectSomething_net
/* 804F33EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F33F0  7C 08 03 A6 */	mtlr r0
/* 804F33F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F33F8  4E 80 00 20 */	blr 
