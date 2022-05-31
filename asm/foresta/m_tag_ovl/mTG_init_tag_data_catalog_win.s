lbl_805F1030:
/* 805F1030  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F1034  7C 08 02 A6 */	mflr r0
/* 805F1038  1C 84 00 0A */	mulli r4, r4, 0xa
/* 805F103C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F1040  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805F1044  7C 7F 1B 78 */	mr r31, r3
/* 805F1048  3C 60 80 6D */	lis r3, mTG_catalog_str@ha /* 0x806D0130@ha */
/* 805F104C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805F1050  38 03 01 30 */	addi r0, r3, mTG_catalog_str@l /* 0x806D0130@l */
/* 805F1054  7C 80 22 14 */	add r4, r0, r4
/* 805F1058  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 805F105C  80 65 09 7C */	lwz r3, 0x97c(r5)
/* 805F1060  38 A0 00 0A */	li r5, 0xa
/* 805F1064  3B C3 00 08 */	addi r30, r3, 8
/* 805F1068  38 7E 00 48 */	addi r3, r30, 0x48
/* 805F106C  4B DC 99 B9 */	bl func_803BAA24
/* 805F1070  38 7E 00 48 */	addi r3, r30, 0x48
/* 805F1074  38 80 00 10 */	li r4, 0x10
/* 805F1078  38 A0 00 20 */	li r5, 0x20
/* 805F107C  4B DC B5 A9 */	bl func_803BC624
/* 805F1080  7C 60 1B 78 */	mr r0, r3
/* 805F1084  38 7E 00 48 */	addi r3, r30, 0x48
/* 805F1088  7C 04 03 78 */	mr r4, r0
/* 805F108C  38 A0 00 01 */	li r5, 1
/* 805F1090  4B DB E6 41 */	bl mFont_GetStringWidth
/* 805F1094  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805F1098  3C 00 43 30 */	lis r0, 0x4330
/* 805F109C  90 61 00 0C */	stw r3, 0xc(r1)
/* 805F10A0  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805F10A4  3C 60 80 65 */	lis r3, lit_874@ha /* 0x8064B868@ha */
/* 805F10A8  C8 44 B8 24 */	lfd f2, lit_523@l(r4)  /* 0x8064B824@l */
/* 805F10AC  90 01 00 08 */	stw r0, 8(r1)
/* 805F10B0  38 A3 B8 68 */	addi r5, r3, lit_874@l /* 0x8064B868@l */
/* 805F10B4  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805F10B8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805F10BC  C8 21 00 08 */	lfd f1, 8(r1)
/* 805F10C0  38 83 B8 14 */	addi r4, r3, data_8064B814@l /* 0x8064B814@l */
/* 805F10C4  7F C3 F3 78 */	mr r3, r30
/* 805F10C8  EC 21 10 28 */	fsubs f1, f1, f2
/* 805F10CC  C0 44 00 00 */	lfs f2, 0(r4)
/* 805F10D0  38 80 00 00 */	li r4, 0
/* 805F10D4  EC 20 00 72 */	fmuls f1, f0, f1
/* 805F10D8  4B FF E9 25 */	bl mTG_set_tag_win_scale_p
/* 805F10DC  3C 60 80 65 */	lis r3, lit_877@ha /* 0x8064B874@ha */
/* 805F10E0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805F10E4  C0 03 B8 74 */	lfs f0, lit_877@l(r3)  /* 0x8064B874@l */
/* 805F10E8  38 00 00 02 */	li r0, 2
/* 805F10EC  7F C3 F3 78 */	mr r3, r30
/* 805F10F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F10F4  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 805F10F8  98 1E 00 01 */	stb r0, 1(r30)
/* 805F10FC  4B FF E7 71 */	bl mTG_get_item_name_wait_time
/* 805F1100  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 805F1104  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805F1108  B0 64 02 F0 */	sth r3, 0x2f0(r4)
/* 805F110C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805F1110  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805F1114  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F1118  7C 08 03 A6 */	mtlr r0
/* 805F111C  38 21 00 20 */	addi r1, r1, 0x20
/* 805F1120  4E 80 00 20 */	blr 
