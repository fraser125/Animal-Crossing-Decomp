lbl_80505708:
/* 80505708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050570C  7C 08 02 A6 */	mflr r0
/* 80505710  2C 05 00 00 */	cmpwi r5, 0
/* 80505714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050571C  7C 9F 23 78 */	mr r31, r4
/* 80505720  41 82 00 2C */	beq lbl_8050574C
/* 80505724  4B FC FC 49 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80505728  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 8050572C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 80505730  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 80505734  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 80505738  C0 25 00 00 */	lfs f1, 0(r5)
/* 8050573C  7F E3 FB 78 */	mr r3, r31
/* 80505740  38 80 00 00 */	li r4, 0
/* 80505744  38 A0 00 01 */	li r5, 1
/* 80505748  4B FE 04 B5 */	bl func_804E5BFC
lbl_8050574C:
/* 8050574C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80505754  7C 08 03 A6 */	mtlr r0
/* 80505758  38 21 00 10 */	addi r1, r1, 0x10
/* 8050575C  4E 80 00 20 */	blr 