lbl_804C4DC8:
/* 804C4DC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C4DCC  7C 08 02 A6 */	mflr r0
/* 804C4DD0  38 63 20 0C */	addi r3, r3, 0x200c
/* 804C4DD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C4DD8  7C A0 2B 78 */	mr r0, r5
/* 804C4DDC  38 A1 00 0C */	addi r5, r1, 0xc
/* 804C4DE0  38 C1 00 08 */	addi r6, r1, 8
/* 804C4DE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804C4DE8  7C 9F 23 78 */	mr r31, r4
/* 804C4DEC  7C 04 03 78 */	mr r4, r0
/* 804C4DF0  4B F2 C6 51 */	bl func_803F1440
/* 804C4DF4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804C4DF8  7F E3 FB 78 */	mr r3, r31
/* 804C4DFC  38 81 00 0C */	addi r4, r1, 0xc
/* 804C4E00  4B EA FB AD */	bl Actor_draw_actor_no_culling_check2
/* 804C4E04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C4E08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804C4E0C  7C 08 03 A6 */	mtlr r0
/* 804C4E10  38 21 00 20 */	addi r1, r1, 0x20
/* 804C4E14  4E 80 00 20 */	blr 
