lbl_8056D9A8:
/* 8056D9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D9AC  7C 08 02 A6 */	mflr r0
/* 8056D9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D9B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056D9B8  3B E0 00 00 */	li r31, 0
/* 8056D9BC  93 C1 00 08 */	stw r30, 8(r1)
/* 8056D9C0  7C 7E 1B 78 */	mr r30, r3
/* 8056D9C4  81 83 09 9C */	lwz r12, 0x99c(r3)
/* 8056D9C8  7D 89 03 A6 */	mtctr r12
/* 8056D9CC  4E 80 04 21 */	bctrl 
/* 8056D9D0  4B E2 AA 29 */	bl mDemo_Get_talk_actor
/* 8056D9D4  7C 03 F0 40 */	cmplw r3, r30
/* 8056D9D8  41 82 00 08 */	beq lbl_8056D9E0
/* 8056D9DC  3B E0 00 01 */	li r31, 1
lbl_8056D9E0:
/* 8056D9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D9E4  7F E3 FB 78 */	mr r3, r31
/* 8056D9E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056D9EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056D9F0  7C 08 03 A6 */	mtlr r0
/* 8056D9F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D9F8  4E 80 00 20 */	blr 
