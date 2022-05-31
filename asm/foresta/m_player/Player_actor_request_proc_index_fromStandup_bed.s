lbl_804ED2A8:
/* 804ED2A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ED2AC  7C 08 02 A6 */	mflr r0
/* 804ED2B0  2C 05 00 00 */	cmpwi r5, 0
/* 804ED2B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ED2B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ED2BC  7C 9F 23 78 */	mr r31, r4
/* 804ED2C0  41 82 00 2C */	beq lbl_804ED2EC
/* 804ED2C4  4B FE 80 A9 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804ED2C8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804ED2CC  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804ED2D0  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804ED2D4  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804ED2D8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804ED2DC  7F E3 FB 78 */	mr r3, r31
/* 804ED2E0  38 80 00 00 */	li r4, 0
/* 804ED2E4  38 A0 00 01 */	li r5, 1
/* 804ED2E8  4B FF 89 15 */	bl func_804E5BFC
lbl_804ED2EC:
/* 804ED2EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ED2F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ED2F4  7C 08 03 A6 */	mtlr r0
/* 804ED2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804ED2FC  4E 80 00 20 */	blr 
