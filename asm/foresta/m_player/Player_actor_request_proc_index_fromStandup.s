lbl_804EF8D0:
/* 804EF8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF8D4  7C 08 02 A6 */	mflr r0
/* 804EF8D8  2C 05 00 00 */	cmpwi r5, 0
/* 804EF8DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF8E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF8E4  7C 9F 23 78 */	mr r31, r4
/* 804EF8E8  41 82 00 2C */	beq lbl_804EF914
/* 804EF8EC  4B FE 5A 81 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804EF8F0  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EF8F4  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804EF8F8  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804EF8FC  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804EF900  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EF904  7F E3 FB 78 */	mr r3, r31
/* 804EF908  38 80 00 00 */	li r4, 0
/* 804EF90C  38 A0 00 01 */	li r5, 1
/* 804EF910  4B FF 62 ED */	bl func_804E5BFC
lbl_804EF914:
/* 804EF914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF91C  7C 08 03 A6 */	mtlr r0
/* 804EF920  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF924  4E 80 00 20 */	blr 
