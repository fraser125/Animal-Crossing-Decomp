lbl_804BD2D0:
/* 804BD2D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BD2D4  7C 08 02 A6 */	mflr r0
/* 804BD2D8  38 63 20 0C */	addi r3, r3, 0x200c
/* 804BD2DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BD2E0  7C A0 2B 78 */	mr r0, r5
/* 804BD2E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 804BD2E8  38 C1 00 08 */	addi r6, r1, 8
/* 804BD2EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804BD2F0  7C 9F 23 78 */	mr r31, r4
/* 804BD2F4  7C 04 03 78 */	mr r4, r0
/* 804BD2F8  4B F3 41 49 */	bl func_803F1440
/* 804BD2FC  C0 21 00 08 */	lfs f1, 8(r1)
/* 804BD300  7F E3 FB 78 */	mr r3, r31
/* 804BD304  38 81 00 0C */	addi r4, r1, 0xc
/* 804BD308  4B EB 76 A5 */	bl Actor_draw_actor_no_culling_check2
/* 804BD30C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BD310  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804BD314  7C 08 03 A6 */	mtlr r0
/* 804BD318  38 21 00 20 */	addi r1, r1, 0x20
/* 804BD31C  4E 80 00 20 */	blr 
