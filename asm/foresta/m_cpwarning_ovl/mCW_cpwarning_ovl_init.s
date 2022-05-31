lbl_805CF26C:
/* 805CF26C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CF270  7C 08 02 A6 */	mflr r0
/* 805CF274  38 C0 00 00 */	li r6, 0
/* 805CF278  38 A0 00 01 */	li r5, 1
/* 805CF27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CF280  38 00 00 1E */	li r0, 0x1e
/* 805CF284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CF288  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805CF28C  3C 60 80 65 */	lis r3, lit_413@ha /* 0x8064B04C@ha */
/* 805CF290  C0 03 B0 4C */	lfs f0, lit_413@l(r3)  /* 0x8064B04C@l */
/* 805CF294  38 60 10 03 */	li r3, 0x1003
/* 805CF298  83 E7 09 C4 */	lwz r31, 0x9c4(r7)
/* 805CF29C  90 C7 09 3C */	stw r6, 0x93c(r7)
/* 805CF2A0  90 C4 00 04 */	stw r6, 4(r4)
/* 805CF2A4  90 A4 00 30 */	stw r5, 0x30(r4)
/* 805CF2A8  B0 1F 00 06 */	sth r0, 6(r31)
/* 805CF2AC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 805CF2B0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 805CF2B4  98 BF 00 02 */	stb r5, 2(r31)
/* 805CF2B8  48 05 EA 4D */	bl sAdo_SysTrgStart
/* 805CF2BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805CF2C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805CF2C4  3C 63 00 02 */	addis r3, r3, 2
/* 805CF2C8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805CF2CC  88 03 23 AE */	lbz r0, 0x23ae(r3)
/* 805CF2D0  98 1F 00 05 */	stb r0, 5(r31)
/* 805CF2D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CF2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CF2DC  7C 08 03 A6 */	mtlr r0
/* 805CF2E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805CF2E4  4E 80 00 20 */	blr 
