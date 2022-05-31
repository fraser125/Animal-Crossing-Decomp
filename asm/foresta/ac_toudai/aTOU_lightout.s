lbl_805BF5B8:
/* 805BF5B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BF5BC  7C 08 02 A6 */	mflr r0
/* 805BF5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BF5C4  80 03 01 E8 */	lwz r0, 0x1e8(r3)
/* 805BF5C8  2C 00 00 33 */	cmpwi r0, 0x33
/* 805BF5CC  40 82 00 24 */	bne lbl_805BF5F0
/* 805BF5D0  3C 80 80 65 */	lis r4, lit_513@ha /* 0x8064ABD4@ha */
/* 805BF5D4  38 00 00 00 */	li r0, 0
/* 805BF5D8  38 A4 AB D4 */	addi r5, r4, lit_513@l /* 0x8064ABD4@l */
/* 805BF5DC  38 80 00 01 */	li r4, 1
/* 805BF5E0  C0 05 00 00 */	lfs f0, 0(r5)
/* 805BF5E4  D0 03 01 84 */	stfs f0, 0x184(r3)
/* 805BF5E8  90 03 02 BC */	stw r0, 0x2bc(r3)
/* 805BF5EC  48 00 00 15 */	bl aTOU_setup_action
lbl_805BF5F0:
/* 805BF5F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BF5F4  7C 08 03 A6 */	mtlr r0
/* 805BF5F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BF5FC  4E 80 00 20 */	blr 
