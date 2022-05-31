lbl_805C7D74:
/* 805C7D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7D78  7C 08 02 A6 */	mflr r0
/* 805C7D7C  3C E0 80 65 */	lis r7, lit_538@ha /* 0x8064AE40@ha */
/* 805C7D80  3C C0 80 65 */	lis r6, lit_835@ha /* 0x8064AE54@ha */
/* 805C7D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7D88  39 07 AE 40 */	addi r8, r7, lit_538@l /* 0x8064AE40@l */
/* 805C7D8C  38 E6 AE 54 */	addi r7, r6, lit_835@l /* 0x8064AE54@l */
/* 805C7D90  3C A0 80 65 */	lis r5, lit_836@ha /* 0x8064AE58@ha */
/* 805C7D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C7D98  38 C5 AE 58 */	addi r6, r5, lit_836@l /* 0x8064AE58@l */
/* 805C7D9C  C0 28 00 00 */	lfs f1, 0(r8)
/* 805C7DA0  93 C1 00 08 */	stw r30, 8(r1)
/* 805C7DA4  7C 9E 23 78 */	mr r30, r4
/* 805C7DA8  C0 47 00 00 */	lfs f2, 0(r7)
/* 805C7DAC  81 23 00 2C */	lwz r9, 0x2c(r3)
/* 805C7DB0  3C 60 80 65 */	lis r3, lit_837@ha /* 0x8064AE5C@ha */
/* 805C7DB4  38 A3 AE 5C */	addi r5, r3, lit_837@l /* 0x8064AE5C@l */
/* 805C7DB8  C0 66 00 00 */	lfs f3, 0(r6)
/* 805C7DBC  83 E9 09 EC */	lwz r31, 0x9ec(r9)
/* 805C7DC0  38 7E 00 1C */	addi r3, r30, 0x1c
/* 805C7DC4  C0 85 00 00 */	lfs f4, 0(r5)
/* 805C7DC8  4B DF 33 E9 */	bl add_calc
/* 805C7DCC  FC 20 0A 10 */	fabs f1, f1
/* 805C7DD0  3C 60 80 65 */	lis r3, lit_838@ha /* 0x8064AE60@ha */
/* 805C7DD4  C0 03 AE 60 */	lfs f0, lit_838@l(r3)  /* 0x8064AE60@l */
/* 805C7DD8  FC 20 08 18 */	frsp f1, f1
/* 805C7DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C7DE0  40 80 00 18 */	bge lbl_805C7DF8
/* 805C7DE4  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064AE40@ha */
/* 805C7DE8  38 00 00 05 */	li r0, 5
/* 805C7DEC  C0 03 AE 40 */	lfs f0, lit_538@l(r3)  /* 0x8064AE40@l */
/* 805C7DF0  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 805C7DF4  98 1F 10 55 */	stb r0, 0x1055(r31)
lbl_805C7DF8:
/* 805C7DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7DFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C7E00  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C7E04  7C 08 03 A6 */	mtlr r0
/* 805C7E08  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7E0C  4E 80 00 20 */	blr 
