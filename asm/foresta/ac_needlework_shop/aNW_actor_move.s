lbl_805B6E7C:
/* 805B6E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B6E80  7C 08 02 A6 */	mflr r0
/* 805B6E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B6E88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B6E8C  7C 7F 1B 78 */	mr r31, r3
/* 805B6E90  93 C1 00 08 */	stw r30, 8(r1)
/* 805B6E94  7C 9E 23 78 */	mr r30, r4
/* 805B6E98  4B FF F8 05 */	bl aNW_set_doorSE
/* 805B6E9C  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805B6EA0  7F E3 FB 78 */	mr r3, r31
/* 805B6EA4  7F C4 F3 78 */	mr r4, r30
/* 805B6EA8  7D 89 03 A6 */	mtctr r12
/* 805B6EAC  4E 80 04 21 */	bctrl 
/* 805B6EB0  7F E3 FB 78 */	mr r3, r31
/* 805B6EB4  4B FF FD 29 */	bl aNW_ctrl_light
/* 805B6EB8  2C 03 00 00 */	cmpwi r3, 0
/* 805B6EBC  41 82 00 10 */	beq lbl_805B6ECC
/* 805B6EC0  3C 60 80 65 */	lis r3, lit_443@ha /* 0x8064A9CC@ha */
/* 805B6EC4  C0 23 A9 CC */	lfs f1, lit_443@l(r3)  /* 0x8064A9CC@l */
/* 805B6EC8  48 00 00 0C */	b lbl_805B6ED4
lbl_805B6ECC:
/* 805B6ECC  3C 60 80 65 */	lis r3, lit_442@ha /* 0x8064A9C8@ha */
/* 805B6ED0  C0 23 A9 C8 */	lfs f1, lit_442@l(r3)  /* 0x8064A9C8@l */
lbl_805B6ED4:
/* 805B6ED4  3C 60 80 65 */	lis r3, lit_628@ha /* 0x8064A9E4@ha */
/* 805B6ED8  38 83 A9 E4 */	addi r4, r3, lit_628@l /* 0x8064A9E4@l */
/* 805B6EDC  C0 44 00 00 */	lfs f2, 0(r4)
/* 805B6EE0  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 805B6EE4  4B E0 3D 85 */	bl chase_f
/* 805B6EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B6EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B6EF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B6EF4  7C 08 03 A6 */	mtlr r0
/* 805B6EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B6EFC  4E 80 00 20 */	blr 
