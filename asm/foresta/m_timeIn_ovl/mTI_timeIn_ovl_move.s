lbl_805FF8C8:
/* 805FF8C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FF8CC  7C 08 02 A6 */	mflr r0
/* 805FF8D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FF8D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FF8D8  93 C1 00 08 */	stw r30, 8(r1)
/* 805FF8DC  7C 7E 1B 78 */	mr r30, r3
/* 805FF8E0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FF8E4  81 84 01 38 */	lwz r12, 0x138(r4)
/* 805FF8E8  3B E4 01 2C */	addi r31, r4, 0x12c
/* 805FF8EC  7D 89 03 A6 */	mtctr r12
/* 805FF8F0  4E 80 04 21 */	bctrl 
/* 805FF8F4  80 1F 00 04 */	lwz r0, 4(r31)
/* 805FF8F8  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806D1238@ha */
/* 805FF8FC  38 A3 12 38 */	addi r5, r3, ovl_move_proc@l /* 0x806D1238@l */
/* 805FF900  7F C3 F3 78 */	mr r3, r30
/* 805FF904  54 00 10 3A */	slwi r0, r0, 2
/* 805FF908  7F E4 FB 78 */	mr r4, r31
/* 805FF90C  7D 85 00 2E */	lwzx r12, r5, r0
/* 805FF910  7D 89 03 A6 */	mtctr r12
/* 805FF914  4E 80 04 21 */	bctrl 
/* 805FF918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FF91C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FF920  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FF924  7C 08 03 A6 */	mtlr r0
/* 805FF928  38 21 00 10 */	addi r1, r1, 0x10
/* 805FF92C  4E 80 00 20 */	blr 
