lbl_805C7CD0:
/* 805C7CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7CD4  7C 08 02 A6 */	mflr r0
/* 805C7CD8  3C E0 80 65 */	lis r7, lit_941@ha /* 0x8064AE74@ha */
/* 805C7CDC  3C C0 80 65 */	lis r6, lit_835@ha /* 0x8064AE54@ha */
/* 805C7CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7CE4  39 07 AE 74 */	addi r8, r7, lit_941@l /* 0x8064AE74@l */
/* 805C7CE8  38 E6 AE 54 */	addi r7, r6, lit_835@l /* 0x8064AE54@l */
/* 805C7CEC  3C A0 80 65 */	lis r5, lit_836@ha /* 0x8064AE58@ha */
/* 805C7CF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C7CF4  38 C5 AE 58 */	addi r6, r5, lit_836@l /* 0x8064AE58@l */
/* 805C7CF8  C0 28 00 00 */	lfs f1, 0(r8)
/* 805C7CFC  93 C1 00 08 */	stw r30, 8(r1)
/* 805C7D00  7C 9E 23 78 */	mr r30, r4
/* 805C7D04  C0 47 00 00 */	lfs f2, 0(r7)
/* 805C7D08  81 23 00 2C */	lwz r9, 0x2c(r3)
/* 805C7D0C  3C 60 80 65 */	lis r3, lit_837@ha /* 0x8064AE5C@ha */
/* 805C7D10  38 A3 AE 5C */	addi r5, r3, lit_837@l /* 0x8064AE5C@l */
/* 805C7D14  C0 66 00 00 */	lfs f3, 0(r6)
/* 805C7D18  83 E9 09 EC */	lwz r31, 0x9ec(r9)
/* 805C7D1C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 805C7D20  C0 85 00 00 */	lfs f4, 0(r5)
/* 805C7D24  4B DF 34 8D */	bl add_calc
/* 805C7D28  FC 20 0A 10 */	fabs f1, f1
/* 805C7D2C  3C 60 80 65 */	lis r3, lit_838@ha /* 0x8064AE60@ha */
/* 805C7D30  C0 03 AE 60 */	lfs f0, lit_838@l(r3)  /* 0x8064AE60@l */
/* 805C7D34  FC 20 08 18 */	frsp f1, f1
/* 805C7D38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C7D3C  40 80 00 20 */	bge lbl_805C7D5C
/* 805C7D40  3C 80 80 65 */	lis r4, lit_941@ha /* 0x8064AE74@ha */
/* 805C7D44  38 60 00 03 */	li r3, 3
/* 805C7D48  C0 04 AE 74 */	lfs f0, lit_941@l(r4)  /* 0x8064AE74@l */
/* 805C7D4C  38 00 00 05 */	li r0, 5
/* 805C7D50  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 805C7D54  90 7E 00 04 */	stw r3, 4(r30)
/* 805C7D58  98 1F 10 55 */	stb r0, 0x1055(r31)
lbl_805C7D5C:
/* 805C7D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C7D64  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C7D68  7C 08 03 A6 */	mtlr r0
/* 805C7D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7D70  4E 80 00 20 */	blr 
