lbl_80614F48:
/* 80614F48  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80614F4C  7C 08 02 A6 */	mflr r0
/* 80614F50  90 01 00 84 */	stw r0, 0x84(r1)
/* 80614F54  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80614F58  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80614F5C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80614F60  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80614F64  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80614F68  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80614F6C  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80614F70  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80614F74  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 80614F78  F3 61 00 38 */	psq_st f27, 56(r1), 0, 0 /* qr0 */
/* 80614F7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80614F80  4B A8 5F 45 */	bl func_8009AEC4
/* 80614F84  7C 79 1B 78 */	mr r25, r3
/* 80614F88  3C 60 80 6D */	lis r3, data_806D2EA8@ha /* 0x806D2EA8@ha */
/* 80614F8C  A8 19 00 00 */	lha r0, 0(r25)
/* 80614F90  7C 9A 23 78 */	mr r26, r4
/* 80614F94  AB D9 00 50 */	lha r30, 0x50(r25)
/* 80614F98  3B E3 2E A8 */	addi r31, r3, data_806D2EA8@l /* 0x806D2EA8@l */
/* 80614F9C  20 00 00 48 */	subfic r0, r0, 0x48
/* 80614FA0  AB B9 00 4C */	lha r29, 0x4c(r25)
/* 80614FA4  AB 79 00 52 */	lha r27, 0x52(r25)
/* 80614FA8  7F C3 F3 78 */	mr r3, r30
/* 80614FAC  7C 1C 07 34 */	extsh r28, r0
/* 80614FB0  4B DA 5B 41 */	bl sin_s
/* 80614FB4  3C 7E 00 01 */	addis r3, r30, 1
/* 80614FB8  FF 60 08 90 */	fmr f27, f1
/* 80614FBC  38 03 80 00 */	addi r0, r3, -32768
/* 80614FC0  7C 03 07 34 */	extsh r3, r0
/* 80614FC4  4B DA 5B 2D */	bl sin_s
/* 80614FC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80614FCC  3C A0 80 65 */	lis r5, lit_461@ha /* 0x8064C664@ha */
/* 80614FD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80614FD4  C0 45 C6 64 */	lfs f2, lit_461@l(r5)  /* 0x8064C664@l */
/* 80614FD8  3F C3 00 02 */	addis r30, r3, 2
/* 80614FDC  3C C0 80 65 */	lis r6, lit_410@ha /* 0x8064C63C@ha */
/* 80614FE0  80 9E 60 9C */	lwz r4, 0x609c(r30)
/* 80614FE4  FF 80 08 90 */	fmr f28, f1
/* 80614FE8  7F 83 E3 78 */	mr r3, r28
/* 80614FEC  C0 26 C6 3C */	lfs f1, lit_410@l(r6)  /* 0x8064C63C@l */
/* 80614FF0  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80614FF4  38 80 00 00 */	li r4, 0
/* 80614FF8  38 A0 00 12 */	li r5, 0x12
/* 80614FFC  7D 89 03 A6 */	mtctr r12
/* 80615000  4E 80 04 21 */	bctrl 
/* 80615004  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 80615008  3C 80 80 65 */	lis r4, lit_463@ha /* 0x8064C66C@ha */
/* 8061500C  C0 44 C6 6C */	lfs f2, lit_463@l(r4)  /* 0x8064C66C@l */
/* 80615010  3C A0 80 65 */	lis r5, lit_462@ha /* 0x8064C668@ha */
/* 80615014  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80615018  FF A0 08 90 */	fmr f29, f1
/* 8061501C  C0 25 C6 68 */	lfs f1, lit_462@l(r5)  /* 0x8064C668@l */
/* 80615020  7F 83 E3 78 */	mr r3, r28
/* 80615024  38 80 00 00 */	li r4, 0
/* 80615028  38 A0 00 1E */	li r5, 0x1e
/* 8061502C  7D 89 03 A6 */	mtctr r12
/* 80615030  4E 80 04 21 */	bctrl 
/* 80615034  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 80615038  3C 80 80 65 */	lis r4, lit_465@ha /* 0x8064C674@ha */
/* 8061503C  C0 44 C6 74 */	lfs f2, lit_465@l(r4)  /* 0x8064C674@l */
/* 80615040  3C A0 80 65 */	lis r5, lit_464@ha /* 0x8064C670@ha */
/* 80615044  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80615048  FF C0 08 90 */	fmr f30, f1
/* 8061504C  C0 25 C6 70 */	lfs f1, lit_464@l(r5)  /* 0x8064C670@l */
/* 80615050  7F 83 E3 78 */	mr r3, r28
/* 80615054  38 80 00 00 */	li r4, 0
/* 80615058  38 A0 00 1E */	li r5, 0x1e
/* 8061505C  7D 89 03 A6 */	mtctr r12
/* 80615060  4E 80 04 21 */	bctrl 
/* 80615064  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 80615068  3C 80 80 65 */	lis r4, lit_401@ha /* 0x8064C618@ha */
/* 8061506C  C0 44 C6 18 */	lfs f2, lit_401@l(r4)  /* 0x8064C618@l */
/* 80615070  3C A0 80 65 */	lis r5, lit_466@ha /* 0x8064C678@ha */
/* 80615074  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80615078  FF E0 08 90 */	fmr f31, f1
/* 8061507C  C0 25 C6 78 */	lfs f1, lit_466@l(r5)  /* 0x8064C678@l */
/* 80615080  7F 83 E3 78 */	mr r3, r28
/* 80615084  38 80 00 3C */	li r4, 0x3c
/* 80615088  38 A0 00 48 */	li r5, 0x48
/* 8061508C  7D 89 03 A6 */	mtctr r12
/* 80615090  4E 80 04 21 */	bctrl 
/* 80615094  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064C67C@ha */
/* 80615098  3C 80 80 65 */	lis r4, lit_404@ha /* 0x8064C624@ha */
/* 8061509C  C0 03 C6 7C */	lfs f0, lit_467@l(r3)  /* 0x8064C67C@l */
/* 806150A0  FC 60 08 1E */	fctiwz f3, f1
/* 806150A4  C0 44 C6 24 */	lfs f2, lit_404@l(r4)  /* 0x8064C624@l */
/* 806150A8  EC 9E F8 28 */	fsubs f4, f30, f31
/* 806150AC  EC 20 D8 2A */	fadds f1, f0, f27
/* 806150B0  EC 00 E0 2A */	fadds f0, f0, f28
/* 806150B4  D8 61 00 08 */	stfd f3, 8(r1)
/* 806150B8  EC 22 00 72 */	fmuls f1, f2, f1
/* 806150BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806150C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 806150C4  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 806150C8  EC 21 01 32 */	fmuls f1, f1, f4
/* 806150CC  EC 00 01 32 */	fmuls f0, f0, f4
/* 806150D0  EC 3F 08 2A */	fadds f1, f31, f1
/* 806150D4  EC 1F 00 2A */	fadds f0, f31, f0
/* 806150D8  EC 3D 00 72 */	fmuls f1, f29, f1
/* 806150DC  EC 1D 00 32 */	fmuls f0, f29, f0
/* 806150E0  D0 39 00 34 */	stfs f1, 0x34(r25)
/* 806150E4  D0 19 00 38 */	stfs f0, 0x38(r25)
/* 806150E8  D3 B9 00 3C */	stfs f29, 0x3c(r25)
/* 806150EC  83 DA 00 00 */	lwz r30, 0(r26)
/* 806150F0  7F C3 F3 78 */	mr r3, r30
/* 806150F4  4B DD 00 65 */	bl _texture_z_light_fog_prim_xlu
/* 806150F8  C0 39 00 10 */	lfs f1, 0x10(r25)
/* 806150FC  38 60 00 00 */	li r3, 0
/* 80615100  C0 59 00 14 */	lfs f2, 0x14(r25)
/* 80615104  C0 79 00 18 */	lfs f3, 0x18(r25)
/* 80615108  4B DF 71 F9 */	bl Matrix_translate
/* 8061510C  38 7A 20 4C */	addi r3, r26, 0x204c
/* 80615110  38 80 00 01 */	li r4, 1
/* 80615114  4B DF 71 85 */	bl Matrix_mult
/* 80615118  A8 79 00 54 */	lha r3, 0x54(r25)
/* 8061511C  38 80 00 01 */	li r4, 1
/* 80615120  4B DF 76 D1 */	bl Matrix_RotateZ
/* 80615124  C0 39 00 34 */	lfs f1, 0x34(r25)
/* 80615128  38 60 00 01 */	li r3, 1
/* 8061512C  C0 59 00 38 */	lfs f2, 0x38(r25)
/* 80615130  C0 79 00 3C */	lfs f3, 0x3c(r25)
/* 80615134  4B DF 72 B9 */	bl Matrix_scale
/* 80615138  83 3E 02 E0 */	lwz r25, 0x2e0(r30)
/* 8061513C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80615140  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80615144  38 79 00 08 */	addi r3, r25, 8
/* 80615148  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061514C  90 19 00 00 */	stw r0, 0(r25)
/* 80615150  80 7A 00 00 */	lwz r3, 0(r26)
/* 80615154  4B DF 82 81 */	bl _Matrix_to_Mtx_new
/* 80615158  90 79 00 04 */	stw r3, 4(r25)
/* 8061515C  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 80615160  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 80615164  57 6C 10 3A */	slwi r12, r27, 2
/* 80615168  81 7E 02 E0 */	lwz r11, 0x2e0(r30)
/* 8061516C  39 3F 00 30 */	addi r9, r31, 0x30
/* 80615170  38 DF 00 44 */	addi r6, r31, 0x44
/* 80615174  3C A0 FB 00 */	lis r5, 0xfb00
/* 80615178  38 0B 00 08 */	addi r0, r11, 8
/* 8061517C  7D 49 62 14 */	add r10, r9, r12
/* 80615180  90 1E 02 E0 */	stw r0, 0x2e0(r30)
/* 80615184  7C E6 62 14 */	add r7, r6, r12
/* 80615188  3C 80 DE 00 */	lis r4, 0xde00
/* 8061518C  57 A0 10 3A */	slwi r0, r29, 2
/* 80615190  90 6B 00 00 */	stw r3, 0(r11)
/* 80615194  38 7F 00 00 */	addi r3, r31, 0
/* 80615198  89 0A 00 01 */	lbz r8, 1(r10)
/* 8061519C  7D 29 60 AE */	lbzx r9, r9, r12
/* 806151A0  55 08 82 1E */	rlwinm r8, r8, 0x10, 8, 0xf
/* 806151A4  89 4A 00 02 */	lbz r10, 2(r10)
/* 806151A8  51 28 C0 0E */	rlwimi r8, r9, 0x18, 0, 7
/* 806151AC  51 48 44 2E */	rlwimi r8, r10, 8, 0x10, 0x17
/* 806151B0  7F 88 43 78 */	or r8, r28, r8
/* 806151B4  91 0B 00 04 */	stw r8, 4(r11)
/* 806151B8  81 3E 02 E0 */	lwz r9, 0x2e0(r30)
/* 806151BC  39 09 00 08 */	addi r8, r9, 8
/* 806151C0  91 1E 02 E0 */	stw r8, 0x2e0(r30)
/* 806151C4  90 A9 00 00 */	stw r5, 0(r9)
/* 806151C8  88 A7 00 01 */	lbz r5, 1(r7)
/* 806151CC  7C C6 60 AE */	lbzx r6, r6, r12
/* 806151D0  54 A5 82 1E */	rlwinm r5, r5, 0x10, 8, 0xf
/* 806151D4  88 E7 00 02 */	lbz r7, 2(r7)
/* 806151D8  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 806151DC  50 E5 44 2E */	rlwimi r5, r7, 8, 0x10, 0x17
/* 806151E0  60 A5 00 FF */	ori r5, r5, 0xff
/* 806151E4  90 A9 00 04 */	stw r5, 4(r9)
/* 806151E8  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 806151EC  38 A6 00 08 */	addi r5, r6, 8
/* 806151F0  90 BE 02 E0 */	stw r5, 0x2e0(r30)
/* 806151F4  90 86 00 00 */	stw r4, 0(r6)
/* 806151F8  7C 03 00 2E */	lwzx r0, r3, r0
/* 806151FC  90 06 00 04 */	stw r0, 4(r6)
/* 80615200  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80615204  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80615208  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8061520C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80615210  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80615214  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80615218  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 8061521C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80615220  E3 61 00 38 */	psq_l f27, 56(r1), 0, 0 /* qr0 */
/* 80615224  39 61 00 30 */	addi r11, r1, 0x30
/* 80615228  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 8061522C  4B A8 5C E5 */	bl func_8009AF10
/* 80615230  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80615234  7C 08 03 A6 */	mtlr r0
/* 80615238  38 21 00 80 */	addi r1, r1, 0x80
/* 8061523C  4E 80 00 20 */	blr 
