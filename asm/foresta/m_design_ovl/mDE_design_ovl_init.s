lbl_805D76AC:
/* 805D76AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D76B0  7C 08 02 A6 */	mflr r0
/* 805D76B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D76B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805D76BC  4B AC 38 19 */	bl func_8009AED4
/* 805D76C0  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805D76C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805D76C8  38 C0 00 00 */	li r6, 0
/* 805D76CC  38 A0 00 01 */	li r5, 1
/* 805D76D0  83 C7 09 E0 */	lwz r30, 0x9e0(r7)
/* 805D76D4  38 00 00 05 */	li r0, 5
/* 805D76D8  3B E4 85 38 */	addi r31, r4, common_data@l /* 0x81138538@l */
/* 805D76DC  90 C7 09 3C */	stw r6, 0x93c(r7)
/* 805D76E0  90 C7 07 60 */	stw r6, 0x760(r7)
/* 805D76E4  90 A7 07 8C */	stw r5, 0x78c(r7)
/* 805D76E8  B0 07 07 90 */	sth r0, 0x790(r7)
/* 805D76EC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805D76F0  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D76F4  41 82 00 1C */	beq lbl_805D7710
/* 805D76F8  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 805D76FC  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 805D7700  80 84 00 00 */	lwz r4, 0(r4)
/* 805D7704  A8 04 17 52 */	lha r0, 0x1752(r4)
/* 805D7708  2C 00 00 00 */	cmpwi r0, 0
/* 805D770C  41 82 00 38 */	beq lbl_805D7744
lbl_805D7710:
/* 805D7710  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805D7714  38 00 00 0F */	li r0, 0xf
/* 805D7718  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805D771C  98 1E 06 9B */	stb r0, 0x69b(r30)
/* 805D7720  3F A3 00 02 */	addis r29, r3, 2
/* 805D7724  3B BD 3F 20 */	addi r29, r29, 0x3f20
/* 805D7728  7F A3 EB 78 */	mr r3, r29
/* 805D772C  48 00 01 A5 */	bl mDE_maskcat_init
/* 805D7730  38 7D 00 20 */	addi r3, r29, 0x20
/* 805D7734  38 9E 00 20 */	addi r4, r30, 0x20
/* 805D7738  38 A0 02 00 */	li r5, 0x200
/* 805D773C  4B A8 58 E1 */	bl func_8005D01C
/* 805D7740  48 00 00 44 */	b lbl_805D7784
lbl_805D7744:
/* 805D7744  80 83 00 10 */	lwz r4, 0x10(r3)
/* 805D7748  48 01 20 D9 */	bl mNW_get_image_no
/* 805D774C  98 7E 06 9C */	stb r3, 0x69c(r30)
/* 805D7750  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805D7754  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805D7758  88 1E 06 9C */	lbz r0, 0x69c(r30)
/* 805D775C  3C 63 00 02 */	addis r3, r3, 2
/* 805D7760  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 805D7764  38 7E 00 20 */	addi r3, r30, 0x20
/* 805D7768  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 805D776C  1C 80 02 20 */	mulli r4, r0, 0x220
/* 805D7770  38 84 12 40 */	addi r4, r4, 0x1240
/* 805D7774  7C 85 22 14 */	add r4, r5, r4
/* 805D7778  88 04 00 10 */	lbz r0, 0x10(r4)
/* 805D777C  98 1E 06 9B */	stb r0, 0x69b(r30)
/* 805D7780  4B DF 24 95 */	bl mNW_CopyOriginalTexture
lbl_805D7784:
/* 805D7784  38 7E 00 20 */	addi r3, r30, 0x20
/* 805D7788  38 80 02 00 */	li r4, 0x200
/* 805D778C  4B A8 59 91 */	bl osWritebackDCache
/* 805D7790  88 7E 06 9B */	lbz r3, 0x69b(r30)
/* 805D7794  4B DF 24 29 */	bl mNW_PaletteIdx2Palette
/* 805D7798  90 7E 00 00 */	stw r3, 0(r30)
/* 805D779C  7F C3 F3 78 */	mr r3, r30
/* 805D77A0  4B FF 9A 95 */	bl func_805D1234
/* 805D77A4  38 A0 00 01 */	li r5, 1
/* 805D77A8  38 00 00 00 */	li r0, 0
/* 805D77AC  98 BE 06 9D */	stb r5, 0x69d(r30)
/* 805D77B0  7F C3 F3 78 */	mr r3, r30
/* 805D77B4  38 80 00 00 */	li r4, 0
/* 805D77B8  98 1E 06 A7 */	stb r0, 0x6a7(r30)
/* 805D77BC  98 BE 06 A4 */	stb r5, 0x6a4(r30)
/* 805D77C0  98 BE 06 A5 */	stb r5, 0x6a5(r30)
/* 805D77C4  98 1E 06 CC */	stb r0, 0x6cc(r30)
/* 805D77C8  98 1E 06 CD */	stb r0, 0x6cd(r30)
/* 805D77CC  98 1E 06 B4 */	stb r0, 0x6b4(r30)
/* 805D77D0  90 1E 06 B8 */	stw r0, 0x6b8(r30)
/* 805D77D4  90 1E 06 C0 */	stw r0, 0x6c0(r30)
/* 805D77D8  98 1E 06 D8 */	stb r0, 0x6d8(r30)
/* 805D77DC  98 1E 06 D9 */	stb r0, 0x6d9(r30)
/* 805D77E0  98 1E 06 DA */	stb r0, 0x6da(r30)
/* 805D77E4  4B FF D9 81 */	bl mDE_setup_action
/* 805D77E8  7F C3 F3 78 */	mr r3, r30
/* 805D77EC  38 80 00 00 */	li r4, 0
/* 805D77F0  4B FF C3 75 */	bl mDE_main_mode_setup_action
/* 805D77F4  38 00 00 4B */	li r0, 0x4b
/* 805D77F8  3C 60 80 65 */	lis r3, lit_2347@ha /* 0x8064B1C8@ha */
/* 805D77FC  90 1E 06 50 */	stw r0, 0x650(r30)
/* 805D7800  38 83 B1 C8 */	addi r4, r3, lit_2347@l /* 0x8064B1C8@l */
/* 805D7804  38 00 FF B5 */	li r0, -75
/* 805D7808  C0 24 00 00 */	lfs f1, 0(r4)
/* 805D780C  90 1E 06 54 */	stw r0, 0x654(r30)
/* 805D7810  3C 60 80 65 */	lis r3, lit_2348@ha /* 0x8064B1CC@ha */
/* 805D7814  C0 03 B1 CC */	lfs f0, lit_2348@l(r3)  /* 0x8064B1CC@l */
/* 805D7818  38 00 00 0F */	li r0, 0xf
/* 805D781C  D0 3E 06 60 */	stfs f1, 0x660(r30)
/* 805D7820  38 7E 00 20 */	addi r3, r30, 0x20
/* 805D7824  38 9E 02 20 */	addi r4, r30, 0x220
/* 805D7828  38 A0 02 00 */	li r5, 0x200
/* 805D782C  D0 1E 06 64 */	stfs f0, 0x664(r30)
/* 805D7830  90 1E 06 68 */	stw r0, 0x668(r30)
/* 805D7834  90 1E 06 6C */	stw r0, 0x66c(r30)
/* 805D7838  4B A8 57 E5 */	bl func_8005D01C
/* 805D783C  38 7E 02 20 */	addi r3, r30, 0x220
/* 805D7840  38 80 02 00 */	li r4, 0x200
/* 805D7844  4B A8 58 D9 */	bl osWritebackDCache
/* 805D7848  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805D784C  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D7850  41 82 00 1C */	beq lbl_805D786C
/* 805D7854  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D7858  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D785C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7860  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D7864  2C 00 00 00 */	cmpwi r0, 0
/* 805D7868  41 82 00 34 */	beq lbl_805D789C
lbl_805D786C:
/* 805D786C  7F C3 F3 78 */	mr r3, r30
/* 805D7870  4B FF AD 59 */	bl mDE_mask_cat_mask
/* 805D7874  38 7E 02 20 */	addi r3, r30, 0x220
/* 805D7878  38 80 02 00 */	li r4, 0x200
/* 805D787C  4B A8 58 A1 */	bl osWritebackDCache
/* 805D7880  38 7E 02 20 */	addi r3, r30, 0x220
/* 805D7884  38 9E 00 20 */	addi r4, r30, 0x20
/* 805D7888  38 A0 02 00 */	li r5, 0x200
/* 805D788C  4B A8 57 91 */	bl func_8005D01C
/* 805D7890  38 7E 00 20 */	addi r3, r30, 0x20
/* 805D7894  38 80 02 00 */	li r4, 0x200
/* 805D7898  4B A8 58 85 */	bl osWritebackDCache
lbl_805D789C:
/* 805D789C  38 7E 00 20 */	addi r3, r30, 0x20
/* 805D78A0  38 9E 04 20 */	addi r4, r30, 0x420
/* 805D78A4  38 A0 02 00 */	li r5, 0x200
/* 805D78A8  4B A8 57 75 */	bl func_8005D01C
/* 805D78AC  38 7E 04 20 */	addi r3, r30, 0x420
/* 805D78B0  38 80 02 00 */	li r4, 0x200
/* 805D78B4  4B A8 58 69 */	bl osWritebackDCache
/* 805D78B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805D78BC  4B AC 36 65 */	bl func_8009AF20
/* 805D78C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D78C4  7C 08 03 A6 */	mtlr r0
/* 805D78C8  38 21 00 20 */	addi r1, r1, 0x20
/* 805D78CC  4E 80 00 20 */	blr 
