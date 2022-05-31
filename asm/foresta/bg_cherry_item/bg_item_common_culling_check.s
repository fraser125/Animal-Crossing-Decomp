lbl_804B5F4C:
/* 804B5F4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B5F50  7C 08 02 A6 */	mflr r0
/* 804B5F54  38 63 20 0C */	addi r3, r3, 0x200c
/* 804B5F58  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B5F5C  7C A0 2B 78 */	mr r0, r5
/* 804B5F60  38 A1 00 0C */	addi r5, r1, 0xc
/* 804B5F64  38 C1 00 08 */	addi r6, r1, 8
/* 804B5F68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804B5F6C  7C 9F 23 78 */	mr r31, r4
/* 804B5F70  7C 04 03 78 */	mr r4, r0
/* 804B5F74  4B F3 B4 CD */	bl func_803F1440
/* 804B5F78  C0 21 00 08 */	lfs f1, 8(r1)
/* 804B5F7C  7F E3 FB 78 */	mr r3, r31
/* 804B5F80  38 81 00 0C */	addi r4, r1, 0xc
/* 804B5F84  4B EB EA 29 */	bl Actor_draw_actor_no_culling_check2
/* 804B5F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B5F8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804B5F90  7C 08 03 A6 */	mtlr r0
/* 804B5F94  38 21 00 20 */	addi r1, r1, 0x20
/* 804B5F98  4E 80 00 20 */	blr 
