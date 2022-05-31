lbl_80615E58:
/* 80615E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80615E5C  7C 08 02 A6 */	mflr r0
/* 80615E60  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80615E64  3C E0 80 65 */	lis r7, data_8064C6FC@ha /* 0x8064C6FC@ha */
/* 80615E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80615E6C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80615E70  3C C0 80 65 */	lis r6, lit_383@ha /* 0x8064C700@ha */
/* 80615E74  3C A0 80 65 */	lis r5, lit_384@ha /* 0x8064C704@ha */
/* 80615E78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80615E7C  3C 84 00 02 */	addis r4, r4, 2
/* 80615E80  7C 7F 1B 78 */	mr r31, r3
/* 80615E84  C0 27 C6 FC */	lfs f1, data_8064C6FC@l(r7)  /* 0x8064C6FC@l */
/* 80615E88  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 80615E8C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80615E90  C0 46 C7 00 */	lfs f2, lit_383@l(r6)  /* 0x8064C700@l */
/* 80615E94  81 84 00 0C */	lwz r12, 0xc(r4)
/* 80615E98  C0 65 C7 04 */	lfs f3, lit_384@l(r5)  /* 0x8064C704@l */
/* 80615E9C  7D 89 03 A6 */	mtctr r12
/* 80615EA0  4E 80 04 21 */	bctrl 
/* 80615EA4  3C 60 80 65 */	lis r3, lit_384@ha /* 0x8064C704@ha */
/* 80615EA8  38 00 00 78 */	li r0, 0x78
/* 80615EAC  B0 1F 00 00 */	sth r0, 0(r31)
/* 80615EB0  38 00 00 00 */	li r0, 0
/* 80615EB4  C0 03 C7 04 */	lfs f0, lit_384@l(r3)  /* 0x8064C704@l */
/* 80615EB8  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80615EBC  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80615EC0  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80615EC4  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80615EC8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80615ECC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80615ED0  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80615ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80615ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80615EDC  7C 08 03 A6 */	mtlr r0
/* 80615EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80615EE4  4E 80 00 20 */	blr 
