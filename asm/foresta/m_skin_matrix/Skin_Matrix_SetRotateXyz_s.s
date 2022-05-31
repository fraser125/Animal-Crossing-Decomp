lbl_803F18BC:
/* 803F18BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803F18C0  7C 08 02 A6 */	mflr r0
/* 803F18C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 803F18C8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803F18CC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803F18D0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 803F18D4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 803F18D8  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 803F18DC  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 803F18E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803F18E4  4B CA 95 ED */	bl func_8009AED0
/* 803F18E8  7C DF 33 78 */	mr r31, r6
/* 803F18EC  7C 7C 1B 78 */	mr r28, r3
/* 803F18F0  7C 9D 23 78 */	mr r29, r4
/* 803F18F4  7C BE 2B 78 */	mr r30, r5
/* 803F18F8  7F E3 FB 78 */	mr r3, r31
/* 803F18FC  4B FC 91 F5 */	bl sin_s
/* 803F1900  FF A0 08 90 */	fmr f29, f1
/* 803F1904  7F E3 FB 78 */	mr r3, r31
/* 803F1908  4B FC 91 95 */	bl cos_s
/* 803F190C  FF C0 08 90 */	fmr f30, f1
/* 803F1910  3C 60 80 64 */	lis r3, lit_352@ha /* 0x80643228@ha */
/* 803F1914  38 83 32 28 */	addi r4, r3, lit_352@l /* 0x80643228@l */
/* 803F1918  FC 00 E8 50 */	fneg f0, f29
/* 803F191C  C0 24 00 00 */	lfs f1, 0(r4)
/* 803F1920  3C 60 80 64 */	lis r3, data_80643224@ha /* 0x80643224@ha */
/* 803F1924  D3 DC 00 14 */	stfs f30, 0x14(r28)
/* 803F1928  7F C0 07 35 */	extsh. r0, r30
/* 803F192C  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 803F1930  C0 03 32 24 */	lfs f0, data_80643224@l(r3)  /* 0x80643224@l */
/* 803F1934  D0 3C 00 2C */	stfs f1, 0x2c(r28)
/* 803F1938  D0 3C 00 1C */	stfs f1, 0x1c(r28)
/* 803F193C  D0 3C 00 0C */	stfs f1, 0xc(r28)
/* 803F1940  D0 3C 00 38 */	stfs f1, 0x38(r28)
/* 803F1944  D0 3C 00 34 */	stfs f1, 0x34(r28)
/* 803F1948  D0 3C 00 30 */	stfs f1, 0x30(r28)
/* 803F194C  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 803F1950  41 82 00 48 */	beq lbl_803F1998
/* 803F1954  7F C3 F3 78 */	mr r3, r30
/* 803F1958  4B FC 91 99 */	bl sin_s
/* 803F195C  FF E0 08 90 */	fmr f31, f1
/* 803F1960  7F C3 F3 78 */	mr r3, r30
/* 803F1964  4B FC 91 39 */	bl cos_s
/* 803F1968  EC 1E 00 72 */	fmuls f0, f30, f1
/* 803F196C  EC 9E 07 F2 */	fmuls f4, f30, f31
/* 803F1970  EC 7D 00 72 */	fmuls f3, f29, f1
/* 803F1974  D0 1C 00 00 */	stfs f0, 0(r28)
/* 803F1978  EC 5D 07 F2 */	fmuls f2, f29, f31
/* 803F197C  FC 00 F8 50 */	fneg f0, f31
/* 803F1980  D0 9C 00 20 */	stfs f4, 0x20(r28)
/* 803F1984  D0 7C 00 04 */	stfs f3, 4(r28)
/* 803F1988  D0 5C 00 24 */	stfs f2, 0x24(r28)
/* 803F198C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 803F1990  D0 3C 00 28 */	stfs f1, 0x28(r28)
/* 803F1994  48 00 00 1C */	b lbl_803F19B0
lbl_803F1998:
/* 803F1998  D3 DC 00 00 */	stfs f30, 0(r28)
/* 803F199C  D3 BC 00 04 */	stfs f29, 4(r28)
/* 803F19A0  D0 3C 00 24 */	stfs f1, 0x24(r28)
/* 803F19A4  D0 3C 00 20 */	stfs f1, 0x20(r28)
/* 803F19A8  D0 3C 00 08 */	stfs f1, 8(r28)
/* 803F19AC  D0 1C 00 28 */	stfs f0, 0x28(r28)
lbl_803F19B0:
/* 803F19B0  7F A0 07 35 */	extsh. r0, r29
/* 803F19B4  41 82 00 88 */	beq lbl_803F1A3C
/* 803F19B8  7F A3 EB 78 */	mr r3, r29
/* 803F19BC  4B FC 91 35 */	bl sin_s
/* 803F19C0  FF E0 08 90 */	fmr f31, f1
/* 803F19C4  7F A3 EB 78 */	mr r3, r29
/* 803F19C8  4B FC 90 D5 */	bl cos_s
/* 803F19CC  C0 5C 00 10 */	lfs f2, 0x10(r28)
/* 803F19D0  C0 BC 00 20 */	lfs f5, 0x20(r28)
/* 803F19D4  EC 02 07 F2 */	fmuls f0, f2, f31
/* 803F19D8  EC 82 00 72 */	fmuls f4, f2, f1
/* 803F19DC  EC 65 07 F2 */	fmuls f3, f5, f31
/* 803F19E0  FC 40 00 50 */	fneg f2, f0
/* 803F19E4  EC 05 00 72 */	fmuls f0, f5, f1
/* 803F19E8  EC 64 18 2A */	fadds f3, f4, f3
/* 803F19EC  EC 02 00 2A */	fadds f0, f2, f0
/* 803F19F0  D0 7C 00 10 */	stfs f3, 0x10(r28)
/* 803F19F4  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 803F19F8  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 803F19FC  C0 BC 00 24 */	lfs f5, 0x24(r28)
/* 803F1A00  EC 02 07 F2 */	fmuls f0, f2, f31
/* 803F1A04  EC 82 00 72 */	fmuls f4, f2, f1
/* 803F1A08  EC 65 07 F2 */	fmuls f3, f5, f31
/* 803F1A0C  FC 40 00 50 */	fneg f2, f0
/* 803F1A10  EC 05 00 72 */	fmuls f0, f5, f1
/* 803F1A14  EC 64 18 2A */	fadds f3, f4, f3
/* 803F1A18  EC 02 00 2A */	fadds f0, f2, f0
/* 803F1A1C  D0 7C 00 14 */	stfs f3, 0x14(r28)
/* 803F1A20  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 803F1A24  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 803F1A28  EC 40 07 F2 */	fmuls f2, f0, f31
/* 803F1A2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803F1A30  D0 5C 00 18 */	stfs f2, 0x18(r28)
/* 803F1A34  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 803F1A38  48 00 00 10 */	b lbl_803F1A48
lbl_803F1A3C:
/* 803F1A3C  3C 60 80 64 */	lis r3, lit_352@ha /* 0x80643228@ha */
/* 803F1A40  C0 03 32 28 */	lfs f0, lit_352@l(r3)  /* 0x80643228@l */
/* 803F1A44  D0 1C 00 18 */	stfs f0, 0x18(r28)
lbl_803F1A48:
/* 803F1A48  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803F1A4C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803F1A50  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 803F1A54  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 803F1A58  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 803F1A5C  39 61 00 20 */	addi r11, r1, 0x20
/* 803F1A60  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 803F1A64  4B CA 94 B9 */	bl func_8009AF1C
/* 803F1A68  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803F1A6C  7C 08 03 A6 */	mtlr r0
/* 803F1A70  38 21 00 50 */	addi r1, r1, 0x50
/* 803F1A74  4E 80 00 20 */	blr 
