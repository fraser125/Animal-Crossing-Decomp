lbl_80404E34:
/* 80404E34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80404E38  7C 08 02 A6 */	mflr r0
/* 80404E3C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80404E40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80404E44  38 E4 52 F0 */	addi r7, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 80404E48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80404E4C  7C 7F 1B 78 */	mr r31, r3
/* 80404E50  88 07 00 1C */	lbz r0, 0x1c(r7)
/* 80404E54  7C 00 F8 00 */	cmpw r0, r31
/* 80404E58  41 82 00 88 */	beq lbl_80404EE0
/* 80404E5C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80404E60  3C 00 43 30 */	lis r0, 0x4330
/* 80404E64  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80404E68  3C 80 80 64 */	lis r4, lit_382@ha /* 0x80643604@ha */
/* 80404E6C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80404E70  38 C4 36 04 */	addi r6, r4, lit_382@l /* 0x80643604@l */
/* 80404E74  3C 60 80 64 */	lis r3, lit_380@ha /* 0x80643600@ha */
/* 80404E78  C8 46 00 00 */	lfd f2, 0(r6)
/* 80404E7C  90 01 00 08 */	stw r0, 8(r1)
/* 80404E80  38 83 36 00 */	addi r4, r3, lit_380@l /* 0x80643600@l */
/* 80404E84  C0 04 00 00 */	lfs f0, 0(r4)
/* 80404E88  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80404E8C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80404E90  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80404E94  3C A0 80 64 */	lis r5, data_806435FC@ha /* 0x806435FC@ha */
/* 80404E98  9B E7 00 1C */	stb r31, 0x1c(r7)
/* 80404E9C  EC 41 10 28 */	fsubs f2, f1, f2
/* 80404EA0  C0 25 35 FC */	lfs f1, data_806435FC@l(r5)  /* 0x806435FC@l */
/* 80404EA4  80 64 00 00 */	lwz r3, 0(r4)
/* 80404EA8  EC 00 10 24 */	fdivs f0, f0, f2
/* 80404EAC  D0 47 00 20 */	stfs f2, 0x20(r7)
/* 80404EB0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80404EB4  D0 07 00 28 */	stfs f0, 0x28(r7)
/* 80404EB8  D0 27 00 24 */	stfs f1, 0x24(r7)
/* 80404EBC  B3 E3 01 10 */	sth r31, 0x110(r3)
/* 80404EC0  80 64 00 00 */	lwz r3, 0(r4)
/* 80404EC4  A8 03 01 0E */	lha r0, 0x10e(r3)
/* 80404EC8  7C 00 07 35 */	extsh. r0, r0
/* 80404ECC  40 81 00 08 */	ble lbl_80404ED4
/* 80404ED0  7C 1F 03 78 */	mr r31, r0
lbl_80404ED4:
/* 80404ED4  4B C5 C7 DD */	bl JC_JFWDisplay_getManager
/* 80404ED8  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80404EDC  4B C5 C7 E5 */	bl JC_JFWDisplay_setFrameRate
lbl_80404EE0:
/* 80404EE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80404EE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80404EE8  7C 08 03 A6 */	mtlr r0
/* 80404EEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80404EF0  4E 80 00 20 */	blr 
