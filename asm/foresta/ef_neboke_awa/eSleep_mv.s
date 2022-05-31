lbl_80618B18:
/* 80618B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80618B1C  7C 08 02 A6 */	mflr r0
/* 80618B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80618B24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80618B28  7C 7F 1B 78 */	mr r31, r3
/* 80618B2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80618B30  A8 83 00 50 */	lha r4, 0x50(r3)
/* 80618B34  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80618B38  A8 DF 00 00 */	lha r6, 0(r31)
/* 80618B3C  7C 65 1B 78 */	mr r5, r3
/* 80618B40  38 04 08 00 */	addi r0, r4, 0x800
/* 80618B44  38 9F 00 28 */	addi r4, r31, 0x28
/* 80618B48  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 80618B4C  20 06 00 40 */	subfic r0, r6, 0x40
/* 80618B50  7C 1E 07 34 */	extsh r30, r0
/* 80618B54  A8 DF 00 52 */	lha r6, 0x52(r31)
/* 80618B58  38 06 04 80 */	addi r0, r6, 0x480
/* 80618B5C  B0 1F 00 52 */	sth r0, 0x52(r31)
/* 80618B60  4B DA 23 E5 */	bl xyz_t_add
/* 80618B64  38 7F 00 10 */	addi r3, r31, 0x10
/* 80618B68  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80618B6C  7C 65 1B 78 */	mr r5, r3
/* 80618B70  4B DA 23 D5 */	bl xyz_t_add
/* 80618B74  2C 1E 00 3E */	cmpwi r30, 0x3e
/* 80618B78  41 80 00 24 */	blt lbl_80618B9C
/* 80618B7C  3C 60 80 65 */	lis r3, lit_407@ha /* 0x8064C894@ha */
/* 80618B80  38 00 00 C8 */	li r0, 0xc8
/* 80618B84  C0 03 C8 94 */	lfs f0, lit_407@l(r3)  /* 0x8064C894@l */
/* 80618B88  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80618B8C  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80618B90  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80618B94  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 80618B98  48 00 00 5C */	b lbl_80618BF4
lbl_80618B9C:
/* 80618B9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80618BA0  3C 80 80 65 */	lis r4, lit_408@ha /* 0x8064C898@ha */
/* 80618BA4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80618BA8  3C A0 80 65 */	lis r5, lit_409@ha /* 0x8064C89C@ha */
/* 80618BAC  3C 63 00 02 */	addis r3, r3, 2
/* 80618BB0  38 C4 C8 98 */	addi r6, r4, lit_408@l /* 0x8064C898@l */
/* 80618BB4  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 80618BB8  7F C3 F3 78 */	mr r3, r30
/* 80618BBC  C0 45 C8 9C */	lfs f2, lit_409@l(r5)  /* 0x8064C89C@l */
/* 80618BC0  38 A0 00 28 */	li r5, 0x28
/* 80618BC4  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80618BC8  38 80 00 00 */	li r4, 0
/* 80618BCC  C0 26 00 00 */	lfs f1, 0(r6)
/* 80618BD0  7D 89 03 A6 */	mtctr r12
/* 80618BD4  4E 80 04 21 */	bctrl 
/* 80618BD8  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 80618BDC  38 00 00 FF */	li r0, 0xff
/* 80618BE0  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80618BE4  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80618BE8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80618BEC  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80618BF0  B0 1F 00 4E */	sth r0, 0x4e(r31)
lbl_80618BF4:
/* 80618BF4  A8 7F 00 50 */	lha r3, 0x50(r31)
/* 80618BF8  4B DA 1E F9 */	bl sin_s
/* 80618BFC  3C 80 80 65 */	lis r4, lit_411@ha /* 0x8064C8A4@ha */
/* 80618C00  3C 60 80 65 */	lis r3, lit_410@ha /* 0x8064C8A0@ha */
/* 80618C04  C0 64 C8 A4 */	lfs f3, lit_411@l(r4)  /* 0x8064C8A4@l */
/* 80618C08  C0 43 C8 A0 */	lfs f2, lit_410@l(r3)  /* 0x8064C8A0@l */
/* 80618C0C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80618C10  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80618C14  EC 22 08 2A */	fadds f1, f2, f1
/* 80618C18  EC 00 00 72 */	fmuls f0, f0, f1
/* 80618C1C  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80618C20  A8 7F 00 50 */	lha r3, 0x50(r31)
/* 80618C24  4B DA 1E 79 */	bl cos_s
/* 80618C28  3C 80 80 65 */	lis r4, lit_411@ha /* 0x8064C8A4@ha */
/* 80618C2C  3C 60 80 65 */	lis r3, lit_410@ha /* 0x8064C8A0@ha */
/* 80618C30  C0 64 C8 A4 */	lfs f3, lit_411@l(r4)  /* 0x8064C8A4@l */
/* 80618C34  C0 43 C8 A0 */	lfs f2, lit_410@l(r3)  /* 0x8064C8A0@l */
/* 80618C38  EC 23 00 72 */	fmuls f1, f3, f1
/* 80618C3C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80618C40  EC 22 08 2A */	fadds f1, f2, f1
/* 80618C44  EC 00 00 72 */	fmuls f0, f0, f1
/* 80618C48  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80618C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80618C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80618C54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80618C58  7C 08 03 A6 */	mtlr r0
/* 80618C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80618C60  4E 80 00 20 */	blr 
