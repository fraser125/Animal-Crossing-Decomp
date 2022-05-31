lbl_8045F1C0:
/* 8045F1C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045F1C4  7C 08 02 A6 */	mflr r0
/* 8045F1C8  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8045F1CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045F1D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045F1D4  7C 7F 1B 78 */	mr r31, r3
/* 8045F1D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045F1DC  83 C4 61 38 */	lwz r30, debug_mode@l(r4)  /* 0x81166138@l */
/* 8045F1E0  A8 1E 16 98 */	lha r0, 0x1698(r30)
/* 8045F1E4  2C 00 00 00 */	cmpwi r0, 0
/* 8045F1E8  41 82 00 5C */	beq lbl_8045F244
/* 8045F1EC  4B BF DB 09 */	bl fqrand
/* 8045F1F0  A8 7E 16 9A */	lha r3, 0x169a(r30)
/* 8045F1F4  3C 80 43 30 */	lis r4, 0x4330
/* 8045F1F8  A8 1E 16 98 */	lha r0, 0x1698(r30)
/* 8045F1FC  3C C0 80 64 */	lis r6, lit_589@ha /* 0x8064463C@ha */
/* 8045F200  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8045F204  90 81 00 08 */	stw r4, 8(r1)
/* 8045F208  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8045F20C  C8 86 46 3C */	lfd f4, lit_589@l(r6)  /* 0x8064463C@l */
/* 8045F210  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8045F214  3C 60 80 64 */	lis r3, lit_1111@ha /* 0x8064470C@ha */
/* 8045F218  C8 01 00 08 */	lfd f0, 8(r1)
/* 8045F21C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045F220  EC 60 20 28 */	fsubs f3, f0, f4
/* 8045F224  C0 03 47 0C */	lfs f0, lit_1111@l(r3)  /* 0x8064470C@l */
/* 8045F228  90 81 00 10 */	stw r4, 0x10(r1)
/* 8045F22C  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8045F230  EC 63 00 72 */	fmuls f3, f3, f1
/* 8045F234  EC 22 20 28 */	fsubs f1, f2, f4
/* 8045F238  EC 21 18 2A */	fadds f1, f1, f3
/* 8045F23C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8045F240  48 00 00 6C */	b lbl_8045F2AC
lbl_8045F244:
/* 8045F244  80 1F 00 00 */	lwz r0, 0(r31)
/* 8045F248  2C 00 00 0C */	cmpwi r0, 0xc
/* 8045F24C  40 82 00 34 */	bne lbl_8045F280
/* 8045F250  4B BF DA A5 */	bl fqrand
/* 8045F254  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8045F258  3C 80 80 64 */	lis r4, lit_1112@ha /* 0x80644710@ha */
/* 8045F25C  38 A3 45 C4 */	addi r5, r3, lit_461@l /* 0x806445C4@l */
/* 8045F260  C0 44 47 10 */	lfs f2, lit_1112@l(r4)  /* 0x80644710@l */
/* 8045F264  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045F268  3C 60 80 64 */	lis r3, lit_1111@ha /* 0x8064470C@ha */
/* 8045F26C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8045F270  C0 03 47 0C */	lfs f0, lit_1111@l(r3)  /* 0x8064470C@l */
/* 8045F274  EC 22 08 2A */	fadds f1, f2, f1
/* 8045F278  EC 20 00 72 */	fmuls f1, f0, f1
/* 8045F27C  48 00 00 30 */	b lbl_8045F2AC
lbl_8045F280:
/* 8045F280  4B BF DA 75 */	bl fqrand
/* 8045F284  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8045F288  3C 80 80 64 */	lis r4, lit_1113@ha /* 0x80644714@ha */
/* 8045F28C  38 A3 45 C4 */	addi r5, r3, lit_461@l /* 0x806445C4@l */
/* 8045F290  C0 44 47 14 */	lfs f2, lit_1113@l(r4)  /* 0x80644714@l */
/* 8045F294  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045F298  3C 60 80 64 */	lis r3, lit_1111@ha /* 0x8064470C@ha */
/* 8045F29C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8045F2A0  C0 03 47 0C */	lfs f0, lit_1111@l(r3)  /* 0x8064470C@l */
/* 8045F2A4  EC 22 08 2A */	fadds f1, f2, f1
/* 8045F2A8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8045F2AC:
/* 8045F2AC  80 1F 00 00 */	lwz r0, 0(r31)
/* 8045F2B0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8045F2B4  41 82 00 48 */	beq lbl_8045F2FC
/* 8045F2B8  2C 00 00 09 */	cmpwi r0, 9
/* 8045F2BC  40 82 00 14 */	bne lbl_8045F2D0
/* 8045F2C0  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806446FC@ha */
/* 8045F2C4  C0 03 46 FC */	lfs f0, lit_1066@l(r3)  /* 0x806446FC@l */
/* 8045F2C8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8045F2CC  48 00 00 30 */	b lbl_8045F2FC
lbl_8045F2D0:
/* 8045F2D0  2C 00 00 0B */	cmpwi r0, 0xb
/* 8045F2D4  40 82 00 14 */	bne lbl_8045F2E8
/* 8045F2D8  3C 60 80 64 */	lis r3, lit_1114@ha /* 0x80644718@ha */
/* 8045F2DC  C0 03 47 18 */	lfs f0, lit_1114@l(r3)  /* 0x80644718@l */
/* 8045F2E0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8045F2E4  48 00 00 18 */	b lbl_8045F2FC
lbl_8045F2E8:
/* 8045F2E8  2C 00 00 0C */	cmpwi r0, 0xc
/* 8045F2EC  40 82 00 10 */	bne lbl_8045F2FC
/* 8045F2F0  3C 60 80 64 */	lis r3, lit_1068@ha /* 0x80644704@ha */
/* 8045F2F4  C0 03 47 04 */	lfs f0, lit_1068@l(r3)  /* 0x80644704@l */
/* 8045F2F8  EC 21 00 32 */	fmuls f1, f1, f0
lbl_8045F2FC:
/* 8045F2FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045F300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045F304  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045F308  7C 08 03 A6 */	mtlr r0
/* 8045F30C  38 21 00 20 */	addi r1, r1, 0x20
/* 8045F310  4E 80 00 20 */	blr 
