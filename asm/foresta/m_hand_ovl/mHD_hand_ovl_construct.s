lbl_805DF6FC:
/* 805DF6FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DF700  7C 08 02 A6 */	mflr r0
/* 805DF704  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DF708  39 61 00 20 */	addi r11, r1, 0x20
/* 805DF70C  4B AB B7 C5 */	bl func_8009AED0
/* 805DF710  7C 7D 1B 78 */	mr r29, r3
/* 805DF714  83 83 00 2C */	lwz r28, 0x2c(r3)
/* 805DF718  80 63 00 04 */	lwz r3, 4(r3)
/* 805DF71C  80 1C 09 80 */	lwz r0, 0x980(r28)
/* 805DF720  1C 63 00 48 */	mulli r3, r3, 0x48
/* 805DF724  28 00 00 00 */	cmplwi r0, 0
/* 805DF728  3B C3 00 54 */	addi r30, r3, 0x54
/* 805DF72C  7F DC F2 14 */	add r30, r28, r30
/* 805DF730  40 82 01 84 */	bne lbl_805DF8B4
/* 805DF734  3C 60 81 21 */	lis r3, hand_ovl_data@ha /* 0x81211740@ha */
/* 805DF738  38 80 03 78 */	li r4, 0x378
/* 805DF73C  38 63 17 40 */	addi r3, r3, hand_ovl_data@l /* 0x81211740@l */
/* 805DF740  38 A0 00 00 */	li r5, 0
/* 805DF744  4B DD B3 05 */	bl mem_clear
/* 805DF748  3C 60 80 5E */	lis r3, mHD_hand_ovl_move@ha /* 0x805DEC60@ha */
/* 805DF74C  3C 80 80 5E */	lis r4, mHD_hand_ovl_draw@ha /* 0x805DF2E4@ha */
/* 805DF750  38 03 EC 60 */	addi r0, r3, mHD_hand_ovl_move@l /* 0x805DEC60@l */
/* 805DF754  3C 60 81 21 */	lis r3, hand_ovl_data@ha /* 0x81211740@ha */
/* 805DF758  90 1C 09 14 */	stw r0, 0x914(r28)
/* 805DF75C  38 04 F2 E4 */	addi r0, r4, mHD_hand_ovl_draw@l /* 0x805DF2E4@l */
/* 805DF760  3B E3 17 40 */	addi r31, r3, hand_ovl_data@l /* 0x81211740@l */
/* 805DF764  3C 80 80 5E */	lis r4, mHD_nop_hand_func@ha /* 0x805DF6BC@ha */
/* 805DF768  90 1C 09 18 */	stw r0, 0x918(r28)
/* 805DF76C  3C 60 80 5E */	lis r3, mHD_set_hand_func@ha /* 0x805DF6D8@ha */
/* 805DF770  38 C4 F6 BC */	addi r6, r4, mHD_nop_hand_func@l /* 0x805DF6BC@l */
/* 805DF774  38 00 00 00 */	li r0, 0
/* 805DF778  93 FC 09 80 */	stw r31, 0x980(r28)
/* 805DF77C  38 A3 F6 D8 */	addi r5, r3, mHD_set_hand_func@l /* 0x805DF6D8@l */
/* 805DF780  38 7F 02 36 */	addi r3, r31, 0x236
/* 805DF784  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805DF788  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805DF78C  90 C4 03 70 */	stw r6, 0x370(r4)
/* 805DF790  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805DF794  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805DF798  90 A4 03 74 */	stw r5, 0x374(r4)
/* 805DF79C  90 1F 00 00 */	stw r0, 0(r31)
/* 805DF7A0  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 805DF7A4  4B DD CF 5D */	bl mMl_clear_mail
/* 805DF7A8  3C 60 81 21 */	lis r3, hand_ovl_data@ha /* 0x81211740@ha */
/* 805DF7AC  38 00 00 00 */	li r0, 0
/* 805DF7B0  38 63 17 40 */	addi r3, r3, hand_ovl_data@l /* 0x81211740@l */
/* 805DF7B4  90 03 03 60 */	stw r0, 0x360(r3)
/* 805DF7B8  80 1E 00 00 */	lwz r0, 0(r30)
/* 805DF7BC  2C 00 00 01 */	cmpwi r0, 1
/* 805DF7C0  40 82 00 A4 */	bne lbl_805DF864
/* 805DF7C4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805DF7C8  2C 00 00 0D */	cmpwi r0, 0xd
/* 805DF7CC  40 82 00 98 */	bne lbl_805DF864
/* 805DF7D0  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 805DF7D4  2C 00 25 20 */	cmpwi r0, 0x2520
/* 805DF7D8  41 82 00 48 */	beq lbl_805DF820
/* 805DF7DC  40 80 00 1C */	bge lbl_805DF7F8
/* 805DF7E0  2C 00 25 1C */	cmpwi r0, 0x251c
/* 805DF7E4  41 82 00 24 */	beq lbl_805DF808
/* 805DF7E8  41 80 00 5C */	blt lbl_805DF844
/* 805DF7EC  2C 00 25 1F */	cmpwi r0, 0x251f
/* 805DF7F0  40 80 00 24 */	bge lbl_805DF814
/* 805DF7F4  48 00 00 50 */	b lbl_805DF844
lbl_805DF7F8:
/* 805DF7F8  2C 00 25 22 */	cmpwi r0, 0x2522
/* 805DF7FC  41 82 00 3C */	beq lbl_805DF838
/* 805DF800  40 80 00 44 */	bge lbl_805DF844
/* 805DF804  48 00 00 28 */	b lbl_805DF82C
lbl_805DF808:
/* 805DF808  4B E0 15 9D */	bl mPr_DummyPresentToTruePresent
/* 805DF80C  38 80 00 01 */	li r4, 1
/* 805DF810  48 00 00 3C */	b lbl_805DF84C
lbl_805DF814:
/* 805DF814  38 60 22 39 */	li r3, 0x2239
/* 805DF818  38 80 00 01 */	li r4, 1
/* 805DF81C  48 00 00 30 */	b lbl_805DF84C
lbl_805DF820:
/* 805DF820  38 60 22 3A */	li r3, 0x223a
/* 805DF824  38 80 00 01 */	li r4, 1
/* 805DF828  48 00 00 24 */	b lbl_805DF84C
lbl_805DF82C:
/* 805DF82C  38 60 22 3B */	li r3, 0x223b
/* 805DF830  38 80 00 01 */	li r4, 1
/* 805DF834  48 00 00 18 */	b lbl_805DF84C
lbl_805DF838:
/* 805DF838  38 60 22 3C */	li r3, 0x223c
/* 805DF83C  38 80 00 01 */	li r4, 1
/* 805DF840  48 00 00 0C */	b lbl_805DF84C
lbl_805DF844:
/* 805DF844  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 805DF848  80 9F 03 60 */	lwz r4, 0x360(r31)
lbl_805DF84C:
/* 805DF84C  38 00 00 03 */	li r0, 3
/* 805DF850  B0 7F 02 34 */	sth r3, 0x234(r31)
/* 805DF854  90 9F 03 60 */	stw r4, 0x360(r31)
/* 805DF858  B0 1F 02 30 */	sth r0, 0x230(r31)
/* 805DF85C  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805DF860  48 00 00 14 */	b lbl_805DF874
lbl_805DF864:
/* 805DF864  38 00 00 00 */	li r0, 0
/* 805DF868  B0 1F 02 34 */	sth r0, 0x234(r31)
/* 805DF86C  B0 1F 02 30 */	sth r0, 0x230(r31)
/* 805DF870  B0 1F 02 32 */	sth r0, 0x232(r31)
lbl_805DF874:
/* 805DF874  A8 1F 02 30 */	lha r0, 0x230(r31)
/* 805DF878  3C A0 80 6D */	lis r5, mHD_hand_offsetX_table@ha /* 0x806CD064@ha */
/* 805DF87C  3C 80 80 6D */	lis r4, mHD_hand_offsetY_table@ha /* 0x806CD080@ha */
/* 805DF880  7F A3 EB 78 */	mr r3, r29
/* 805DF884  54 00 10 3A */	slwi r0, r0, 2
/* 805DF888  38 A5 D0 64 */	addi r5, r5, mHD_hand_offsetX_table@l /* 0x806CD064@l */
/* 805DF88C  38 84 D0 80 */	addi r4, r4, mHD_hand_offsetY_table@l /* 0x806CD080@l */
/* 805DF890  7C 25 04 2E */	lfsx f1, r5, r0
/* 805DF894  7C 04 04 2E */	lfsx f0, r4, r0
/* 805DF898  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 805DF89C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 805DF8A0  4B FF D7 F5 */	bl mHD_hand_shape_init
/* 805DF8A4  7F A3 EB 78 */	mr r3, r29
/* 805DF8A8  4B FF D8 5D */	bl mHD_hand_shape_move
/* 805DF8AC  7F A3 EB 78 */	mr r3, r29
/* 805DF8B0  4B FF FE 29 */	bl mHD_set_hand_func
lbl_805DF8B4:
/* 805DF8B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805DF8B8  4B AB B6 65 */	bl func_8009AF1C
/* 805DF8BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DF8C0  7C 08 03 A6 */	mtlr r0
/* 805DF8C4  38 21 00 20 */	addi r1, r1, 0x20
/* 805DF8C8  4E 80 00 20 */	blr 
