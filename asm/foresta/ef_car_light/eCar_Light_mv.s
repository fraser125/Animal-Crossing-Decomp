lbl_8060796C:
/* 8060796C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80607970  7C 08 02 A6 */	mflr r0
/* 80607974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80607978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060797C  7C 7F 1B 78 */	mr r31, r3
/* 80607980  A8 63 00 00 */	lha r3, 0(r3)
/* 80607984  2C 03 00 0C */	cmpwi r3, 0xc
/* 80607988  40 81 00 40 */	ble lbl_806079C8
/* 8060798C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80607990  3C C0 80 65 */	lis r6, data_8064BD2C@ha /* 0x8064BD2C@ha */
/* 80607994  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80607998  3C A0 80 65 */	lis r5, lit_391@ha /* 0x8064BD30@ha */
/* 8060799C  3C 84 00 02 */	addis r4, r4, 2
/* 806079A0  C0 45 BD 30 */	lfs f2, lit_391@l(r5)  /* 0x8064BD30@l */
/* 806079A4  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 806079A8  38 A0 00 18 */	li r5, 0x18
/* 806079AC  C0 26 BD 2C */	lfs f1, data_8064BD2C@l(r6)  /* 0x8064BD2C@l */
/* 806079B0  81 84 00 14 */	lwz r12, 0x14(r4)
/* 806079B4  38 80 00 0C */	li r4, 0xc
/* 806079B8  7D 89 03 A6 */	mtctr r12
/* 806079BC  4E 80 04 21 */	bctrl 
/* 806079C0  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 806079C4  48 00 00 3C */	b lbl_80607A00
lbl_806079C8:
/* 806079C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 806079CC  3C C0 80 65 */	lis r6, lit_391@ha /* 0x8064BD30@ha */
/* 806079D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 806079D4  3C A0 80 65 */	lis r5, data_8064BD2C@ha /* 0x8064BD2C@ha */
/* 806079D8  3C 84 00 02 */	addis r4, r4, 2
/* 806079DC  C0 45 BD 2C */	lfs f2, data_8064BD2C@l(r5)  /* 0x8064BD2C@l */
/* 806079E0  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 806079E4  38 A0 00 0C */	li r5, 0xc
/* 806079E8  C0 26 BD 30 */	lfs f1, lit_391@l(r6)  /* 0x8064BD30@l */
/* 806079EC  81 84 00 14 */	lwz r12, 0x14(r4)
/* 806079F0  38 80 00 00 */	li r4, 0
/* 806079F4  7D 89 03 A6 */	mtctr r12
/* 806079F8  4E 80 04 21 */	bctrl 
/* 806079FC  D0 3F 00 34 */	stfs f1, 0x34(r31)
lbl_80607A00:
/* 80607A00  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80607A04  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80607A08  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80607A0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80607A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80607A14  7C 08 03 A6 */	mtlr r0
/* 80607A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80607A1C  4E 80 00 20 */	blr 
