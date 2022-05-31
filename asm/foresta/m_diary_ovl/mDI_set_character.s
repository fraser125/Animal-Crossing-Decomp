lbl_805D0CE4:
/* 805D0CE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805D0CE8  7C 08 02 A6 */	mflr r0
/* 805D0CEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 805D0CF0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805D0CF4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805D0CF8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805D0CFC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805D0D00  39 61 00 40 */	addi r11, r1, 0x40
/* 805D0D04  4B AC A1 C9 */	bl func_8009AECC
/* 805D0D08  3C C0 80 65 */	lis r6, lit_968@ha /* 0x8064B104@ha */
/* 805D0D0C  81 23 00 2C */	lwz r9, 0x2c(r3)
/* 805D0D10  38 E6 B1 04 */	addi r7, r6, lit_968@l /* 0x8064B104@l */
/* 805D0D14  3D 00 80 65 */	lis r8, lit_981@ha /* 0x8064B110@ha */
/* 805D0D18  C0 07 00 00 */	lfs f0, 0(r7)
/* 805D0D1C  3C C0 80 65 */	lis r6, lit_982@ha /* 0x8064B114@ha */
/* 805D0D20  C0 68 B1 10 */	lfs f3, lit_981@l(r8)  /* 0x8064B110@l */
/* 805D0D24  3C E0 80 65 */	lis r7, lit_966@ha /* 0x8064B0FC@ha */
/* 805D0D28  EF C0 10 28 */	fsubs f30, f0, f2
/* 805D0D2C  C0 06 B1 14 */	lfs f0, lit_982@l(r6)  /* 0x8064B114@l */
/* 805D0D30  3C C0 80 65 */	lis r6, lit_967@ha /* 0x8064B100@ha */
/* 805D0D34  39 07 B0 FC */	addi r8, r7, lit_966@l /* 0x8064B0FC@l */
/* 805D0D38  EF E3 08 2A */	fadds f31, f3, f1
/* 805D0D3C  38 E6 B1 00 */	addi r7, r6, lit_967@l /* 0x8064B100@l */
/* 805D0D40  EF DE 00 2A */	fadds f30, f30, f0
/* 805D0D44  C0 07 00 00 */	lfs f0, 0(r7)
/* 805D0D48  C0 28 00 00 */	lfs f1, 0(r8)
/* 805D0D4C  3C C0 80 6D */	lis r6, data_806CB970@ha /* 0x806CB970@ha */
/* 805D0D50  39 06 B9 70 */	addi r8, r6, data_806CB970@l /* 0x806CB970@l */
/* 805D0D54  83 A9 09 E8 */	lwz r29, 0x9e8(r9)
/* 805D0D58  EC 7F 08 28 */	fsubs f3, f31, f1
/* 805D0D5C  83 89 09 8C */	lwz r28, 0x98c(r9)
/* 805D0D60  EC 00 F0 28 */	fsubs f0, f0, f30
/* 805D0D64  7C 9F 23 78 */	mr r31, r4
/* 805D0D68  7C BB 2B 78 */	mr r27, r5
/* 805D0D6C  FC 20 F8 90 */	fmr f1, f31
/* 805D0D70  FC 40 F0 90 */	fmr f2, f30
/* 805D0D74  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 805D0D78  7C 7E 1B 78 */	mr r30, r3
/* 805D0D7C  7F 64 DB 78 */	mr r4, r27
/* 805D0D80  D0 01 00 08 */	stfs f0, 8(r1)
/* 805D0D84  7F E5 FB 78 */	mr r5, r31
/* 805D0D88  38 C1 00 0C */	addi r6, r1, 0xc
/* 805D0D8C  38 E1 00 08 */	addi r7, r1, 8
/* 805D0D90  4B FF FC 6D */	bl mDI_set_writing_body
/* 805D0D94  80 1B 00 04 */	lwz r0, 4(r27)
/* 805D0D98  2C 00 00 01 */	cmpwi r0, 1
/* 805D0D9C  40 82 00 BC */	bne lbl_805D0E58
/* 805D0DA0  A8 1D 00 1C */	lha r0, 0x1c(r29)
/* 805D0DA4  2C 00 00 03 */	cmpwi r0, 3
/* 805D0DA8  40 82 00 B0 */	bne lbl_805D0E58
/* 805D0DAC  28 1C 00 00 */	cmplwi r28, 0
/* 805D0DB0  41 82 00 A8 */	beq lbl_805D0E58
/* 805D0DB4  A8 7C 00 26 */	lha r3, 0x26(r28)
/* 805D0DB8  3C E0 43 30 */	lis r7, 0x4330
/* 805D0DBC  3C A0 80 65 */	lis r5, lit_626@ha /* 0x8064B0DC@ha */
/* 805D0DC0  A8 1C 00 24 */	lha r0, 0x24(r28)
/* 805D0DC4  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805D0DC8  C8 65 B0 DC */	lfd f3, lit_626@l(r5)  /* 0x8064B0DC@l */
/* 805D0DCC  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D0DD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D0DD4  3C 60 80 65 */	lis r3, lit_862@ha /* 0x8064B0EC@ha */
/* 805D0DD8  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805D0DDC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 805D0DE0  38 C3 B0 EC */	addi r6, r3, lit_862@l /* 0x8064B0EC@l */
/* 805D0DE4  3C 60 80 65 */	lis r3, lit_983@ha /* 0x8064B118@ha */
/* 805D0DE8  80 A5 09 8C */	lwz r5, 0x98c(r5)
/* 805D0DEC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D0DF0  39 03 B1 18 */	addi r8, r3, lit_983@l /* 0x8064B118@l */
/* 805D0DF4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805D0DF8  7F C3 F3 78 */	mr r3, r30
/* 805D0DFC  EC 00 18 28 */	fsubs f0, f0, f3
/* 805D0E00  C0 46 00 00 */	lfs f2, 0(r6)
/* 805D0E04  90 E1 00 18 */	stw r7, 0x18(r1)
/* 805D0E08  7F E4 FB 78 */	mr r4, r31
/* 805D0E0C  C0 88 00 00 */	lfs f4, 0(r8)
/* 805D0E10  EC 3F 00 2A */	fadds f1, f31, f0
/* 805D0E14  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805D0E18  81 85 00 30 */	lwz r12, 0x30(r5)
/* 805D0E1C  EC 00 18 28 */	fsubs f0, f0, f3
/* 805D0E20  EC 24 08 2A */	fadds f1, f4, f1
/* 805D0E24  EC 02 00 32 */	fmuls f0, f2, f0
/* 805D0E28  EC 5E 00 2A */	fadds f2, f30, f0
/* 805D0E2C  7D 89 03 A6 */	mtctr r12
/* 805D0E30  4E 80 04 21 */	bctrl 
/* 805D0E34  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805D0E38  7F C3 F3 78 */	mr r3, r30
/* 805D0E3C  7F E4 FB 78 */	mr r4, r31
/* 805D0E40  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805D0E44  80 A5 09 8C */	lwz r5, 0x98c(r5)
/* 805D0E48  C0 41 00 08 */	lfs f2, 8(r1)
/* 805D0E4C  81 85 00 2C */	lwz r12, 0x2c(r5)
/* 805D0E50  7D 89 03 A6 */	mtctr r12
/* 805D0E54  4E 80 04 21 */	bctrl 
lbl_805D0E58:
/* 805D0E58  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805D0E5C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805D0E60  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805D0E64  39 61 00 40 */	addi r11, r1, 0x40
/* 805D0E68  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805D0E6C  4B AC A0 AD */	bl func_8009AF18
/* 805D0E70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805D0E74  7C 08 03 A6 */	mtlr r0
/* 805D0E78  38 21 00 60 */	addi r1, r1, 0x60
/* 805D0E7C  4E 80 00 20 */	blr 
