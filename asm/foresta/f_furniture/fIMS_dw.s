lbl_8063E640:
/* 8063E640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063E644  7C 08 02 A6 */	mflr r0
/* 8063E648  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063E64C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E650  4B A5 C8 85 */	bl func_8009AED4
/* 8063E654  A8 03 00 02 */	lha r0, 2(r3)
/* 8063E658  2C 00 00 01 */	cmpwi r0, 1
/* 8063E65C  40 82 00 0C */	bne lbl_8063E668
/* 8063E660  80 85 20 90 */	lwz r4, 0x2090(r5)
/* 8063E664  48 00 00 08 */	b lbl_8063E66C
lbl_8063E668:
/* 8063E668  80 85 00 A0 */	lwz r4, 0xa0(r5)
lbl_8063E66C:
/* 8063E66C  2C 00 00 01 */	cmpwi r0, 1
/* 8063E670  40 82 00 28 */	bne lbl_8063E698
/* 8063E674  88 03 01 2C */	lbz r0, 0x12c(r3)
/* 8063E678  28 00 00 01 */	cmplwi r0, 1
/* 8063E67C  40 82 00 14 */	bne lbl_8063E690
/* 8063E680  38 00 00 0A */	li r0, 0xa
/* 8063E684  7C 04 03 D6 */	divw r0, r4, r0
/* 8063E688  54 1D 07 BE */	clrlwi r29, r0, 0x1e
/* 8063E68C  48 00 00 18 */	b lbl_8063E6A4
lbl_8063E690:
/* 8063E690  3B A0 00 00 */	li r29, 0
/* 8063E694  48 00 00 10 */	b lbl_8063E6A4
lbl_8063E698:
/* 8063E698  38 00 00 0A */	li r0, 0xa
/* 8063E69C  7C 04 03 D6 */	divw r0, r4, r0
/* 8063E6A0  54 1D 07 BE */	clrlwi r29, r0, 0x1e
lbl_8063E6A4:
/* 8063E6A4  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063E6A8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063E6AC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063E6B0  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063E6B4  38 7E 00 08 */	addi r3, r30, 8
/* 8063E6B8  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063E6BC  90 1E 00 00 */	stw r0, 0(r30)
/* 8063E6C0  80 65 00 00 */	lwz r3, 0(r5)
/* 8063E6C4  4B DC ED 11 */	bl _Matrix_to_Mtx_new
/* 8063E6C8  90 7E 00 04 */	stw r3, 4(r30)
/* 8063E6CC  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060024@ha */
/* 8063E6D0  3C 80 80 6E */	lis r4, fIMS_palette_table@ha /* 0x806DEE38@ha */
/* 8063E6D4  3C 60 80 EB */	lis r3, int_iku_mario_star_model@ha /* 0x80EACAC0@ha */
/* 8063E6D8  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 8063E6DC  38 E5 00 24 */	addi r7, r5, 0x0024 /* 0xDB060024@l */
/* 8063E6E0  57 A6 10 3A */	slwi r6, r29, 2
/* 8063E6E4  38 A4 EE 38 */	addi r5, r4, fIMS_palette_table@l /* 0x806DEE38@l */
/* 8063E6E8  38 08 00 08 */	addi r0, r8, 8
/* 8063E6EC  3C 80 DE 00 */	lis r4, 0xde00
/* 8063E6F0  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063E6F4  38 03 CA C0 */	addi r0, r3, int_iku_mario_star_model@l /* 0x80EACAC0@l */
/* 8063E6F8  90 E8 00 00 */	stw r7, 0(r8)
/* 8063E6FC  7C 65 30 2E */	lwzx r3, r5, r6
/* 8063E700  90 68 00 04 */	stw r3, 4(r8)
/* 8063E704  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063E708  38 65 00 08 */	addi r3, r5, 8
/* 8063E70C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063E710  90 85 00 00 */	stw r4, 0(r5)
/* 8063E714  90 05 00 04 */	stw r0, 4(r5)
/* 8063E718  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E71C  4B A5 C8 05 */	bl func_8009AF20
/* 8063E720  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063E724  7C 08 03 A6 */	mtlr r0
/* 8063E728  38 21 00 20 */	addi r1, r1, 0x20
/* 8063E72C  4E 80 00 20 */	blr 
