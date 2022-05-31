lbl_8060CA60:
/* 8060CA60  38 00 00 BE */	li r0, 0xbe
/* 8060CA64  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8060CA68  B0 03 00 00 */	sth r0, 0(r3)
/* 8060CA6C  39 24 F0 50 */	addi r9, r4, data_8065F050@l /* 0x8065F050@l */
/* 8060CA70  3C 80 80 65 */	lis r4, lit_383@ha /* 0x8064C050@ha */
/* 8060CA74  3C A0 80 65 */	lis r5, data_8064C04C@ha /* 0x8064C04C@ha */
/* 8060CA78  81 09 00 00 */	lwz r8, 0(r9)
/* 8060CA7C  38 C4 C0 50 */	addi r6, r4, lit_383@l /* 0x8064C050@l */
/* 8060CA80  80 09 00 04 */	lwz r0, 4(r9)
/* 8060CA84  38 E5 C0 4C */	addi r7, r5, data_8064C04C@l /* 0x8064C04C@l */
/* 8060CA88  3C A0 80 65 */	lis r5, lit_384@ha /* 0x8064C054@ha */
/* 8060CA8C  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C058@ha */
/* 8060CA90  91 03 00 34 */	stw r8, 0x34(r3)
/* 8060CA94  C0 46 00 00 */	lfs f2, 0(r6)
/* 8060CA98  90 03 00 38 */	stw r0, 0x38(r3)
/* 8060CA9C  38 00 00 00 */	li r0, 0
/* 8060CAA0  C0 25 C0 54 */	lfs f1, lit_384@l(r5)  /* 0x8064C054@l */
/* 8060CAA4  80 C9 00 08 */	lwz r6, 8(r9)
/* 8060CAA8  C0 04 C0 58 */	lfs f0, lit_385@l(r4)  /* 0x8064C058@l */
/* 8060CAAC  90 C3 00 3C */	stw r6, 0x3c(r3)
/* 8060CAB0  C0 67 00 00 */	lfs f3, 0(r7)
/* 8060CAB4  80 A9 00 00 */	lwz r5, 0(r9)
/* 8060CAB8  80 89 00 04 */	lwz r4, 4(r9)
/* 8060CABC  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 8060CAC0  90 83 00 20 */	stw r4, 0x20(r3)
/* 8060CAC4  80 89 00 08 */	lwz r4, 8(r9)
/* 8060CAC8  90 83 00 24 */	stw r4, 0x24(r3)
/* 8060CACC  80 A9 00 00 */	lwz r5, 0(r9)
/* 8060CAD0  80 89 00 04 */	lwz r4, 4(r9)
/* 8060CAD4  90 A3 00 28 */	stw r5, 0x28(r3)
/* 8060CAD8  90 83 00 2C */	stw r4, 0x2c(r3)
/* 8060CADC  80 89 00 08 */	lwz r4, 8(r9)
/* 8060CAE0  90 83 00 30 */	stw r4, 0x30(r3)
/* 8060CAE4  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8060CAE8  D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 8060CAEC  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 8060CAF0  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 8060CAF4  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8060CAF8  4E 80 00 20 */	blr 
