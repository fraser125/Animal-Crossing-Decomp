lbl_804F15EC:
/* 804F15EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F15F0  7C 08 02 A6 */	mflr r0
/* 804F15F4  3C A0 80 64 */	lis r5, lit_3046@ha /* 0x80646E54@ha */
/* 804F15F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F15FC  C0 25 6E 54 */	lfs f1, lit_3046@l(r5)  /* 0x80646E54@l */
/* 804F1600  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F1604  7C 9F 23 78 */	mr r31, r4
/* 804F1608  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F160C  7C 7E 1B 78 */	mr r30, r3
/* 804F1610  38 7E 01 74 */	addi r3, r30, 0x174
/* 804F1614  4B FE 5F ED */	bl Player_actor_Check_AnimationFrame
/* 804F1618  2C 03 00 00 */	cmpwi r3, 0
/* 804F161C  41 82 00 64 */	beq lbl_804F1680
/* 804F1620  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804F1624  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F1628  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804F162C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F1630  3C 63 00 02 */	addis r3, r3, 2
/* 804F1634  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F1638  90 81 00 08 */	stw r4, 8(r1)
/* 804F163C  7F E7 FB 78 */	mr r7, r31
/* 804F1640  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804F1644  38 81 00 08 */	addi r4, r1, 8
/* 804F1648  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F164C  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F1650  38 60 00 3E */	li r3, 0x3e
/* 804F1654  38 A0 00 02 */	li r5, 2
/* 804F1658  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804F165C  39 40 00 03 */	li r10, 3
/* 804F1660  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F1664  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804F1668  81 86 00 00 */	lwz r12, 0(r6)
/* 804F166C  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804F1670  A8 DE 00 DE */	lha r6, 0xde(r30)
/* 804F1674  7C 09 07 34 */	extsh r9, r0
/* 804F1678  7D 89 03 A6 */	mtctr r12
/* 804F167C  4E 80 04 21 */	bctrl 
lbl_804F1680:
/* 804F1680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F1684  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F1688  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F168C  7C 08 03 A6 */	mtlr r0
/* 804F1690  38 21 00 20 */	addi r1, r1, 0x20
/* 804F1694  4E 80 00 20 */	blr 
