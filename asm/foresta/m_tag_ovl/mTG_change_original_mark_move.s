lbl_805FCB94:
/* 805FCB94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FCB98  7C 08 02 A6 */	mflr r0
/* 805FCB9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FCBA0  39 61 00 20 */	addi r11, r1, 0x20
/* 805FCBA4  4B A9 E3 31 */	bl func_8009AED4
/* 805FCBA8  3C 80 80 65 */	lis r4, lit_3308@ha /* 0x8064B8D4@ha */
/* 805FCBAC  3C A0 80 65 */	lis r5, lit_3309@ha /* 0x8064B8DC@ha */
/* 805FCBB0  39 04 B8 D4 */	addi r8, r4, lit_3308@l /* 0x8064B8D4@l */
/* 805FCBB4  7C 7D 1B 78 */	mr r29, r3
/* 805FCBB8  C8 E8 00 00 */	lfd f7, 0(r8)
/* 805FCBBC  38 E5 B8 DC */	addi r7, r5, lit_3309@l /* 0x8064B8DC@l */
/* 805FCBC0  C8 C8 00 00 */	lfd f6, 0(r8)
/* 805FCBC4  3C 80 80 65 */	lis r4, lit_630@ha /* 0x8064B838@ha */
/* 805FCBC8  FC 40 38 34 */	frsqrte f2, f7
/* 805FCBCC  38 A4 B8 38 */	addi r5, r4, lit_630@l /* 0x8064B838@l */
/* 805FCBD0  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 805FCBD4  1C C6 00 24 */	mulli r6, r6, 0x24
/* 805FCBD8  3C 80 80 65 */	lis r4, lit_3310@ha /* 0x8064B8E4@ha */
/* 805FCBDC  C8 A7 00 00 */	lfd f5, 0(r7)
/* 805FCBE0  FC 02 00 B2 */	fmul f0, f2, f2
/* 805FCBE4  3C 60 80 65 */	lis r3, lit_3311@ha /* 0x8064B8E8@ha */
/* 805FCBE8  C0 25 00 00 */	lfs f1, 0(r5)
/* 805FCBEC  3B C6 03 90 */	addi r30, r6, 0x390
/* 805FCBF0  83 E8 09 7C */	lwz r31, 0x97c(r8)
/* 805FCBF4  FC 46 00 B2 */	fmul f2, f6, f2
/* 805FCBF8  FC 07 00 32 */	fmul f0, f7, f0
/* 805FCBFC  C0 83 B8 E8 */	lfs f4, lit_3311@l(r3)  /* 0x8064B8E8@l */
/* 805FCC00  C0 64 B8 E4 */	lfs f3, lit_3310@l(r4)  /* 0x8064B8E4@l */
/* 805FCC04  7F DF F2 14 */	add r30, r31, r30
/* 805FCC08  38 7F 03 B4 */	addi r3, r31, 0x3b4
/* 805FCC0C  FC 05 00 28 */	fsub f0, f5, f0
/* 805FCC10  FC 42 00 32 */	fmul f2, f2, f0
/* 805FCC14  FC 02 00 B2 */	fmul f0, f2, f2
/* 805FCC18  FC 46 00 B2 */	fmul f2, f6, f2
/* 805FCC1C  FC 07 00 32 */	fmul f0, f7, f0
/* 805FCC20  FC 05 00 28 */	fsub f0, f5, f0
/* 805FCC24  FC 42 00 32 */	fmul f2, f2, f0
/* 805FCC28  FC 02 00 B2 */	fmul f0, f2, f2
/* 805FCC2C  FC 46 00 B2 */	fmul f2, f6, f2
/* 805FCC30  FC 07 00 32 */	fmul f0, f7, f0
/* 805FCC34  FC 05 00 28 */	fsub f0, f5, f0
/* 805FCC38  FC 02 00 32 */	fmul f0, f2, f0
/* 805FCC3C  FC 07 00 32 */	fmul f0, f7, f0
/* 805FCC40  FC 00 00 18 */	frsp f0, f0
/* 805FCC44  D0 01 00 08 */	stfs f0, 8(r1)
/* 805FCC48  C0 01 00 08 */	lfs f0, 8(r1)
/* 805FCC4C  EC 41 00 28 */	fsubs f2, f1, f0
/* 805FCC50  4B DB E5 61 */	bl add_calc
/* 805FCC54  3C 60 80 65 */	lis r3, lit_4871@ha /* 0x8064B8F0@ha */
/* 805FCC58  C0 3F 03 B4 */	lfs f1, 0x3b4(r31)
/* 805FCC5C  C0 03 B8 F0 */	lfs f0, lit_4871@l(r3)  /* 0x8064B8F0@l */
/* 805FCC60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FCC64  4C 41 13 82 */	cror 2, 1, 2
/* 805FCC68  40 82 00 CC */	bne lbl_805FCD34
/* 805FCC6C  38 80 00 00 */	li r4, 0
/* 805FCC70  38 00 00 02 */	li r0, 2
/* 805FCC74  7C 85 23 78 */	mr r5, r4
/* 805FCC78  38 60 00 00 */	li r3, 0
/* 805FCC7C  7C 09 03 A6 */	mtctr r0
lbl_805FCC80:
/* 805FCC80  7C DE 1A 14 */	add r6, r30, r3
/* 805FCC84  38 E4 03 78 */	addi r7, r4, 0x378
/* 805FCC88  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 805FCC8C  7C FF 3A 14 */	add r7, r31, r7
/* 805FCC90  38 63 00 08 */	addi r3, r3, 8
/* 805FCC94  38 84 00 0C */	addi r4, r4, 0xc
/* 805FCC98  D0 07 00 04 */	stfs f0, 4(r7)
/* 805FCC9C  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 805FCCA0  D0 07 00 08 */	stfs f0, 8(r7)
/* 805FCCA4  B0 A7 00 00 */	sth r5, 0(r7)
/* 805FCCA8  42 00 FF D8 */	bdnz lbl_805FCC80
/* 805FCCAC  7F A3 EB 78 */	mr r3, r29
/* 805FCCB0  4B FD 05 99 */	bl mCO_top_folder
/* 805FCCB4  1C A3 00 0C */	mulli r5, r3, 0xc
/* 805FCCB8  A8 9E 00 20 */	lha r4, 0x20(r30)
/* 805FCCBC  A8 1E 00 22 */	lha r0, 0x22(r30)
/* 805FCCC0  7F A3 EB 78 */	mr r3, r29
/* 805FCCC4  3C 84 00 01 */	addis r4, r4, 1
/* 805FCCC8  3C A5 00 01 */	addis r5, r5, 1
/* 805FCCCC  7C A5 02 14 */	add r5, r5, r0
/* 805FCCD0  38 04 FE 31 */	addi r0, r4, -463
/* 805FCCD4  38 85 FE 39 */	addi r4, r5, -455
/* 805FCCD8  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 805FCCDC  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 805FCCE0  4B FD 0A 89 */	bl mCO_swap_image
/* 805FCCE4  7F A3 EB 78 */	mr r3, r29
/* 805FCCE8  4B FD 06 21 */	bl mCO_clear_hide_flg
/* 805FCCEC  7F A3 EB 78 */	mr r3, r29
/* 805FCCF0  4B FE CA 35 */	bl mNW_clear_hide_flg
/* 805FCCF4  A8 1E 00 20 */	lha r0, 0x20(r30)
/* 805FCCF8  38 A0 00 01 */	li r5, 1
/* 805FCCFC  A0 9F 03 B8 */	lhz r4, 0x3b8(r31)
/* 805FCD00  38 60 04 46 */	li r3, 0x446
/* 805FCD04  7C A0 00 30 */	slw r0, r5, r0
/* 805FCD08  7C 80 00 78 */	andc r0, r4, r0
/* 805FCD0C  B0 1F 03 B8 */	sth r0, 0x3b8(r31)
/* 805FCD10  A8 1E 00 22 */	lha r0, 0x22(r30)
/* 805FCD14  A0 9F 03 BA */	lhz r4, 0x3ba(r31)
/* 805FCD18  7C A0 00 30 */	slw r0, r5, r0
/* 805FCD1C  7C 80 00 78 */	andc r0, r4, r0
/* 805FCD20  B0 1F 03 BA */	sth r0, 0x3ba(r31)
/* 805FCD24  48 03 0F E1 */	bl sAdo_SysTrgStart
/* 805FCD28  38 00 00 01 */	li r0, 1
/* 805FCD2C  B0 1F 03 C0 */	sth r0, 0x3c0(r31)
/* 805FCD30  48 00 00 64 */	b lbl_805FCD94
lbl_805FCD34:
/* 805FCD34  38 00 00 02 */	li r0, 2
/* 805FCD38  38 60 00 00 */	li r3, 0
/* 805FCD3C  38 80 00 00 */	li r4, 0
/* 805FCD40  7C 09 03 A6 */	mtctr r0
lbl_805FCD44:
/* 805FCD44  7C BE 1A 14 */	add r5, r30, r3
/* 805FCD48  38 C4 03 78 */	addi r6, r4, 0x378
/* 805FCD4C  C0 45 00 00 */	lfs f2, 0(r5)
/* 805FCD50  7C DF 32 14 */	add r6, r31, r6
/* 805FCD54  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 805FCD58  38 63 00 08 */	addi r3, r3, 8
/* 805FCD5C  C0 3F 03 B4 */	lfs f1, 0x3b4(r31)
/* 805FCD60  38 84 00 0C */	addi r4, r4, 0xc
/* 805FCD64  EC 00 10 28 */	fsubs f0, f0, f2
/* 805FCD68  C0 65 00 04 */	lfs f3, 4(r5)
/* 805FCD6C  C0 85 00 14 */	lfs f4, 0x14(r5)
/* 805FCD70  EC 21 00 32 */	fmuls f1, f1, f0
/* 805FCD74  EC 04 18 28 */	fsubs f0, f4, f3
/* 805FCD78  EC 22 08 2A */	fadds f1, f2, f1
/* 805FCD7C  D0 26 00 04 */	stfs f1, 4(r6)
/* 805FCD80  C0 3F 03 B4 */	lfs f1, 0x3b4(r31)
/* 805FCD84  EC 01 00 32 */	fmuls f0, f1, f0
/* 805FCD88  EC 03 00 2A */	fadds f0, f3, f0
/* 805FCD8C  D0 06 00 08 */	stfs f0, 8(r6)
/* 805FCD90  42 00 FF B4 */	bdnz lbl_805FCD44
lbl_805FCD94:
/* 805FCD94  7F A3 EB 78 */	mr r3, r29
/* 805FCD98  4B FF 48 05 */	bl mTG_init_tag_data_item_win
/* 805FCD9C  39 61 00 20 */	addi r11, r1, 0x20
/* 805FCDA0  4B A9 E1 81 */	bl func_8009AF20
/* 805FCDA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FCDA8  7C 08 03 A6 */	mtlr r0
/* 805FCDAC  38 21 00 20 */	addi r1, r1, 0x20
/* 805FCDB0  4E 80 00 20 */	blr 
