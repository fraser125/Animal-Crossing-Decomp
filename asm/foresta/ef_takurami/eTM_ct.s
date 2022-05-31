lbl_80620ADC:
/* 80620ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80620AE0  7C 08 02 A6 */	mflr r0
/* 80620AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80620AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80620AEC  7C BF 2B 78 */	mr r31, r5
/* 80620AF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80620AF4  7C 7E 1B 78 */	mr r30, r3
/* 80620AF8  7C 83 23 78 */	mr r3, r4
/* 80620AFC  4B D5 DF B5 */	bl getCamera2AngleY
/* 80620B00  A8 1F 00 04 */	lha r0, 4(r31)
/* 80620B04  3C 80 80 65 */	lis r4, lit_390@ha /* 0x8064CD34@ha */
/* 80620B08  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80620B0C  39 04 CD 34 */	addi r8, r4, lit_390@l /* 0x8064CD34@l */
/* 80620B10  3C A0 80 65 */	lis r5, lit_391@ha /* 0x8064CD38@ha */
/* 80620B14  3C 80 80 65 */	lis r4, lit_379@ha /* 0x8064CD24@ha */
/* 80620B18  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80620B1C  38 C4 CD 24 */	addi r6, r4, lit_379@l /* 0x8064CD24@l */
/* 80620B20  38 E5 CD 38 */	addi r7, r5, lit_391@l /* 0x8064CD38@l */
/* 80620B24  3C 80 80 65 */	lis r4, lit_392@ha /* 0x8064CD3C@ha */
/* 80620B28  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80620B2C  38 A4 CD 3C */	addi r5, r4, lit_392@l /* 0x8064CD3C@l */
/* 80620B30  C0 67 00 00 */	lfs f3, 0(r7)
/* 80620B34  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064CD40@ha */
/* 80620B38  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 80620B3C  7C 69 07 34 */	extsh r9, r3
/* 80620B40  38 64 CD 40 */	addi r3, r4, lit_393@l /* 0x8064CD40@l */
/* 80620B44  C0 08 00 00 */	lfs f0, 0(r8)
/* 80620B48  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80620B4C  3C 89 00 01 */	addis r4, r9, 1
/* 80620B50  38 84 80 00 */	addi r4, r4, -32768
/* 80620B54  C0 46 00 00 */	lfs f2, 0(r6)
/* 80620B58  D0 3E 00 30 */	stfs f1, 0x30(r30)
/* 80620B5C  7C 84 07 34 */	extsh r4, r4
/* 80620B60  7C 04 00 50 */	subf r0, r4, r0
/* 80620B64  C0 25 00 00 */	lfs f1, 0(r5)
/* 80620B68  C0 9E 00 14 */	lfs f4, 0x14(r30)
/* 80620B6C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80620B70  38 00 00 36 */	li r0, 0x36
/* 80620B74  EC 84 00 2A */	fadds f4, f4, f0
/* 80620B78  C0 03 00 00 */	lfs f0, 0(r3)
/* 80620B7C  28 04 80 00 */	cmplwi r4, 0x8000
/* 80620B80  D0 9E 00 14 */	stfs f4, 0x14(r30)
/* 80620B84  C0 9E 00 18 */	lfs f4, 0x18(r30)
/* 80620B88  EC 64 18 2A */	fadds f3, f4, f3
/* 80620B8C  D0 7E 00 18 */	stfs f3, 0x18(r30)
/* 80620B90  D0 5E 00 34 */	stfs f2, 0x34(r30)
/* 80620B94  D0 3E 00 38 */	stfs f1, 0x38(r30)
/* 80620B98  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 80620B9C  B0 1E 00 00 */	sth r0, 0(r30)
/* 80620BA0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80620BA4  B0 1E 00 50 */	sth r0, 0x50(r30)
/* 80620BA8  A8 1F 00 04 */	lha r0, 4(r31)
/* 80620BAC  B0 1E 00 4E */	sth r0, 0x4e(r30)
/* 80620BB0  A0 1F 00 06 */	lhz r0, 6(r31)
/* 80620BB4  B0 1E 00 52 */	sth r0, 0x52(r30)
/* 80620BB8  41 80 00 24 */	blt lbl_80620BDC
/* 80620BBC  38 00 00 00 */	li r0, 0
/* 80620BC0  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064CD44@ha */
/* 80620BC4  B0 1E 00 4C */	sth r0, 0x4c(r30)
/* 80620BC8  C0 03 CD 44 */	lfs f0, lit_394@l(r3)  /* 0x8064CD44@l */
/* 80620BCC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80620BD0  EC 01 00 2A */	fadds f0, f1, f0
/* 80620BD4  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80620BD8  48 00 00 20 */	b lbl_80620BF8
lbl_80620BDC:
/* 80620BDC  38 00 00 01 */	li r0, 1
/* 80620BE0  3C 60 80 65 */	lis r3, lit_395@ha /* 0x8064CD48@ha */
/* 80620BE4  B0 1E 00 4C */	sth r0, 0x4c(r30)
/* 80620BE8  C0 03 CD 48 */	lfs f0, lit_395@l(r3)  /* 0x8064CD48@l */
/* 80620BEC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80620BF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80620BF4  D0 1E 00 40 */	stfs f0, 0x40(r30)
lbl_80620BF8:
/* 80620BF8  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064CD44@ha */
/* 80620BFC  C0 03 CD 44 */	lfs f0, lit_394@l(r3)  /* 0x8064CD44@l */
/* 80620C00  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 80620C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80620C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80620C0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80620C10  7C 08 03 A6 */	mtlr r0
/* 80620C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80620C18  4E 80 00 20 */	blr 
