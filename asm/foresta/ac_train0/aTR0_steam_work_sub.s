lbl_805BFE84:
/* 805BFE84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BFE88  7C 08 02 A6 */	mflr r0
/* 805BFE8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BFE90  39 61 00 30 */	addi r11, r1, 0x30
/* 805BFE94  4B AD B0 3D */	bl func_8009AED0
/* 805BFE98  7C BF 2B 78 */	mr r31, r5
/* 805BFE9C  3C C0 80 6C */	lis r6, setX@ha /* 0x806C71F4@ha */
/* 805BFEA0  7C 7E 1B 78 */	mr r30, r3
/* 805BFEA4  3C A0 80 65 */	lis r5, lit_492@ha /* 0x8064AC68@ha */
/* 805BFEA8  57 E0 10 3A */	slwi r0, r31, 2
/* 805BFEAC  38 C6 71 F4 */	addi r6, r6, setX@l /* 0x806C71F4@l */
/* 805BFEB0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805BFEB4  3C 60 80 65 */	lis r3, lit_493@ha /* 0x8064AC6C@ha */
/* 805BFEB8  7C 06 04 2E */	lfsx f0, r6, r0
/* 805BFEBC  7C 9C 23 78 */	mr r28, r4
/* 805BFEC0  C0 65 AC 68 */	lfs f3, lit_492@l(r5)  /* 0x8064AC68@l */
/* 805BFEC4  EC 81 00 2A */	fadds f4, f1, f0
/* 805BFEC8  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 805BFECC  C0 23 AC 6C */	lfs f1, lit_493@l(r3)  /* 0x8064AC6C@l */
/* 805BFED0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BFED4  EC 43 10 2A */	fadds f2, f3, f2
/* 805BFED8  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 805BFEDC  EC 01 00 2A */	fadds f0, f1, f0
/* 805BFEE0  83 BE 02 C0 */	lwz r29, 0x2c0(r30)
/* 805BFEE4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805BFEE8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BFEEC  4B DD AF CD */	bl mEv_CheckTitleDemo
/* 805BFEF0  2C 03 00 00 */	cmpwi r3, 0
/* 805BFEF4  40 82 00 64 */	bne lbl_805BFF58
/* 805BFEF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BFEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BFF00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BFF04  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 805BFF08  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 805BFF0C  3C 63 00 02 */	addis r3, r3, 2
/* 805BFF10  90 01 00 08 */	stw r0, 8(r1)
/* 805BFF14  3C 80 80 6C */	lis r4, angl@ha /* 0x806C71FC@ha */
/* 805BFF18  81 03 60 9C */	lwz r8, 0x609c(r3)
/* 805BFF1C  57 E0 08 3C */	slwi r0, r31, 1
/* 805BFF20  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805BFF24  38 A4 71 FC */	addi r5, r4, angl@l /* 0x806C71FC@l */
/* 805BFF28  7F 87 E3 78 */	mr r7, r28
/* 805BFF2C  38 81 00 08 */	addi r4, r1, 8
/* 805BFF30  90 C1 00 10 */	stw r6, 0x10(r1)
/* 805BFF34  38 60 00 3F */	li r3, 0x3f
/* 805BFF38  7C C5 02 AE */	lhax r6, r5, r0
/* 805BFF3C  38 A0 00 01 */	li r5, 1
/* 805BFF40  81 88 00 00 */	lwz r12, 0(r8)
/* 805BFF44  39 20 00 00 */	li r9, 0
/* 805BFF48  A1 1E 00 06 */	lhz r8, 6(r30)
/* 805BFF4C  39 40 00 00 */	li r10, 0
/* 805BFF50  7D 89 03 A6 */	mtctr r12
/* 805BFF54  4E 80 04 21 */	bctrl 
lbl_805BFF58:
/* 805BFF58  38 7D 00 01 */	addi r3, r29, 1
/* 805BFF5C  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 805BFF60  54 63 0F FE */	srwi r3, r3, 0x1f
/* 805BFF64  7C 03 00 50 */	subf r0, r3, r0
/* 805BFF68  54 00 10 3E */	rotlwi r0, r0, 2
/* 805BFF6C  7C 00 1A 14 */	add r0, r0, r3
/* 805BFF70  90 1E 02 C0 */	stw r0, 0x2c0(r30)
/* 805BFF74  39 61 00 30 */	addi r11, r1, 0x30
/* 805BFF78  4B AD AF A5 */	bl func_8009AF1C
/* 805BFF7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BFF80  7C 08 03 A6 */	mtlr r0
/* 805BFF84  38 21 00 30 */	addi r1, r1, 0x30
/* 805BFF88  4E 80 00 20 */	blr 
