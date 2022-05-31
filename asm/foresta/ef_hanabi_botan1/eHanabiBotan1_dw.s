lbl_8060DBD0:
/* 8060DBD0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8060DBD4  7C 08 02 A6 */	mflr r0
/* 8060DBD8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8060DBDC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8060DBE0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8060DBE4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8060DBE8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8060DBEC  39 61 00 40 */	addi r11, r1, 0x40
/* 8060DBF0  4B A8 D2 DD */	bl func_8009AECC
/* 8060DBF4  7C 7D 1B 78 */	mr r29, r3
/* 8060DBF8  7C 9E 23 78 */	mr r30, r4
/* 8060DBFC  A8 03 00 00 */	lha r0, 0(r3)
/* 8060DC00  A8 63 00 4C */	lha r3, 0x4c(r3)
/* 8060DC04  20 00 00 6E */	subfic r0, r0, 0x6e
/* 8060DC08  7C 1F 07 34 */	extsh r31, r0
/* 8060DC0C  4B DA CE E5 */	bl sin_s
/* 8060DC10  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064C120@ha */
/* 8060DC14  3C 80 80 65 */	lis r4, lit_465@ha /* 0x8064C144@ha */
/* 8060DC18  38 A3 C1 20 */	addi r5, r3, lit_424@l /* 0x8064C120@l */
/* 8060DC1C  AB 7D 00 52 */	lha r27, 0x52(r29)
/* 8060DC20  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060DC24  3C 60 80 65 */	lis r3, lit_464@ha /* 0x8064C140@ha */
/* 8060DC28  38 C3 C1 40 */	addi r6, r3, lit_464@l /* 0x8064C140@l */
/* 8060DC2C  3C A0 80 65 */	lis r5, lit_385@ha /* 0x8064C0F8@ha */
/* 8060DC30  EC 20 08 2A */	fadds f1, f0, f1
/* 8060DC34  C0 04 C1 44 */	lfs f0, lit_465@l(r4)  /* 0x8064C144@l */
/* 8060DC38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060DC3C  3C 80 80 65 */	lis r4, lit_463@ha /* 0x8064C13C@ha */
/* 8060DC40  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060DC44  EC 20 00 72 */	fmuls f1, f0, f1
/* 8060DC48  C0 06 00 00 */	lfs f0, 0(r6)
/* 8060DC4C  3F 83 00 02 */	addis r28, r3, 2
/* 8060DC50  38 C4 C1 3C */	addi r6, r4, lit_463@l /* 0x8064C13C@l */
/* 8060DC54  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8060DC58  EC 20 00 72 */	fmuls f1, f0, f1
/* 8060DC5C  C0 06 00 00 */	lfs f0, 0(r6)
/* 8060DC60  3C 80 80 65 */	lis r4, data_8064C0F4@ha /* 0x8064C0F4@ha */
/* 8060DC64  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8060DC68  7F E3 FB 78 */	mr r3, r31
/* 8060DC6C  EF C0 08 2A */	fadds f30, f0, f1
/* 8060DC70  C0 25 C0 F8 */	lfs f1, lit_385@l(r5)  /* 0x8064C0F8@l */
/* 8060DC74  38 A0 00 6D */	li r5, 0x6d
/* 8060DC78  C0 44 C0 F4 */	lfs f2, data_8064C0F4@l(r4)  /* 0x8064C0F4@l */
/* 8060DC7C  38 80 00 00 */	li r4, 0
/* 8060DC80  7D 89 03 A6 */	mtctr r12
/* 8060DC84  4E 80 04 21 */	bctrl 
/* 8060DC88  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8060DC8C  3C 80 80 6D */	lis r4, eHanabiBotan1_morph_table@ha /* 0x806D2658@ha */
/* 8060DC90  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 8060DC94  57 60 10 3A */	slwi r0, r27, 2
/* 8060DC98  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 8060DC9C  38 84 26 58 */	addi r4, r4, eHanabiBotan1_morph_table@l /* 0x806D2658@l */
/* 8060DCA0  EF E0 08 2A */	fadds f31, f0, f1
/* 8060DCA4  7F E5 FB 78 */	mr r5, r31
/* 8060DCA8  38 61 00 08 */	addi r3, r1, 8
/* 8060DCAC  7C 84 00 2E */	lwzx r4, r4, r0
/* 8060DCB0  7D 89 03 A6 */	mtctr r12
/* 8060DCB4  4E 80 04 21 */	bctrl 
/* 8060DCB8  83 FE 00 00 */	lwz r31, 0(r30)
/* 8060DCBC  7F E3 FB 78 */	mr r3, r31
/* 8060DCC0  4B DD 74 99 */	bl _texture_z_light_fog_prim_xlu
/* 8060DCC4  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8060DCC8  38 60 00 00 */	li r3, 0
/* 8060DCCC  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8060DCD0  C0 9D 00 14 */	lfs f4, 0x14(r29)
/* 8060DCD4  C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 8060DCD8  EC 21 00 2A */	fadds f1, f1, f0
/* 8060DCDC  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 8060DCE0  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 8060DCE4  EC 44 10 2A */	fadds f2, f4, f2
/* 8060DCE8  EC 63 00 2A */	fadds f3, f3, f0
/* 8060DCEC  4B DF E6 15 */	bl Matrix_translate
/* 8060DCF0  38 60 C0 00 */	li r3, -16384
/* 8060DCF4  38 80 00 01 */	li r4, 1
/* 8060DCF8  4B DF E7 C1 */	bl Matrix_RotateX
/* 8060DCFC  A8 1D 00 4E */	lha r0, 0x4e(r29)
/* 8060DD00  38 80 00 01 */	li r4, 1
/* 8060DD04  7C 00 00 D0 */	neg r0, r0
/* 8060DD08  7C 03 07 34 */	extsh r3, r0
/* 8060DD0C  4B DF EA E5 */	bl Matrix_RotateZ
/* 8060DD10  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064C120@ha */
/* 8060DD14  FC 20 F0 90 */	fmr f1, f30
/* 8060DD18  38 83 C1 20 */	addi r4, r3, lit_424@l /* 0x8064C120@l */
/* 8060DD1C  38 60 00 01 */	li r3, 1
/* 8060DD20  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060DD24  FC 60 10 90 */	fmr f3, f2
/* 8060DD28  4B DF E6 C5 */	bl Matrix_scale
/* 8060DD2C  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 8060DD30  38 80 00 01 */	li r4, 1
/* 8060DD34  4B DF EA BD */	bl Matrix_RotateZ
/* 8060DD38  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8060DD3C  3C 00 43 30 */	lis r0, 0x4330
/* 8060DD40  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8060DD44  3C A0 80 65 */	lis r5, data_8064C0F4@ha /* 0x8064C0F4@ha */
/* 8060DD48  80 84 00 00 */	lwz r4, 0(r4)
/* 8060DD4C  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064C14C@ha */
/* 8060DD50  C8 23 C1 4C */	lfd f1, lit_467@l(r3)  /* 0x8064C14C@l */
/* 8060DD54  3C C0 80 65 */	lis r6, lit_424@ha /* 0x8064C120@ha */
/* 8060DD58  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 8060DD5C  38 60 00 01 */	li r3, 1
/* 8060DD60  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060DD64  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8060DD68  C0 45 C0 F4 */	lfs f2, data_8064C0F4@l(r5)  /* 0x8064C0F4@l */
/* 8060DD6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060DD70  C0 66 C1 20 */	lfs f3, lit_424@l(r6)  /* 0x8064C120@l */
/* 8060DD74  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8060DD78  EC 00 08 28 */	fsubs f0, f0, f1
/* 8060DD7C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060DD80  EC 03 00 2A */	fadds f0, f3, f0
/* 8060DD84  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8060DD88  FC 40 08 90 */	fmr f2, f1
/* 8060DD8C  FC 60 08 90 */	fmr f3, f1
/* 8060DD90  4B DF E6 5D */	bl Matrix_scale
/* 8060DD94  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 8060DD98  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060DD9C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060DDA0  38 7D 00 08 */	addi r3, r29, 8
/* 8060DDA4  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060DDA8  90 1D 00 00 */	stw r0, 0(r29)
/* 8060DDAC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8060DDB0  4B DF F6 25 */	bl _Matrix_to_Mtx_new
/* 8060DDB4  90 7D 00 04 */	stw r3, 4(r29)
/* 8060DDB8  3C 60 80 CB */	lis r3, ef_hanabi_b_00_modelT@ha /* 0x80CB3FA0@ha */
/* 8060DDBC  38 03 3F A0 */	addi r0, r3, ef_hanabi_b_00_modelT@l /* 0x80CB3FA0@l */
/* 8060DDC0  3C A0 FB 00 */	lis r5, 0xfb00
/* 8060DDC4  81 3F 02 E0 */	lwz r9, 0x2e0(r31)
/* 8060DDC8  3C 80 DE 00 */	lis r4, 0xde00
/* 8060DDCC  38 69 00 08 */	addi r3, r9, 8
/* 8060DDD0  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060DDD4  88 61 00 0C */	lbz r3, 0xc(r1)
/* 8060DDD8  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 8060DDDC  90 69 00 00 */	stw r3, 0(r9)
/* 8060DDE0  88 61 00 09 */	lbz r3, 9(r1)
/* 8060DDE4  88 C1 00 08 */	lbz r6, 8(r1)
/* 8060DDE8  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8060DDEC  88 E1 00 0A */	lbz r7, 0xa(r1)
/* 8060DDF0  50 C3 C0 0E */	rlwimi r3, r6, 0x18, 0, 7
/* 8060DDF4  89 01 00 0B */	lbz r8, 0xb(r1)
/* 8060DDF8  50 E3 44 2E */	rlwimi r3, r7, 8, 0x10, 0x17
/* 8060DDFC  51 03 06 3E */	rlwimi r3, r8, 0, 0x18, 0x1f
/* 8060DE00  90 69 00 04 */	stw r3, 4(r9)
/* 8060DE04  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 8060DE08  38 67 00 08 */	addi r3, r7, 8
/* 8060DE0C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060DE10  90 A7 00 00 */	stw r5, 0(r7)
/* 8060DE14  88 61 00 0E */	lbz r3, 0xe(r1)
/* 8060DE18  88 A1 00 0D */	lbz r5, 0xd(r1)
/* 8060DE1C  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8060DE20  88 C1 00 0F */	lbz r6, 0xf(r1)
/* 8060DE24  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 8060DE28  50 C3 44 2E */	rlwimi r3, r6, 8, 0x10, 0x17
/* 8060DE2C  60 63 00 FF */	ori r3, r3, 0xff
/* 8060DE30  90 67 00 04 */	stw r3, 4(r7)
/* 8060DE34  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8060DE38  38 65 00 08 */	addi r3, r5, 8
/* 8060DE3C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060DE40  90 85 00 00 */	stw r4, 0(r5)
/* 8060DE44  90 05 00 04 */	stw r0, 4(r5)
/* 8060DE48  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8060DE4C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8060DE50  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8060DE54  39 61 00 40 */	addi r11, r1, 0x40
/* 8060DE58  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8060DE5C  4B A8 D0 BD */	bl func_8009AF18
/* 8060DE60  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8060DE64  7C 08 03 A6 */	mtlr r0
/* 8060DE68  38 21 00 60 */	addi r1, r1, 0x60
/* 8060DE6C  4E 80 00 20 */	blr 
