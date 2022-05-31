lbl_80619E9C:
/* 80619E9C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80619EA0  7C 08 02 A6 */	mflr r0
/* 80619EA4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80619EA8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80619EAC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80619EB0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80619EB4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80619EB8  39 61 00 50 */	addi r11, r1, 0x50
/* 80619EBC  4B A8 10 09 */	bl func_8009AEC4
/* 80619EC0  7C 9B 23 78 */	mr r27, r4
/* 80619EC4  39 60 00 40 */	li r11, 0x40
/* 80619EC8  80 A4 20 90 */	lwz r5, 0x2090(r4)
/* 80619ECC  38 00 00 20 */	li r0, 0x20
/* 80619ED0  7C 7A 1B 78 */	mr r26, r3
/* 80619ED4  38 80 00 00 */	li r4, 0
/* 80619ED8  1C 65 00 19 */	mulli r3, r5, 0x19
/* 80619EDC  38 A0 00 00 */	li r5, 0
/* 80619EE0  38 C0 00 00 */	li r6, 0
/* 80619EE4  38 E0 00 10 */	li r7, 0x10
/* 80619EE8  90 61 00 08 */	stw r3, 8(r1)
/* 80619EEC  39 00 00 10 */	li r8, 0x10
/* 80619EF0  39 20 00 01 */	li r9, 1
/* 80619EF4  39 40 00 00 */	li r10, 0
/* 80619EF8  91 61 00 0C */	stw r11, 0xc(r1)
/* 80619EFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80619F00  80 7B 00 00 */	lwz r3, 0(r27)
/* 80619F04  4B DC B6 BD */	bl two_tex_scroll_dolphin
/* 80619F08  88 1A 00 0F */	lbz r0, 0xf(r26)
/* 80619F0C  7C 7F 1B 78 */	mr r31, r3
/* 80619F10  2C 00 00 01 */	cmpwi r0, 1
/* 80619F14  41 82 00 A8 */	beq lbl_80619FBC
/* 80619F18  40 80 00 D0 */	bge lbl_80619FE8
/* 80619F1C  2C 00 00 00 */	cmpwi r0, 0
/* 80619F20  40 80 00 08 */	bge lbl_80619F28
/* 80619F24  48 00 00 C4 */	b lbl_80619FE8
lbl_80619F28:
/* 80619F28  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80619F2C  A8 1A 00 00 */	lha r0, 0(r26)
/* 80619F30  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80619F34  3C A0 80 65 */	lis r5, lit_386@ha /* 0x8064C97C@ha */
/* 80619F38  3F 23 00 02 */	addis r25, r3, 2
/* 80619F3C  20 00 00 16 */	subfic r0, r0, 0x16
/* 80619F40  80 79 60 9C */	lwz r3, 0x609c(r25)
/* 80619F44  3C 80 80 65 */	lis r4, lit_399@ha /* 0x8064C9A0@ha */
/* 80619F48  C0 25 C9 7C */	lfs f1, lit_386@l(r5)  /* 0x8064C97C@l */
/* 80619F4C  7C 1C 07 34 */	extsh r28, r0
/* 80619F50  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80619F54  7F 83 E3 78 */	mr r3, r28
/* 80619F58  C0 44 C9 A0 */	lfs f2, lit_399@l(r4)  /* 0x8064C9A0@l */
/* 80619F5C  38 80 00 00 */	li r4, 0
/* 80619F60  38 A0 00 0A */	li r5, 0xa
/* 80619F64  7D 89 03 A6 */	mtctr r12
/* 80619F68  4E 80 04 21 */	bctrl 
/* 80619F6C  80 79 60 9C */	lwz r3, 0x609c(r25)
/* 80619F70  3C 80 80 65 */	lis r4, lit_434@ha /* 0x8064C9A4@ha */
/* 80619F74  C0 44 C9 A4 */	lfs f2, lit_434@l(r4)  /* 0x8064C9A4@l */
/* 80619F78  3C A0 80 65 */	lis r5, lit_386@ha /* 0x8064C97C@ha */
/* 80619F7C  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80619F80  FF E0 08 90 */	fmr f31, f1
/* 80619F84  C0 25 C9 7C */	lfs f1, lit_386@l(r5)  /* 0x8064C97C@l */
/* 80619F88  7F 83 E3 78 */	mr r3, r28
/* 80619F8C  38 80 00 0A */	li r4, 0xa
/* 80619F90  38 A0 00 15 */	li r5, 0x15
/* 80619F94  7D 89 03 A6 */	mtctr r12
/* 80619F98  4E 80 04 21 */	bctrl 
/* 80619F9C  FF C0 08 90 */	fmr f30, f1
/* 80619FA0  7F 43 D3 78 */	mr r3, r26
/* 80619FA4  38 BA 00 10 */	addi r5, r26, 0x10
/* 80619FA8  3B C0 00 FF */	li r30, 0xff
/* 80619FAC  3B A0 00 64 */	li r29, 0x64
/* 80619FB0  38 80 00 59 */	li r4, 0x59
/* 80619FB4  48 01 3F 91 */	bl sAdo_OngenPos
/* 80619FB8  48 00 00 E4 */	b lbl_8061A09C
lbl_80619FBC:
/* 80619FBC  7F 43 D3 78 */	mr r3, r26
/* 80619FC0  38 BA 00 10 */	addi r5, r26, 0x10
/* 80619FC4  38 80 00 59 */	li r4, 0x59
/* 80619FC8  48 01 3F 7D */	bl sAdo_OngenPos
/* 80619FCC  3C 80 80 65 */	lis r4, lit_399@ha /* 0x8064C9A0@ha */
/* 80619FD0  3C 60 80 65 */	lis r3, lit_434@ha /* 0x8064C9A4@ha */
/* 80619FD4  C3 E4 C9 A0 */	lfs f31, lit_399@l(r4)  /* 0x8064C9A0@l */
/* 80619FD8  3B C0 00 FF */	li r30, 0xff
/* 80619FDC  C3 C3 C9 A4 */	lfs f30, lit_434@l(r3)  /* 0x8064C9A4@l */
/* 80619FE0  3B A0 00 64 */	li r29, 0x64
/* 80619FE4  48 00 00 B8 */	b lbl_8061A09C
lbl_80619FE8:
/* 80619FE8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80619FEC  A8 1A 00 00 */	lha r0, 0(r26)
/* 80619FF0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80619FF4  3C E0 80 65 */	lis r7, lit_399@ha /* 0x8064C9A0@ha */
/* 80619FF8  3F 23 00 02 */	addis r25, r3, 2
/* 80619FFC  20 00 00 0A */	subfic r0, r0, 0xa
/* 8061A000  80 79 60 9C */	lwz r3, 0x609c(r25)
/* 8061A004  3C A0 80 65 */	lis r5, lit_435@ha /* 0x8064C9A8@ha */
/* 8061A008  39 07 C9 A0 */	addi r8, r7, lit_399@l /* 0x8064C9A0@l */
/* 8061A00C  3C C0 80 65 */	lis r6, lit_434@ha /* 0x8064C9A4@ha */
/* 8061A010  3C 80 80 65 */	lis r4, lit_386@ha /* 0x8064C97C@ha */
/* 8061A014  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061A018  38 E6 C9 A4 */	addi r7, r6, lit_434@l /* 0x8064C9A4@l */
/* 8061A01C  7C 1E 07 34 */	extsh r30, r0
/* 8061A020  38 C4 C9 7C */	addi r6, r4, lit_386@l /* 0x8064C97C@l */
/* 8061A024  C0 25 C9 A8 */	lfs f1, lit_435@l(r5)  /* 0x8064C9A8@l */
/* 8061A028  7F C3 F3 78 */	mr r3, r30
/* 8061A02C  C3 E8 00 00 */	lfs f31, 0(r8)
/* 8061A030  C3 C7 00 00 */	lfs f30, 0(r7)
/* 8061A034  38 80 00 00 */	li r4, 0
/* 8061A038  38 A0 00 09 */	li r5, 9
/* 8061A03C  C0 46 00 00 */	lfs f2, 0(r6)
/* 8061A040  7D 89 03 A6 */	mtctr r12
/* 8061A044  4E 80 04 21 */	bctrl 
/* 8061A048  FC 00 08 1E */	fctiwz f0, f1
/* 8061A04C  80 79 60 9C */	lwz r3, 0x609c(r25)
/* 8061A050  3C A0 80 65 */	lis r5, lit_436@ha /* 0x8064C9AC@ha */
/* 8061A054  3C 80 80 65 */	lis r4, lit_386@ha /* 0x8064C97C@ha */
/* 8061A058  38 C5 C9 AC */	addi r6, r5, lit_436@l /* 0x8064C9AC@l */
/* 8061A05C  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061A060  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8061A064  38 A4 C9 7C */	addi r5, r4, lit_386@l /* 0x8064C97C@l */
/* 8061A068  7F C3 F3 78 */	mr r3, r30
/* 8061A06C  C0 26 00 00 */	lfs f1, 0(r6)
/* 8061A070  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8061A074  38 80 00 00 */	li r4, 0
/* 8061A078  C0 45 00 00 */	lfs f2, 0(r5)
/* 8061A07C  38 A0 00 09 */	li r5, 9
/* 8061A080  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8061A084  7D 89 03 A6 */	mtctr r12
/* 8061A088  4E 80 04 21 */	bctrl 
/* 8061A08C  FC 00 08 1E */	fctiwz f0, f1
/* 8061A090  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8061A094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061A098  54 1D 06 3E */	clrlwi r29, r0, 0x18
lbl_8061A09C:
/* 8061A09C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8061A0A0  4B DC B0 B9 */	bl _texture_z_light_fog_prim_xlu
/* 8061A0A4  3C 60 80 65 */	lis r3, lit_437@ha /* 0x8064C9B0@ha */
/* 8061A0A8  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 8061A0AC  C0 43 C9 B0 */	lfs f2, lit_437@l(r3)  /* 0x8064C9B0@l */
/* 8061A0B0  38 60 00 00 */	li r3, 0
/* 8061A0B4  83 9B 00 00 */	lwz r28, 0(r27)
/* 8061A0B8  EC 42 00 2A */	fadds f2, f2, f0
/* 8061A0BC  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 8061A0C0  C0 7A 00 18 */	lfs f3, 0x18(r26)
/* 8061A0C4  4B DF 22 3D */	bl Matrix_translate
/* 8061A0C8  38 7B 20 4C */	addi r3, r27, 0x204c
/* 8061A0CC  38 80 00 01 */	li r4, 1
/* 8061A0D0  4B DF 21 C9 */	bl Matrix_mult
/* 8061A0D4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061A0D8  3C C0 43 30 */	lis r6, 0x4330
/* 8061A0DC  81 23 61 38 */	lwz r9, debug_mode@l(r3)  /* 0x81166138@l */
/* 8061A0E0  3C 80 80 65 */	lis r4, lit_444@ha /* 0x8064C9C4@ha */
/* 8061A0E4  39 04 C9 C4 */	addi r8, r4, lit_444@l /* 0x8064C9C4@l */
/* 8061A0E8  3C 60 80 65 */	lis r3, lit_438@ha /* 0x8064C9B4@ha */
/* 8061A0EC  A8 E9 19 04 */	lha r7, 0x1904(r9)
/* 8061A0F0  38 83 C9 B4 */	addi r4, r3, lit_438@l /* 0x8064C9B4@l */
/* 8061A0F4  A8 A9 19 06 */	lha r5, 0x1906(r9)
/* 8061A0F8  38 60 00 01 */	li r3, 1
/* 8061A0FC  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 8061A100  A8 09 19 08 */	lha r0, 0x1908(r9)
/* 8061A104  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8061A108  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8061A10C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8061A110  C8 A8 00 00 */	lfd f5, 0(r8)
/* 8061A114  90 E1 00 24 */	stw r7, 0x24(r1)
/* 8061A118  C0 24 00 00 */	lfs f1, 0(r4)
/* 8061A11C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8061A120  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8061A124  EC 80 28 28 */	fsubs f4, f0, f5
/* 8061A128  C0 1A 00 48 */	lfs f0, 0x48(r26)
/* 8061A12C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8061A130  EC 61 00 2A */	fadds f3, f1, f0
/* 8061A134  C0 DA 00 40 */	lfs f6, 0x40(r26)
/* 8061A138  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8061A13C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8061A140  EC 26 20 2A */	fadds f1, f6, f4
/* 8061A144  EC 02 28 28 */	fsubs f0, f2, f5
/* 8061A148  C0 5A 00 44 */	lfs f2, 0x44(r26)
/* 8061A14C  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8061A150  EC 42 00 2A */	fadds f2, f2, f0
/* 8061A154  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8061A158  EC 00 28 28 */	fsubs f0, f0, f5
/* 8061A15C  EC 63 00 2A */	fadds f3, f3, f0
/* 8061A160  4B DF 21 A1 */	bl Matrix_translate
/* 8061A164  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061A168  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8061A16C  80 63 00 00 */	lwz r3, 0(r3)
/* 8061A170  A8 03 18 D4 */	lha r0, 0x18d4(r3)
/* 8061A174  2C 00 00 00 */	cmpwi r0, 0
/* 8061A178  41 82 00 44 */	beq lbl_8061A1BC
/* 8061A17C  A8 1A 00 4C */	lha r0, 0x4c(r26)
/* 8061A180  38 80 00 01 */	li r4, 1
/* 8061A184  7C 00 00 D0 */	neg r0, r0
/* 8061A188  7C 03 07 34 */	extsh r3, r0
/* 8061A18C  4B DF 26 65 */	bl Matrix_RotateZ
/* 8061A190  3C 60 80 65 */	lis r3, lit_439@ha /* 0x8064C9B8@ha */
/* 8061A194  FC 40 F8 90 */	fmr f2, f31
/* 8061A198  C0 03 C9 B8 */	lfs f0, lit_439@l(r3)  /* 0x8064C9B8@l */
/* 8061A19C  FC 60 F8 90 */	fmr f3, f31
/* 8061A1A0  38 60 00 01 */	li r3, 1
/* 8061A1A4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8061A1A8  4B DF 22 45 */	bl Matrix_scale
/* 8061A1AC  A8 7A 00 4C */	lha r3, 0x4c(r26)
/* 8061A1B0  38 80 00 01 */	li r4, 1
/* 8061A1B4  4B DF 26 3D */	bl Matrix_RotateZ
/* 8061A1B8  48 00 00 1C */	b lbl_8061A1D4
lbl_8061A1BC:
/* 8061A1BC  3C 80 80 65 */	lis r4, lit_399@ha /* 0x8064C9A0@ha */
/* 8061A1C0  38 60 00 01 */	li r3, 1
/* 8061A1C4  C0 24 C9 A0 */	lfs f1, lit_399@l(r4)  /* 0x8064C9A0@l */
/* 8061A1C8  FC 40 08 90 */	fmr f2, f1
/* 8061A1CC  FC 60 08 90 */	fmr f3, f1
/* 8061A1D0  4B DF 22 1D */	bl Matrix_scale
lbl_8061A1D4:
/* 8061A1D4  3C 80 80 65 */	lis r4, lit_440@ha /* 0x8064C9BC@ha */
/* 8061A1D8  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 8061A1DC  C0 24 C9 BC */	lfs f1, lit_440@l(r4)  /* 0x8064C9BC@l */
/* 8061A1E0  3C 60 80 65 */	lis r3, lit_392@ha /* 0x8064C984@ha */
/* 8061A1E4  38 83 C9 84 */	addi r4, r3, lit_392@l /* 0x8064C984@l */
/* 8061A1E8  C0 5A 00 20 */	lfs f2, 0x20(r26)
/* 8061A1EC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8061A1F0  C0 64 00 00 */	lfs f3, 0(r4)
/* 8061A1F4  38 60 00 01 */	li r3, 1
/* 8061A1F8  4B DF 21 F5 */	bl Matrix_scale
/* 8061A1FC  83 3C 02 E0 */	lwz r25, 0x2e0(r28)
/* 8061A200  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061A204  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8061A208  38 79 00 08 */	addi r3, r25, 8
/* 8061A20C  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8061A210  90 19 00 00 */	stw r0, 0(r25)
/* 8061A214  80 7B 00 00 */	lwz r3, 0(r27)
/* 8061A218  4B DF 31 BD */	bl _Matrix_to_Mtx_new
/* 8061A21C  90 79 00 04 */	stw r3, 4(r25)
/* 8061A220  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 8061A224  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8061A228  3C 80 64 65 */	lis r4, 0x6465 /* 0x6464FFFF@ha */
/* 8061A22C  81 1C 02 E0 */	lwz r8, 0x2e0(r28)
/* 8061A230  64 07 28 1E */	oris r7, r0, 0x281e
/* 8061A234  3C 60 80 CB */	lis r3, ef_doyon01_00_modelT@ha /* 0x80CB22A0@ha */
/* 8061A238  38 05 00 FF */	addi r0, r5, 0x00FF /* 0xFA0000FF@l */
/* 8061A23C  38 A8 00 08 */	addi r5, r8, 8
/* 8061A240  60 E7 28 00 */	ori r7, r7, 0x2800
/* 8061A244  90 BC 02 E0 */	stw r5, 0x2e0(r28)
/* 8061A248  3C C0 FB 00 */	lis r6, 0xfb00
/* 8061A24C  38 A4 FF FF */	addi r5, r4, 0xFFFF /* 0x6464FFFF@l */
/* 8061A250  3C 80 DE 00 */	lis r4, 0xde00
/* 8061A254  90 08 00 00 */	stw r0, 0(r8)
/* 8061A258  38 03 22 A0 */	addi r0, r3, ef_doyon01_00_modelT@l /* 0x80CB22A0@l */
/* 8061A25C  38 60 00 00 */	li r3, 0
/* 8061A260  90 E8 00 04 */	stw r7, 4(r8)
/* 8061A264  81 1C 02 E0 */	lwz r8, 0x2e0(r28)
/* 8061A268  38 E8 00 08 */	addi r7, r8, 8
/* 8061A26C  90 FC 02 E0 */	stw r7, 0x2e0(r28)
/* 8061A270  90 C8 00 00 */	stw r6, 0(r8)
/* 8061A274  90 A8 00 04 */	stw r5, 4(r8)
/* 8061A278  80 DC 02 E0 */	lwz r6, 0x2e0(r28)
/* 8061A27C  38 A6 00 08 */	addi r5, r6, 8
/* 8061A280  90 BC 02 E0 */	stw r5, 0x2e0(r28)
/* 8061A284  90 86 00 00 */	stw r4, 0(r6)
/* 8061A288  90 06 00 04 */	stw r0, 4(r6)
/* 8061A28C  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 8061A290  C0 5A 00 14 */	lfs f2, 0x14(r26)
/* 8061A294  C0 7A 00 18 */	lfs f3, 0x18(r26)
/* 8061A298  4B DF 20 69 */	bl Matrix_translate
/* 8061A29C  38 7B 20 4C */	addi r3, r27, 0x204c
/* 8061A2A0  38 80 00 01 */	li r4, 1
/* 8061A2A4  4B DF 1F F5 */	bl Matrix_mult
/* 8061A2A8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061A2AC  3C A0 43 30 */	lis r5, 0x4330
/* 8061A2B0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8061A2B4  3C 60 80 65 */	lis r3, lit_444@ha /* 0x8064C9C4@ha */
/* 8061A2B8  81 04 00 00 */	lwz r8, 0(r4)
/* 8061A2BC  38 E3 C9 C4 */	addi r7, r3, lit_444@l /* 0x8064C9C4@l */
/* 8061A2C0  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8061A2C4  38 60 00 01 */	li r3, 1
/* 8061A2C8  A8 C8 19 04 */	lha r6, 0x1904(r8)
/* 8061A2CC  A8 88 19 06 */	lha r4, 0x1906(r8)
/* 8061A2D0  A8 08 19 08 */	lha r0, 0x1908(r8)
/* 8061A2D4  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 8061A2D8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8061A2DC  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8061A2E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8061A2E4  C8 A7 00 00 */	lfd f5, 0(r7)
/* 8061A2E8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8061A2EC  90 81 00 24 */	stw r4, 0x24(r1)
/* 8061A2F0  EC 20 28 28 */	fsubs f1, f0, f5
/* 8061A2F4  C0 5A 00 40 */	lfs f2, 0x40(r26)
/* 8061A2F8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8061A2FC  C0 9A 00 44 */	lfs f4, 0x44(r26)
/* 8061A300  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8061A304  EC 22 08 2A */	fadds f1, f2, f1
/* 8061A308  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061A30C  EC 40 28 28 */	fsubs f2, f0, f5
/* 8061A310  C0 7A 00 48 */	lfs f3, 0x48(r26)
/* 8061A314  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8061A318  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8061A31C  EC 44 10 2A */	fadds f2, f4, f2
/* 8061A320  EC 00 28 28 */	fsubs f0, f0, f5
/* 8061A324  EC 63 00 2A */	fadds f3, f3, f0
/* 8061A328  4B DF 1F D9 */	bl Matrix_translate
/* 8061A32C  3C 80 80 65 */	lis r4, lit_441@ha /* 0x8064C9C0@ha */
/* 8061A330  3C 60 80 65 */	lis r3, lit_399@ha /* 0x8064C9A0@ha */
/* 8061A334  C0 63 C9 A0 */	lfs f3, lit_399@l(r3)  /* 0x8064C9A0@l */
/* 8061A338  FC 40 F0 90 */	fmr f2, f30
/* 8061A33C  C0 24 C9 C0 */	lfs f1, lit_441@l(r4)  /* 0x8064C9C0@l */
/* 8061A340  38 60 00 01 */	li r3, 1
/* 8061A344  4B DF 20 A9 */	bl Matrix_scale
/* 8061A348  83 5C 02 E0 */	lwz r26, 0x2e0(r28)
/* 8061A34C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061A350  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8061A354  38 7A 00 08 */	addi r3, r26, 8
/* 8061A358  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8061A35C  90 1A 00 00 */	stw r0, 0(r26)
/* 8061A360  80 7B 00 00 */	lwz r3, 0(r27)
/* 8061A364  4B DF 30 71 */	bl _Matrix_to_Mtx_new
/* 8061A368  90 7A 00 04 */	stw r3, 4(r26)
/* 8061A36C  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 8061A370  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8061A374  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060024@ha */
/* 8061A378  81 1C 02 E0 */	lwz r8, 0x2e0(r28)
/* 8061A37C  64 06 00 FF */	oris r6, r0, 0xff
/* 8061A380  3C 60 80 CC */	lis r3, ef_otikomi_us2_model@ha /* 0x80CBB620@ha */
/* 8061A384  38 E5 00 FF */	addi r7, r5, 0x00FF /* 0xFA0000FF@l */
/* 8061A388  38 08 00 08 */	addi r0, r8, 8
/* 8061A38C  60 C6 FF 00 */	ori r6, r6, 0xff00
/* 8061A390  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 8061A394  38 A4 00 24 */	addi r5, r4, 0x0024 /* 0xDB060024@l */
/* 8061A398  3C 80 DE 00 */	lis r4, 0xde00
/* 8061A39C  38 03 B6 20 */	addi r0, r3, ef_otikomi_us2_model@l /* 0x80CBB620@l */
/* 8061A3A0  90 E8 00 00 */	stw r7, 0(r8)
/* 8061A3A4  90 C8 00 04 */	stw r6, 4(r8)
/* 8061A3A8  80 DC 02 E0 */	lwz r6, 0x2e0(r28)
/* 8061A3AC  38 66 00 08 */	addi r3, r6, 8
/* 8061A3B0  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8061A3B4  90 A6 00 00 */	stw r5, 0(r6)
/* 8061A3B8  93 E6 00 04 */	stw r31, 4(r6)
/* 8061A3BC  80 BC 02 E0 */	lwz r5, 0x2e0(r28)
/* 8061A3C0  38 65 00 08 */	addi r3, r5, 8
/* 8061A3C4  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8061A3C8  90 85 00 00 */	stw r4, 0(r5)
/* 8061A3CC  90 05 00 04 */	stw r0, 4(r5)
/* 8061A3D0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8061A3D4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8061A3D8  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8061A3DC  39 61 00 50 */	addi r11, r1, 0x50
/* 8061A3E0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8061A3E4  4B A8 0B 2D */	bl func_8009AF10
/* 8061A3E8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8061A3EC  7C 08 03 A6 */	mtlr r0
/* 8061A3F0  38 21 00 70 */	addi r1, r1, 0x70
/* 8061A3F4  4E 80 00 20 */	blr 
