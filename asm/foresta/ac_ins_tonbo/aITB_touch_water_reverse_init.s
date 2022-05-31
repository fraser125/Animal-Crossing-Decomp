lbl_805A1A50:
/* 805A1A50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A1A54  7C 08 02 A6 */	mflr r0
/* 805A1A58  7C 87 23 78 */	mr r7, r4
/* 805A1A5C  39 00 00 00 */	li r8, 0
/* 805A1A60  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A1A64  38 81 00 08 */	addi r4, r1, 8
/* 805A1A68  39 20 00 04 */	li r9, 4
/* 805A1A6C  39 40 00 00 */	li r10, 0
/* 805A1A70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A1A74  7C 7F 1B 78 */	mr r31, r3
/* 805A1A78  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 805A1A7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805A1A80  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A1A84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805A1A88  3C 63 00 02 */	addis r3, r3, 2
/* 805A1A8C  90 A1 00 08 */	stw r5, 8(r1)
/* 805A1A90  38 A0 00 01 */	li r5, 1
/* 805A1A94  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 805A1A98  38 60 00 45 */	li r3, 0x45
/* 805A1A9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A1AA0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A1AA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A1AA8  81 86 00 00 */	lwz r12, 0(r6)
/* 805A1AAC  A8 DF 00 36 */	lha r6, 0x36(r31)
/* 805A1AB0  7D 89 03 A6 */	mtctr r12
/* 805A1AB4  4E 80 04 21 */	bctrl 
/* 805A1AB8  3C 60 80 65 */	lis r3, lit_525@ha /* 0x8064A2EC@ha */
/* 805A1ABC  38 00 00 06 */	li r0, 6
/* 805A1AC0  C0 03 A2 EC */	lfs f0, lit_525@l(r3)  /* 0x8064A2EC@l */
/* 805A1AC4  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 805A1AC8  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 805A1ACC  90 1F 02 28 */	stw r0, 0x228(r31)
/* 805A1AD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A1AD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A1AD8  7C 08 03 A6 */	mtlr r0
/* 805A1ADC  38 21 00 20 */	addi r1, r1, 0x20
/* 805A1AE0  4E 80 00 20 */	blr 
