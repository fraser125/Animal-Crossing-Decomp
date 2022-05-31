lbl_8049DFF4:
/* 8049DFF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049DFF8  7C 08 02 A6 */	mflr r0
/* 8049DFFC  3C 80 81 1D */	lis r4, data_811CF3A8@ha /* 0x811CF3A8@ha */
/* 8049E000  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049E004  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8049E008  3B E4 F3 A8 */	addi r31, r4, data_811CF3A8@l /* 0x811CF3A8@l */
/* 8049E00C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8049E010  7C 7E 1B 78 */	mr r30, r3
/* 8049E014  4B FF FF A9 */	bl aSG_CountPictureKind
/* 8049E018  90 7E 01 74 */	stw r3, 0x174(r30)
/* 8049E01C  38 7E 01 78 */	addi r3, r30, 0x178
/* 8049E020  38 9E 01 7C */	addi r4, r30, 0x17c
/* 8049E024  38 A1 00 08 */	addi r5, r1, 8
/* 8049E028  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8049E02C  90 1F 02 04 */	stw r0, 0x204(r31)
/* 8049E030  80 DE 00 28 */	lwz r6, 0x28(r30)
/* 8049E034  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8049E038  90 C1 00 08 */	stw r6, 8(r1)
/* 8049E03C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049E040  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8049E044  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049E048  4B F0 77 19 */	bl mFI_Wpos2BlockNum
/* 8049E04C  80 1E 01 78 */	lwz r0, 0x178(r30)
/* 8049E050  3C A0 43 30 */	lis r5, 0x4330
/* 8049E054  3C 80 80 64 */	lis r4, lit_730@ha /* 0x80645BBC@ha */
/* 8049E058  3C C0 80 64 */	lis r6, lit_728@ha /* 0x80645BB8@ha */
/* 8049E05C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8049E060  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8049E064  C8 24 5B BC */	lfd f1, lit_730@l(r4)  /* 0x80645BBC@l */
/* 8049E068  38 60 00 00 */	li r3, 0
/* 8049E06C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049E070  38 00 00 09 */	li r0, 9
/* 8049E074  C0 46 5B B8 */	lfs f2, lit_728@l(r6)  /* 0x80645BB8@l */
/* 8049E078  7C 64 1B 78 */	mr r4, r3
/* 8049E07C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8049E080  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8049E084  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049E088  EC 02 00 32 */	fmuls f0, f2, f0
/* 8049E08C  D0 1E 01 80 */	stfs f0, 0x180(r30)
/* 8049E090  80 BE 01 7C */	lwz r5, 0x17c(r30)
/* 8049E094  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8049E098  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8049E09C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8049E0A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049E0A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8049E0A8  D0 1E 01 84 */	stfs f0, 0x184(r30)
/* 8049E0AC  A8 BE 00 24 */	lha r5, 0x24(r30)
/* 8049E0B0  B0 BE 01 88 */	sth r5, 0x188(r30)
/* 8049E0B4  A8 BE 01 88 */	lha r5, 0x188(r30)
/* 8049E0B8  B0 BF 02 08 */	sth r5, 0x208(r31)
/* 8049E0BC  7C 09 03 A6 */	mtctr r0
lbl_8049E0C0:
/* 8049E0C0  38 03 01 B8 */	addi r0, r3, 0x1b8
/* 8049E0C4  38 63 00 48 */	addi r3, r3, 0x48
/* 8049E0C8  7C 9E 03 2E */	sthx r4, r30, r0
/* 8049E0CC  42 00 FF F4 */	bdnz lbl_8049E0C0
/* 8049E0D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049E0D4  93 DF 02 00 */	stw r30, 0x200(r31)
/* 8049E0D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049E0DC  3F C3 00 02 */	addis r30, r3, 2
/* 8049E0E0  80 1E 60 BC */	lwz r0, 0x60bc(r30)
/* 8049E0E4  28 00 00 00 */	cmplwi r0, 0
/* 8049E0E8  40 82 00 4C */	bne lbl_8049E134
/* 8049E0EC  38 60 00 10 */	li r3, 0x10
/* 8049E0F0  4B F1 E3 6D */	bl zelda_malloc
/* 8049E0F4  3C 80 80 4A */	lis r4, Shop_Goods_Actor_single_draw@ha /* 0x8049DE6C@ha */
/* 8049E0F8  90 7E 60 BC */	stw r3, 0x60bc(r30)
/* 8049E0FC  38 04 DE 6C */	addi r0, r4, Shop_Goods_Actor_single_draw@l /* 0x8049DE6C@l */
/* 8049E100  3C A0 80 4A */	lis r5, Shop_Goods_Actor_player_drop_entry@ha /* 0x8049D4F8@ha */
/* 8049E104  90 03 00 00 */	stw r0, 0(r3)
/* 8049E108  3C 80 80 4A */	lis r4, func_8049D434@ha /* 0x8049D434@ha */
/* 8049E10C  3C 60 80 4A */	lis r3, Shop_Goods_Actor_single_set_angle_y@ha /* 0x8049D460@ha */
/* 8049E110  38 C5 D4 F8 */	addi r6, r5, Shop_Goods_Actor_player_drop_entry@l /* 0x8049D4F8@l */
/* 8049E114  80 BE 60 BC */	lwz r5, 0x60bc(r30)
/* 8049E118  38 84 D4 34 */	addi r4, r4, func_8049D434@l /* 0x8049D434@l */
/* 8049E11C  38 03 D4 60 */	addi r0, r3, Shop_Goods_Actor_single_set_angle_y@l /* 0x8049D460@l */
/* 8049E120  90 C5 00 04 */	stw r6, 4(r5)
/* 8049E124  80 7E 60 BC */	lwz r3, 0x60bc(r30)
/* 8049E128  90 83 00 08 */	stw r4, 8(r3)
/* 8049E12C  80 7E 60 BC */	lwz r3, 0x60bc(r30)
/* 8049E130  90 03 00 0C */	stw r0, 0xc(r3)
lbl_8049E134:
/* 8049E134  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049E138  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8049E13C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8049E140  7C 08 03 A6 */	mtlr r0
/* 8049E144  38 21 00 30 */	addi r1, r1, 0x30
/* 8049E148  4E 80 00 20 */	blr 
