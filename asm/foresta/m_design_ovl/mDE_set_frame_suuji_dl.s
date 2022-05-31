lbl_805D5904:
/* 805D5904  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D5908  7C 08 02 A6 */	mflr r0
/* 805D590C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D5910  39 61 00 20 */	addi r11, r1, 0x20
/* 805D5914  4B AC 55 BD */	bl func_8009AED0
/* 805D5918  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805D591C  3C 60 80 65 */	lis r3, lit_1909@ha /* 0x8064B180@ha */
/* 805D5920  38 E3 B1 80 */	addi r7, r3, lit_1909@l /* 0x8064B180@l */
/* 805D5924  3C 60 80 65 */	lis r3, lit_605@ha /* 0x8064B16C@ha */
/* 805D5928  83 86 09 E0 */	lwz r28, 0x9e0(r6)
/* 805D592C  38 C3 B1 6C */	addi r6, r3, lit_605@l /* 0x8064B16C@l */
/* 805D5930  C0 27 00 00 */	lfs f1, 0(r7)
/* 805D5934  7C BD 2B 78 */	mr r29, r5
/* 805D5938  88 BC 06 9B */	lbz r5, 0x69b(r28)
/* 805D593C  38 60 00 00 */	li r3, 0
/* 805D5940  FC 40 08 90 */	fmr f2, f1
/* 805D5944  83 E4 00 00 */	lwz r31, 0(r4)
/* 805D5948  C0 66 00 00 */	lfs f3, 0(r6)
/* 805D594C  3B C5 00 01 */	addi r30, r5, 1
/* 805D5950  4B E3 6A 9D */	bl Matrix_scale
/* 805D5954  3C 60 80 65 */	lis r3, lit_1910@ha /* 0x8064B184@ha */
/* 805D5958  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 805D595C  C0 63 B1 84 */	lfs f3, lit_1910@l(r3)  /* 0x8064B184@l */
/* 805D5960  38 60 00 01 */	li r3, 1
/* 805D5964  C0 5D 00 1C */	lfs f2, 0x1c(r29)
/* 805D5968  4B E3 69 99 */	bl Matrix_translate
/* 805D596C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805D5970  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 805D5974  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805D5978  7F E3 FB 78 */	mr r3, r31
/* 805D597C  90 1D 00 00 */	stw r0, 0(r29)
/* 805D5980  4B E3 7A 55 */	bl _Matrix_to_Mtx_new
/* 805D5984  90 7D 00 04 */	stw r3, 4(r29)
/* 805D5988  88 1C 06 A7 */	lbz r0, 0x6a7(r28)
/* 805D598C  28 00 00 01 */	cmplwi r0, 1
/* 805D5990  40 82 00 24 */	bne lbl_805D59B4
/* 805D5994  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 805D5998  3C 60 D7 1E */	lis r3, 0xD71E /* 0xD71E1EFF@ha */
/* 805D599C  38 04 00 80 */	addi r0, r4, 0x0080 /* 0xFA000080@l */
/* 805D59A0  90 1D 00 08 */	stw r0, 8(r29)
/* 805D59A4  38 03 1E FF */	addi r0, r3, 0x1EFF /* 0xD71E1EFF@l */
/* 805D59A8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805D59AC  3B BD 00 10 */	addi r29, r29, 0x10
/* 805D59B0  48 00 00 20 */	b lbl_805D59D0
lbl_805D59B4:
/* 805D59B4  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805D59B8  3C 60 FF F6 */	lis r3, 0xFFF6 /* 0xFFF5D7B4@ha */
/* 805D59BC  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805D59C0  90 1D 00 08 */	stw r0, 8(r29)
/* 805D59C4  38 03 D7 B4 */	addi r0, r3, 0xD7B4 /* 0xFFF5D7B4@l */
/* 805D59C8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805D59CC  3B BD 00 10 */	addi r29, r29, 0x10
lbl_805D59D0:
/* 805D59D0  3D 00 DE 00 */	lis r8, 0xde00
/* 805D59D4  3C 60 80 A5 */	lis r3, des_win_shikiri_model@ha /* 0x80A52A90@ha */
/* 805D59D8  91 1D 00 00 */	stw r8, 0(r29)
/* 805D59DC  38 03 2A 90 */	addi r0, r3, des_win_shikiri_model@l /* 0x80A52A90@l */
/* 805D59E0  3C A0 80 A5 */	lis r5, des_win_suuji_before@ha /* 0x80A48240@ha */
/* 805D59E4  3C 80 80 A5 */	lis r4, des_win_suuji3_model@ha /* 0x80A482B8@ha */
/* 805D59E8  90 1D 00 04 */	stw r0, 4(r29)
/* 805D59EC  3C 60 80 A5 */	lis r3, des_win_suuji4_model@ha /* 0x80A482E0@ha */
/* 805D59F0  38 A5 82 40 */	addi r5, r5, des_win_suuji_before@l /* 0x80A48240@l */
/* 805D59F4  38 84 82 B8 */	addi r4, r4, des_win_suuji3_model@l /* 0x80A482B8@l */
/* 805D59F8  91 1D 00 08 */	stw r8, 8(r29)
/* 805D59FC  2C 1E 00 0A */	cmpwi r30, 0xa
/* 805D5A00  38 03 82 E0 */	addi r0, r3, des_win_suuji4_model@l /* 0x80A482E0@l */
/* 805D5A04  90 BD 00 0C */	stw r5, 0xc(r29)
/* 805D5A08  91 1D 00 10 */	stw r8, 0x10(r29)
/* 805D5A0C  90 9D 00 14 */	stw r4, 0x14(r29)
/* 805D5A10  91 1D 00 18 */	stw r8, 0x18(r29)
/* 805D5A14  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 805D5A18  3B BD 00 20 */	addi r29, r29, 0x20
/* 805D5A1C  41 80 00 6C */	blt lbl_805D5A88
/* 805D5A20  38 60 00 0A */	li r3, 0xa
/* 805D5A24  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060020@ha */
/* 805D5A28  7C 1E 1B D6 */	divw r0, r30, r3
/* 805D5A2C  3C A0 80 6D */	lis r5, suuji_table@ha /* 0x806CC744@ha */
/* 805D5A30  38 C7 00 20 */	addi r6, r7, 0x0020 /* 0xDB060020@l */
/* 805D5A34  3C 80 80 A5 */	lis r4, des_win_suuji1_model@ha /* 0x80A48268@ha */
/* 805D5A38  90 DD 00 00 */	stw r6, 0(r29)
/* 805D5A3C  38 C5 C7 44 */	addi r6, r5, suuji_table@l /* 0x806CC744@l */
/* 805D5A40  80 A6 00 04 */	lwz r5, 4(r6)
/* 805D5A44  7C 00 19 D6 */	mullw r0, r0, r3
/* 805D5A48  38 84 82 68 */	addi r4, r4, des_win_suuji1_model@l /* 0x80A48268@l */
/* 805D5A4C  90 BD 00 04 */	stw r5, 4(r29)
/* 805D5A50  3C 60 80 A5 */	lis r3, des_win_suuji2_model@ha /* 0x80A48290@ha */
/* 805D5A54  38 A7 00 24 */	addi r5, r7, 0x24
/* 805D5A58  91 1D 00 08 */	stw r8, 8(r29)
/* 805D5A5C  90 9D 00 0C */	stw r4, 0xc(r29)
/* 805D5A60  7C 00 F0 50 */	subf r0, r0, r30
/* 805D5A64  54 04 10 3A */	slwi r4, r0, 2
/* 805D5A68  38 03 82 90 */	addi r0, r3, des_win_suuji2_model@l /* 0x80A48290@l */
/* 805D5A6C  90 BD 00 10 */	stw r5, 0x10(r29)
/* 805D5A70  7C 66 20 2E */	lwzx r3, r6, r4
/* 805D5A74  90 7D 00 14 */	stw r3, 0x14(r29)
/* 805D5A78  91 1D 00 18 */	stw r8, 0x18(r29)
/* 805D5A7C  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 805D5A80  3B BD 00 20 */	addi r29, r29, 0x20
/* 805D5A84  48 00 00 7C */	b lbl_805D5B00
lbl_805D5A88:
/* 805D5A88  4B E3 67 4D */	bl Matrix_push
/* 805D5A8C  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D5A90  3C A0 80 65 */	lis r5, lit_1948@ha /* 0x8064B188@ha */
/* 805D5A94  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D5A98  C0 25 B1 88 */	lfs f1, lit_1948@l(r5)  /* 0x8064B188@l */
/* 805D5A9C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805D5AA0  38 60 00 01 */	li r3, 1
/* 805D5AA4  FC 60 10 90 */	fmr f3, f2
/* 805D5AA8  4B E3 68 59 */	bl Matrix_translate
/* 805D5AAC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D5AB0  7F E3 FB 78 */	mr r3, r31
/* 805D5AB4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D5AB8  90 1D 00 00 */	stw r0, 0(r29)
/* 805D5ABC  4B E3 79 19 */	bl _Matrix_to_Mtx_new
/* 805D5AC0  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060024@ha */
/* 805D5AC4  90 7D 00 04 */	stw r3, 4(r29)
/* 805D5AC8  38 04 00 24 */	addi r0, r4, 0x0024 /* 0xDB060024@l */
/* 805D5ACC  3C 80 80 6D */	lis r4, suuji_table@ha /* 0x806CC744@ha */
/* 805D5AD0  90 1D 00 08 */	stw r0, 8(r29)
/* 805D5AD4  3C 60 80 A5 */	lis r3, des_win_suuji2_model@ha /* 0x80A48290@ha */
/* 805D5AD8  57 C0 10 3A */	slwi r0, r30, 2
/* 805D5ADC  38 84 C7 44 */	addi r4, r4, suuji_table@l /* 0x806CC744@l */
/* 805D5AE0  7C A4 00 2E */	lwzx r5, r4, r0
/* 805D5AE4  3C 80 DE 00 */	lis r4, 0xde00
/* 805D5AE8  38 03 82 90 */	addi r0, r3, des_win_suuji2_model@l /* 0x80A48290@l */
/* 805D5AEC  90 BD 00 0C */	stw r5, 0xc(r29)
/* 805D5AF0  90 9D 00 10 */	stw r4, 0x10(r29)
/* 805D5AF4  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805D5AF8  3B BD 00 18 */	addi r29, r29, 0x18
/* 805D5AFC  4B E3 67 19 */	bl Matrix_pull
lbl_805D5B00:
/* 805D5B00  93 BF 02 D0 */	stw r29, 0x2d0(r31)
/* 805D5B04  39 61 00 20 */	addi r11, r1, 0x20
/* 805D5B08  4B AC 54 15 */	bl func_8009AF1C
/* 805D5B0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D5B10  7C 08 03 A6 */	mtlr r0
/* 805D5B14  38 21 00 20 */	addi r1, r1, 0x20
/* 805D5B18  4E 80 00 20 */	blr 
