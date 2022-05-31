lbl_805DD378:
/* 805DD378  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805DD37C  7C 08 02 A6 */	mflr r0
/* 805DD380  90 01 00 74 */	stw r0, 0x74(r1)
/* 805DD384  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805DD388  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805DD38C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805DD390  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805DD394  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805DD398  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805DD39C  39 61 00 40 */	addi r11, r1, 0x40
/* 805DD3A0  4B AB DB 31 */	bl func_8009AED0
/* 805DD3A4  7C 7C 1B 78 */	mr r28, r3
/* 805DD3A8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DD3AC  80 83 09 7C */	lwz r4, 0x97c(r3)
/* 805DD3B0  83 E3 09 80 */	lwz r31, 0x980(r3)
/* 805DD3B4  81 84 02 EC */	lwz r12, 0x2ec(r4)
/* 805DD3B8  3B C4 00 08 */	addi r30, r4, 8
/* 805DD3BC  7F C3 F3 78 */	mr r3, r30
/* 805DD3C0  7D 89 03 A6 */	mtctr r12
/* 805DD3C4  4E 80 04 21 */	bctrl 
/* 805DD3C8  A8 1F 00 14 */	lha r0, 0x14(r31)
/* 805DD3CC  7C 7D 1B 78 */	mr r29, r3
/* 805DD3D0  2C 00 00 02 */	cmpwi r0, 2
/* 805DD3D4  40 82 00 24 */	bne lbl_805DD3F8
/* 805DD3D8  3C 80 80 65 */	lis r4, lit_542@ha /* 0x8064B2C4@ha */
/* 805DD3DC  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064B2C8@ha */
/* 805DD3E0  C0 24 B2 C4 */	lfs f1, lit_542@l(r4)  /* 0x8064B2C4@l */
/* 805DD3E4  C0 03 B2 C8 */	lfs f0, lit_543@l(r3)  /* 0x8064B2C8@l */
/* 805DD3E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805DD3EC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805DD3F0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805DD3F4  48 00 00 4C */	b lbl_805DD440
lbl_805DD3F8:
/* 805DD3F8  2C 00 00 03 */	cmpwi r0, 3
/* 805DD3FC  40 82 00 24 */	bne lbl_805DD420
/* 805DD400  3C 80 80 65 */	lis r4, lit_544@ha /* 0x8064B2CC@ha */
/* 805DD404  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064B2C8@ha */
/* 805DD408  C0 24 B2 CC */	lfs f1, lit_544@l(r4)  /* 0x8064B2CC@l */
/* 805DD40C  C0 03 B2 C8 */	lfs f0, lit_543@l(r3)  /* 0x8064B2C8@l */
/* 805DD410  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805DD414  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805DD418  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805DD41C  48 00 00 24 */	b lbl_805DD440
lbl_805DD420:
/* 805DD420  80 BE 00 38 */	lwz r5, 0x38(r30)
/* 805DD424  7F 83 E3 78 */	mr r3, r28
/* 805DD428  7F A6 EB 78 */	mr r6, r29
/* 805DD42C  7F E7 FB 78 */	mr r7, r31
/* 805DD430  38 81 00 14 */	addi r4, r1, 0x14
/* 805DD434  4B FF FD 7D */	bl mHD_hand_pos_get
/* 805DD438  3C 60 80 65 */	lis r3, lit_438@ha /* 0x8064B2A0@ha */
/* 805DD43C  C0 03 B2 A0 */	lfs f0, lit_438@l(r3)  /* 0x8064B2A0@l */
lbl_805DD440:
/* 805DD440  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 805DD444  3C 60 80 65 */	lis r3, lit_545@ha /* 0x8064B2D0@ha */
/* 805DD448  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805DD44C  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 805DD450  EF C2 08 28 */	fsubs f30, f2, f1
/* 805DD454  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805DD458  C0 43 B2 D0 */	lfs f2, lit_545@l(r3)  /* 0x8064B2D0@l */
/* 805DD45C  EF A3 08 28 */	fsubs f29, f3, f1
/* 805DD460  FC 20 F2 10 */	fabs f1, f30
/* 805DD464  FC 20 08 18 */	frsp f1, f1
/* 805DD468  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 805DD46C  41 81 00 14 */	bgt lbl_805DD480
/* 805DD470  FC 20 EA 10 */	fabs f1, f29
/* 805DD474  FC 20 08 18 */	frsp f1, f1
/* 805DD478  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 805DD47C  40 81 02 B4 */	ble lbl_805DD730
lbl_805DD480:
/* 805DD480  EC 7E 07 B2 */	fmuls f3, f30, f30
/* 805DD484  3C 60 80 65 */	lis r3, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DD488  EC 5D 07 72 */	fmuls f2, f29, f29
/* 805DD48C  C0 23 B2 9C */	lfs f1, data_8064B29C@l(r3)  /* 0x8064B29C@l */
/* 805DD490  EF E3 10 2A */	fadds f31, f3, f2
/* 805DD494  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 805DD498  40 81 00 68 */	ble lbl_805DD500
/* 805DD49C  FC 40 F8 34 */	frsqrte f2, f31
/* 805DD4A0  3C 60 80 65 */	lis r3, lit_546@ha /* 0x8064B2D4@ha */
/* 805DD4A4  38 83 B2 D4 */	addi r4, r3, lit_546@l /* 0x8064B2D4@l */
/* 805DD4A8  3C 60 80 65 */	lis r3, lit_547@ha /* 0x8064B2DC@ha */
/* 805DD4AC  C8 84 00 00 */	lfd f4, 0(r4)
/* 805DD4B0  FC 22 00 B2 */	fmul f1, f2, f2
/* 805DD4B4  C8 63 B2 DC */	lfd f3, lit_547@l(r3)  /* 0x8064B2DC@l */
/* 805DD4B8  FC 44 00 B2 */	fmul f2, f4, f2
/* 805DD4BC  FC 3F 00 72 */	fmul f1, f31, f1
/* 805DD4C0  FC 23 08 28 */	fsub f1, f3, f1
/* 805DD4C4  FC 42 00 72 */	fmul f2, f2, f1
/* 805DD4C8  FC 22 00 B2 */	fmul f1, f2, f2
/* 805DD4CC  FC 44 00 B2 */	fmul f2, f4, f2
/* 805DD4D0  FC 3F 00 72 */	fmul f1, f31, f1
/* 805DD4D4  FC 23 08 28 */	fsub f1, f3, f1
/* 805DD4D8  FC 42 00 72 */	fmul f2, f2, f1
/* 805DD4DC  FC 22 00 B2 */	fmul f1, f2, f2
/* 805DD4E0  FC 44 00 B2 */	fmul f2, f4, f2
/* 805DD4E4  FC 3F 00 72 */	fmul f1, f31, f1
/* 805DD4E8  FC 23 08 28 */	fsub f1, f3, f1
/* 805DD4EC  FC 22 00 72 */	fmul f1, f2, f1
/* 805DD4F0  FC 3F 00 72 */	fmul f1, f31, f1
/* 805DD4F4  FC 20 08 18 */	frsp f1, f1
/* 805DD4F8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805DD4FC  C3 E1 00 0C */	lfs f31, 0xc(r1)
lbl_805DD500:
/* 805DD500  3C 80 80 65 */	lis r4, lit_543@ha /* 0x8064B2C8@ha */
/* 805DD504  3C 60 80 65 */	lis r3, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DD508  C0 44 B2 C8 */	lfs f2, lit_543@l(r4)  /* 0x8064B2C8@l */
/* 805DD50C  C0 23 B2 9C */	lfs f1, data_8064B29C@l(r3)  /* 0x8064B29C@l */
/* 805DD510  EC C2 00 28 */	fsubs f6, f2, f0
/* 805DD514  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 805DD518  FC 06 08 40 */	fcmpo cr0, f6, f1
/* 805DD51C  40 81 00 68 */	ble lbl_805DD584
/* 805DD520  FC 20 30 34 */	frsqrte f1, f6
/* 805DD524  3C 60 80 65 */	lis r3, lit_546@ha /* 0x8064B2D4@ha */
/* 805DD528  38 83 B2 D4 */	addi r4, r3, lit_546@l /* 0x8064B2D4@l */
/* 805DD52C  3C 60 80 65 */	lis r3, lit_547@ha /* 0x8064B2DC@ha */
/* 805DD530  C8 64 00 00 */	lfd f3, 0(r4)
/* 805DD534  FC 01 00 72 */	fmul f0, f1, f1
/* 805DD538  C8 43 B2 DC */	lfd f2, lit_547@l(r3)  /* 0x8064B2DC@l */
/* 805DD53C  FC 23 00 72 */	fmul f1, f3, f1
/* 805DD540  FC 06 00 32 */	fmul f0, f6, f0
/* 805DD544  FC 02 00 28 */	fsub f0, f2, f0
/* 805DD548  FC 21 00 32 */	fmul f1, f1, f0
/* 805DD54C  FC 01 00 72 */	fmul f0, f1, f1
/* 805DD550  FC 23 00 72 */	fmul f1, f3, f1
/* 805DD554  FC 06 00 32 */	fmul f0, f6, f0
/* 805DD558  FC 02 00 28 */	fsub f0, f2, f0
/* 805DD55C  FC 21 00 32 */	fmul f1, f1, f0
/* 805DD560  FC 01 00 72 */	fmul f0, f1, f1
/* 805DD564  FC 23 00 72 */	fmul f1, f3, f1
/* 805DD568  FC 06 00 32 */	fmul f0, f6, f0
/* 805DD56C  FC 02 00 28 */	fsub f0, f2, f0
/* 805DD570  FC 01 00 32 */	fmul f0, f1, f0
/* 805DD574  FC 06 00 32 */	fmul f0, f6, f0
/* 805DD578  FC 00 00 18 */	frsp f0, f0
/* 805DD57C  D0 01 00 08 */	stfs f0, 8(r1)
/* 805DD580  C0 C1 00 08 */	lfs f6, 8(r1)
lbl_805DD584:
/* 805DD584  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 805DD588  3C 60 43 30 */	lis r3, 0x4330
/* 805DD58C  38 A4 61 38 */	addi r5, r4, debug_mode@l /* 0x81166138@l */
/* 805DD590  3C C0 80 65 */	lis r6, lit_548@ha /* 0x8064B2E4@ha */
/* 805DD594  80 E5 00 00 */	lwz r7, 0(r5)
/* 805DD598  3C 80 80 65 */	lis r4, lit_550@ha /* 0x8064B2EC@ha */
/* 805DD59C  38 A4 B2 EC */	addi r5, r4, lit_550@l /* 0x8064B2EC@l */
/* 805DD5A0  3D 00 80 65 */	lis r8, lit_543@ha /* 0x8064B2C8@ha */
/* 805DD5A4  A8 87 06 3A */	lha r4, 0x63a(r7)
/* 805DD5A8  A8 07 06 3C */	lha r0, 0x63c(r7)
/* 805DD5AC  3C E0 80 65 */	lis r7, lit_481@ha /* 0x8064B2C0@ha */
/* 805DD5B0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805DD5B4  C1 08 B2 C8 */	lfs f8, lit_543@l(r8)  /* 0x8064B2C8@l */
/* 805DD5B8  90 81 00 24 */	stw r4, 0x24(r1)
/* 805DD5BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805DD5C0  38 87 B2 C0 */	addi r4, r7, lit_481@l /* 0x8064B2C0@l */
/* 805DD5C4  EC 48 30 28 */	fsubs f2, f8, f6
/* 805DD5C8  90 61 00 20 */	stw r3, 0x20(r1)
/* 805DD5CC  3C E0 80 65 */	lis r7, lit_438@ha /* 0x8064B2A0@ha */
/* 805DD5D0  C8 85 00 00 */	lfd f4, 0(r5)
/* 805DD5D4  38 A7 B2 A0 */	addi r5, r7, lit_438@l /* 0x8064B2A0@l */
/* 805DD5D8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805DD5DC  90 61 00 28 */	stw r3, 0x28(r1)
/* 805DD5E0  3C E0 80 65 */	lis r7, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DD5E4  EC 20 20 28 */	fsubs f1, f0, f4
/* 805DD5E8  C0 A6 B2 E4 */	lfs f5, lit_548@l(r6)  /* 0x8064B2E4@l */
/* 805DD5EC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805DD5F0  38 61 00 10 */	addi r3, r1, 0x10
/* 805DD5F4  C0 C4 00 00 */	lfs f6, 0(r4)
/* 805DD5F8  EC 65 00 72 */	fmuls f3, f5, f1
/* 805DD5FC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805DD600  C0 E5 00 00 */	lfs f7, 0(r5)
/* 805DD604  EC 00 20 28 */	fsubs f0, f0, f4
/* 805DD608  C0 27 B2 9C */	lfs f1, data_8064B29C@l(r7)  /* 0x8064B29C@l */
/* 805DD60C  EC 66 18 2A */	fadds f3, f6, f3
/* 805DD610  EC 05 00 32 */	fmuls f0, f5, f0
/* 805DD614  EC 67 00 F2 */	fmuls f3, f7, f3
/* 805DD618  EC 08 00 2A */	fadds f0, f8, f0
/* 805DD61C  EC 87 00 32 */	fmuls f4, f7, f0
/* 805DD620  4B DD DB 91 */	bl add_calc
/* 805DD624  FC 20 0A 10 */	fabs f1, f1
/* 805DD628  3C 60 80 65 */	lis r3, lit_548@ha /* 0x8064B2E4@ha */
/* 805DD62C  C0 03 B2 E4 */	lfs f0, lit_548@l(r3)  /* 0x8064B2E4@l */
/* 805DD630  FC 20 08 18 */	frsp f1, f1
/* 805DD634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DD638  40 80 00 AC */	bge lbl_805DD6E4
/* 805DD63C  A8 1F 00 14 */	lha r0, 0x14(r31)
/* 805DD640  2C 00 00 02 */	cmpwi r0, 2
/* 805DD644  40 82 00 40 */	bne lbl_805DD684
/* 805DD648  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805DD64C  7F 83 E3 78 */	mr r3, r28
/* 805DD650  7F A6 EB 78 */	mr r6, r29
/* 805DD654  38 9F 00 04 */	addi r4, r31, 4
/* 805DD658  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805DD65C  80 BE 00 38 */	lwz r5, 0x38(r30)
/* 805DD660  81 87 02 D8 */	lwz r12, 0x2d8(r7)
/* 805DD664  7D 89 03 A6 */	mtctr r12
/* 805DD668  4E 80 04 21 */	bctrl 
/* 805DD66C  3C 60 80 65 */	lis r3, lit_544@ha /* 0x8064B2CC@ha */
/* 805DD670  38 00 00 01 */	li r0, 1
/* 805DD674  C0 03 B2 CC */	lfs f0, lit_544@l(r3)  /* 0x8064B2CC@l */
/* 805DD678  D0 1F 00 04 */	stfs f0, 4(r31)
/* 805DD67C  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 805DD680  48 00 00 B8 */	b lbl_805DD738
lbl_805DD684:
/* 805DD684  2C 00 00 03 */	cmpwi r0, 3
/* 805DD688  40 82 00 40 */	bne lbl_805DD6C8
/* 805DD68C  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805DD690  7F 83 E3 78 */	mr r3, r28
/* 805DD694  7F A6 EB 78 */	mr r6, r29
/* 805DD698  38 9F 00 04 */	addi r4, r31, 4
/* 805DD69C  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805DD6A0  80 BE 00 38 */	lwz r5, 0x38(r30)
/* 805DD6A4  81 87 02 D8 */	lwz r12, 0x2d8(r7)
/* 805DD6A8  7D 89 03 A6 */	mtctr r12
/* 805DD6AC  4E 80 04 21 */	bctrl 
/* 805DD6B0  3C 60 80 65 */	lis r3, lit_542@ha /* 0x8064B2C4@ha */
/* 805DD6B4  38 00 00 01 */	li r0, 1
/* 805DD6B8  C0 03 B2 C4 */	lfs f0, lit_542@l(r3)  /* 0x8064B2C4@l */
/* 805DD6BC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 805DD6C0  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 805DD6C4  48 00 00 74 */	b lbl_805DD738
lbl_805DD6C8:
/* 805DD6C8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805DD6CC  38 00 00 00 */	li r0, 0
/* 805DD6D0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 805DD6D4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805DD6D8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 805DD6DC  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 805DD6E0  48 00 00 58 */	b lbl_805DD738
lbl_805DD6E4:
/* 805DD6E4  A8 1F 00 14 */	lha r0, 0x14(r31)
/* 805DD6E8  2C 00 00 00 */	cmpwi r0, 0
/* 805DD6EC  40 82 00 0C */	bne lbl_805DD6F8
/* 805DD6F0  38 00 00 01 */	li r0, 1
/* 805DD6F4  B0 1F 00 14 */	sth r0, 0x14(r31)
lbl_805DD6F8:
/* 805DD6F8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805DD6FC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805DD700  EC 1F 00 28 */	fsubs f0, f31, f0
/* 805DD704  FC 00 02 10 */	fabs f0, f0
/* 805DD708  FC 00 00 18 */	frsp f0, f0
/* 805DD70C  EC 00 F8 24 */	fdivs f0, f0, f31
/* 805DD710  EC 3E 00 32 */	fmuls f1, f30, f0
/* 805DD714  EC 1D 00 32 */	fmuls f0, f29, f0
/* 805DD718  EC 22 08 2A */	fadds f1, f2, f1
/* 805DD71C  D0 3F 00 04 */	stfs f1, 4(r31)
/* 805DD720  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805DD724  EC 01 00 2A */	fadds f0, f1, f0
/* 805DD728  D0 1F 00 08 */	stfs f0, 8(r31)
/* 805DD72C  48 00 00 0C */	b lbl_805DD738
lbl_805DD730:
/* 805DD730  38 00 00 00 */	li r0, 0
/* 805DD734  B0 1F 00 14 */	sth r0, 0x14(r31)
lbl_805DD738:
/* 805DD738  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805DD73C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805DD740  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805DD744  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805DD748  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805DD74C  39 61 00 40 */	addi r11, r1, 0x40
/* 805DD750  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805DD754  4B AB D7 C9 */	bl func_8009AF1C
/* 805DD758  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805DD75C  7C 08 03 A6 */	mtlr r0
/* 805DD760  38 21 00 70 */	addi r1, r1, 0x70
/* 805DD764  4E 80 00 20 */	blr 
