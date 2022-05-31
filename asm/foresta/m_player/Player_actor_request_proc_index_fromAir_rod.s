lbl_804F5718:
/* 804F5718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F571C  7C 08 02 A6 */	mflr r0
/* 804F5720  2C 05 00 00 */	cmpwi r5, 0
/* 804F5724  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F572C  7C 9F 23 78 */	mr r31, r4
/* 804F5730  41 82 00 2C */	beq lbl_804F575C
/* 804F5734  4B FD FC 39 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F5738  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F573C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F5740  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F5744  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F5748  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F574C  7F E3 FB 78 */	mr r3, r31
/* 804F5750  38 80 00 00 */	li r4, 0
/* 804F5754  38 A0 00 01 */	li r5, 1
/* 804F5758  4B FF 04 A5 */	bl func_804E5BFC
lbl_804F575C:
/* 804F575C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F5764  7C 08 03 A6 */	mtlr r0
/* 804F5768  38 21 00 10 */	addi r1, r1, 0x10
/* 804F576C  4E 80 00 20 */	blr 
