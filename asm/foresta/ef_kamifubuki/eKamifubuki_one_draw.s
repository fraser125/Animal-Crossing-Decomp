lbl_80611B84:
/* 80611B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80611B88  7C 08 02 A6 */	mflr r0
/* 80611B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80611B90  39 61 00 20 */	addi r11, r1, 0x20
/* 80611B94  4B A8 93 41 */	bl func_8009AED4
/* 80611B98  7C BE 2B 78 */	mr r30, r5
/* 80611B9C  7C 7D 1B 78 */	mr r29, r3
/* 80611BA0  83 E5 00 00 */	lwz r31, 0(r5)
/* 80611BA4  38 60 00 00 */	li r3, 0
/* 80611BA8  C0 24 00 00 */	lfs f1, 0(r4)
/* 80611BAC  C0 44 00 04 */	lfs f2, 4(r4)
/* 80611BB0  C0 64 00 08 */	lfs f3, 8(r4)
/* 80611BB4  4B DF A7 4D */	bl Matrix_translate
/* 80611BB8  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 80611BBC  38 9D 00 40 */	addi r4, r29, 0x40
/* 80611BC0  38 A0 00 01 */	li r5, 1
/* 80611BC4  4B DF C3 29 */	bl Matrix_RotateVector
/* 80611BC8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80611BCC  3C 00 43 30 */	lis r0, 0x4330
/* 80611BD0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80611BD4  90 01 00 08 */	stw r0, 8(r1)
/* 80611BD8  80 A4 00 00 */	lwz r5, 0(r4)
/* 80611BDC  3C 60 80 65 */	lis r3, lit_450@ha /* 0x8064C424@ha */
/* 80611BE0  38 83 C4 24 */	addi r4, r3, lit_450@l /* 0x8064C424@l */
/* 80611BE4  3C C0 80 65 */	lis r6, lit_448@ha /* 0x8064C420@ha */
/* 80611BE8  A8 65 19 0A */	lha r3, 0x190a(r5)
/* 80611BEC  38 A6 C4 20 */	addi r5, r6, lit_448@l /* 0x8064C420@l */
/* 80611BF0  3C E0 80 65 */	lis r7, lit_447@ha /* 0x8064C41C@ha */
/* 80611BF4  C8 24 00 00 */	lfd f1, 0(r4)
/* 80611BF8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80611BFC  C0 45 00 00 */	lfs f2, 0(r5)
/* 80611C00  90 61 00 0C */	stw r3, 0xc(r1)
/* 80611C04  38 C7 C4 1C */	addi r6, r7, lit_447@l /* 0x8064C41C@l */
/* 80611C08  C0 66 00 00 */	lfs f3, 0(r6)
/* 80611C0C  3C E0 80 65 */	lis r7, lit_446@ha /* 0x8064C418@ha */
/* 80611C10  C8 01 00 08 */	lfd f0, 8(r1)
/* 80611C14  38 60 00 01 */	li r3, 1
/* 80611C18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80611C1C  C0 27 C4 18 */	lfs f1, lit_446@l(r7)  /* 0x8064C418@l */
/* 80611C20  EC 02 00 32 */	fmuls f0, f2, f0
/* 80611C24  EC 03 00 2A */	fadds f0, f3, f0
/* 80611C28  EC 21 00 32 */	fmuls f1, f1, f0
/* 80611C2C  FC 40 08 90 */	fmr f2, f1
/* 80611C30  FC 60 08 90 */	fmr f3, f1
/* 80611C34  4B DF A7 B9 */	bl Matrix_scale
/* 80611C38  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 80611C3C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80611C40  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80611C44  38 7D 00 08 */	addi r3, r29, 8
/* 80611C48  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80611C4C  90 1D 00 00 */	stw r0, 0(r29)
/* 80611C50  80 7E 00 00 */	lwz r3, 0(r30)
/* 80611C54  4B DF B7 81 */	bl _Matrix_to_Mtx_new
/* 80611C58  90 7D 00 04 */	stw r3, 4(r29)
/* 80611C5C  3C 60 80 CB */	lis r3, ef_kamihubuki01_00_model@ha /* 0x80CB0090@ha */
/* 80611C60  3C 80 DE 00 */	lis r4, 0xde00
/* 80611C64  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80611C68  38 03 00 90 */	addi r0, r3, ef_kamihubuki01_00_model@l /* 0x80CB0090@l */
/* 80611C6C  38 65 00 08 */	addi r3, r5, 8
/* 80611C70  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80611C74  90 85 00 00 */	stw r4, 0(r5)
/* 80611C78  90 05 00 04 */	stw r0, 4(r5)
/* 80611C7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80611C80  4B A8 92 A1 */	bl func_8009AF20
/* 80611C84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80611C88  7C 08 03 A6 */	mtlr r0
/* 80611C8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80611C90  4E 80 00 20 */	blr 
