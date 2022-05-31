lbl_8061C478:
/* 8061C478  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061C47C  7C 08 02 A6 */	mflr r0
/* 8061C480  3C A0 80 65 */	lis r5, lit_380@ha /* 0x8064CAF8@ha */
/* 8061C484  3C 80 80 65 */	lis r4, data_8064CAEC@ha /* 0x8064CAEC@ha */
/* 8061C488  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061C48C  39 05 CA F8 */	addi r8, r5, lit_380@l /* 0x8064CAF8@l */
/* 8061C490  38 E4 CA EC */	addi r7, r4, data_8064CAEC@l /* 0x8064CAEC@l */
/* 8061C494  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008000@ha */
/* 8061C498  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8061C49C  7C 7F 1B 78 */	mr r31, r3
/* 8061C4A0  38 61 00 0C */	addi r3, r1, 0xc
/* 8061C4A4  38 81 00 08 */	addi r4, r1, 8
/* 8061C4A8  80 C8 00 00 */	lwz r6, 0(r8)
/* 8061C4AC  38 A5 80 00 */	addi r5, r5, 0x8000 /* 0x00008000@l */
/* 8061C4B0  80 08 00 04 */	lwz r0, 4(r8)
/* 8061C4B4  81 08 00 08 */	lwz r8, 8(r8)
/* 8061C4B8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8061C4BC  80 C7 00 00 */	lwz r6, 0(r7)
/* 8061C4C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061C4C4  80 07 00 04 */	lwz r0, 4(r7)
/* 8061C4C8  91 01 00 18 */	stw r8, 0x18(r1)
/* 8061C4CC  90 DF 00 00 */	stw r6, 0(r31)
/* 8061C4D0  90 1F 00 04 */	stw r0, 4(r31)
/* 8061C4D4  80 07 00 08 */	lwz r0, 8(r7)
/* 8061C4D8  90 1F 00 08 */	stw r0, 8(r31)
/* 8061C4DC  4B D8 9F 25 */	bl mFI_BlockKind2BkNum
/* 8061C4E0  2C 03 00 00 */	cmpwi r3, 0
/* 8061C4E4  41 82 00 64 */	beq lbl_8061C548
/* 8061C4E8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8061C4EC  38 81 00 18 */	addi r4, r1, 0x18
/* 8061C4F0  80 C1 00 08 */	lwz r6, 8(r1)
/* 8061C4F4  38 61 00 10 */	addi r3, r1, 0x10
/* 8061C4F8  4B D8 96 81 */	bl mFI_BkNum2WposXZ
/* 8061C4FC  2C 03 00 00 */	cmpwi r3, 0
/* 8061C500  41 82 00 48 */	beq lbl_8061C548
/* 8061C504  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064CB04@ha */
/* 8061C508  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8061C50C  C0 23 CB 04 */	lfs f1, lit_387@l(r3)  /* 0x8064CB04@l */
/* 8061C510  EC 01 00 2A */	fadds f0, f1, f0
/* 8061C514  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8061C518  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8061C51C  80 81 00 08 */	lwz r4, 8(r1)
/* 8061C520  4B D8 9C 25 */	bl mFI_BkNum2BaseHeight
/* 8061C524  3C 80 80 65 */	lis r4, lit_388@ha /* 0x8064CB08@ha */
/* 8061C528  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064CB04@ha */
/* 8061C52C  C0 04 CB 08 */	lfs f0, lit_388@l(r4)  /* 0x8064CB08@l */
/* 8061C530  C0 43 CB 04 */	lfs f2, lit_387@l(r3)  /* 0x8064CB04@l */
/* 8061C534  EC 00 08 2A */	fadds f0, f0, f1
/* 8061C538  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8061C53C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8061C540  EC 02 00 2A */	fadds f0, f2, f0
/* 8061C544  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8061C548:
/* 8061C548  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061C54C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8061C550  7C 08 03 A6 */	mtlr r0
/* 8061C554  38 21 00 30 */	addi r1, r1, 0x30
/* 8061C558  4E 80 00 20 */	blr 
