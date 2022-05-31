lbl_8061DC6C:
/* 8061DC6C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8061DC70  7C 08 02 A6 */	mflr r0
/* 8061DC74  90 01 00 94 */	stw r0, 0x94(r1)
/* 8061DC78  39 61 00 90 */	addi r11, r1, 0x90
/* 8061DC7C  4B A7 D2 45 */	bl func_8009AEC0
/* 8061DC80  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 8061DC84  7C 78 1B 78 */	mr r24, r3
/* 8061DC88  38 6A 85 38 */	addi r3, r10, common_data@l /* 0x81138538@l */
/* 8061DC8C  7C 99 23 78 */	mr r25, r4
/* 8061DC90  3F E3 00 02 */	addis r31, r3, 2
/* 8061DC94  7C BA 2B 78 */	mr r26, r5
/* 8061DC98  80 1F 60 9C */	lwz r0, 0x609c(r31)
/* 8061DC9C  7C DB 33 78 */	mr r27, r6
/* 8061DCA0  7C FC 3B 78 */	mr r28, r7
/* 8061DCA4  7D 1D 43 78 */	mr r29, r8
/* 8061DCA8  28 00 00 00 */	cmplwi r0, 0
/* 8061DCAC  7D 3E 4B 78 */	mr r30, r9
/* 8061DCB0  41 82 05 2C */	beq lbl_8061E1DC
/* 8061DCB4  4B D9 CC E5 */	bl mEnv_NowWeather
/* 8061DCB8  3C A0 80 65 */	lis r5, data_8064CBCC@ha /* 0x8064CBCC@ha */
/* 8061DCBC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8061DCC0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8061DCC4  C0 38 00 04 */	lfs f1, 4(r24)
/* 8061DCC8  C0 05 CB CC */	lfs f0, data_8064CBCC@l(r5)  /* 0x8064CBCC@l */
/* 8061DCCC  3C 84 00 02 */	addis r4, r4, 2
/* 8061DCD0  80 04 61 10 */	lwz r0, 0x6110(r4)
/* 8061DCD4  7C 63 07 34 */	extsh r3, r3
/* 8061DCD8  EC 01 00 2A */	fadds f0, f1, f0
/* 8061DCDC  2C 00 00 03 */	cmpwi r0, 3
/* 8061DCE0  D0 18 00 04 */	stfs f0, 4(r24)
/* 8061DCE4  41 82 00 08 */	beq lbl_8061DCEC
/* 8061DCE8  48 00 02 E4 */	b lbl_8061DFCC
lbl_8061DCEC:
/* 8061DCEC  7F A0 07 34 */	extsh r0, r29
/* 8061DCF0  2C 00 00 09 */	cmpwi r0, 9
/* 8061DCF4  41 82 04 E8 */	beq lbl_8061E1DC
/* 8061DCF8  40 80 00 18 */	bge lbl_8061DD10
/* 8061DCFC  2C 00 00 03 */	cmpwi r0, 3
/* 8061DD00  40 80 01 8C */	bge lbl_8061DE8C
/* 8061DD04  2C 00 00 00 */	cmpwi r0, 0
/* 8061DD08  40 80 00 14 */	bge lbl_8061DD1C
/* 8061DD0C  48 00 01 80 */	b lbl_8061DE8C
lbl_8061DD10:
/* 8061DD10  2C 00 00 16 */	cmpwi r0, 0x16
/* 8061DD14  41 82 00 C0 */	beq lbl_8061DDD4
/* 8061DD18  48 00 01 74 */	b lbl_8061DE8C
lbl_8061DD1C:
/* 8061DD1C  7F C3 07 34 */	extsh r3, r30
/* 8061DD20  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 8061DD24  40 82 04 B8 */	bne lbl_8061E1DC
/* 8061DD28  2C 03 00 0E */	cmpwi r3, 0xe
/* 8061DD2C  40 80 04 B0 */	bge lbl_8061E1DC
/* 8061DD30  7F 43 D3 78 */	mr r3, r26
/* 8061DD34  4B D9 CD BD */	bl sin_s
/* 8061DD38  3C 60 80 65 */	lis r3, lit_445@ha /* 0x8064CBD0@ha */
/* 8061DD3C  C0 18 00 00 */	lfs f0, 0(r24)
/* 8061DD40  38 83 CB D0 */	addi r4, r3, lit_445@l /* 0x8064CBD0@l */
/* 8061DD44  7F 43 D3 78 */	mr r3, r26
/* 8061DD48  C0 44 00 00 */	lfs f2, 0(r4)
/* 8061DD4C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061DD50  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061DD54  D0 18 00 00 */	stfs f0, 0(r24)
/* 8061DD58  4B D9 CD 45 */	bl cos_s
/* 8061DD5C  3C 80 80 65 */	lis r4, lit_445@ha /* 0x8064CBD0@ha */
/* 8061DD60  3C 60 80 65 */	lis r3, lit_446@ha /* 0x8064CBD4@ha */
/* 8061DD64  C0 64 CB D0 */	lfs f3, lit_445@l(r4)  /* 0x8064CBD0@l */
/* 8061DD68  7F 46 D3 78 */	mr r6, r26
/* 8061DD6C  C0 03 CB D4 */	lfs f0, lit_446@l(r3)  /* 0x8064CBD4@l */
/* 8061DD70  7F 25 CB 78 */	mr r5, r25
/* 8061DD74  EC 23 00 72 */	fmuls f1, f3, f1
/* 8061DD78  C0 58 00 08 */	lfs f2, 8(r24)
/* 8061DD7C  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061DD80  7F 67 DB 78 */	mr r7, r27
/* 8061DD84  7F 88 E3 78 */	mr r8, r28
/* 8061DD88  7F A9 EB 78 */	mr r9, r29
/* 8061DD8C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8061DD90  38 81 00 64 */	addi r4, r1, 0x64
/* 8061DD94  38 60 00 31 */	li r3, 0x31
/* 8061DD98  39 40 00 00 */	li r10, 0
/* 8061DD9C  D0 38 00 08 */	stfs f1, 8(r24)
/* 8061DDA0  C0 38 00 04 */	lfs f1, 4(r24)
/* 8061DDA4  EC 01 00 2A */	fadds f0, f1, f0
/* 8061DDA8  D0 18 00 04 */	stfs f0, 4(r24)
/* 8061DDAC  83 58 00 00 */	lwz r26, 0(r24)
/* 8061DDB0  81 98 00 04 */	lwz r12, 4(r24)
/* 8061DDB4  80 18 00 08 */	lwz r0, 8(r24)
/* 8061DDB8  93 41 00 64 */	stw r26, 0x64(r1)
/* 8061DDBC  91 81 00 68 */	stw r12, 0x68(r1)
/* 8061DDC0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8061DDC4  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061DDC8  7D 89 03 A6 */	mtctr r12
/* 8061DDCC  4E 80 04 21 */	bctrl 
/* 8061DDD0  48 00 04 0C */	b lbl_8061E1DC
lbl_8061DDD4:
/* 8061DDD4  7F C3 07 34 */	extsh r3, r30
/* 8061DDD8  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 8061DDDC  40 82 04 00 */	bne lbl_8061E1DC
/* 8061DDE0  2C 03 00 0A */	cmpwi r3, 0xa
/* 8061DDE4  40 80 03 F8 */	bge lbl_8061E1DC
/* 8061DDE8  7F 43 D3 78 */	mr r3, r26
/* 8061DDEC  4B D9 CD 05 */	bl sin_s
/* 8061DDF0  3C 60 80 65 */	lis r3, lit_447@ha /* 0x8064CBD8@ha */
/* 8061DDF4  C0 18 00 00 */	lfs f0, 0(r24)
/* 8061DDF8  38 83 CB D8 */	addi r4, r3, lit_447@l /* 0x8064CBD8@l */
/* 8061DDFC  7F 43 D3 78 */	mr r3, r26
/* 8061DE00  C0 44 00 00 */	lfs f2, 0(r4)
/* 8061DE04  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061DE08  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061DE0C  D0 18 00 00 */	stfs f0, 0(r24)
/* 8061DE10  4B D9 CC 8D */	bl cos_s
/* 8061DE14  3C 80 80 65 */	lis r4, lit_447@ha /* 0x8064CBD8@ha */
/* 8061DE18  3C 60 80 65 */	lis r3, lit_448@ha /* 0x8064CBDC@ha */
/* 8061DE1C  C0 64 CB D8 */	lfs f3, lit_447@l(r4)  /* 0x8064CBD8@l */
/* 8061DE20  7F 46 D3 78 */	mr r6, r26
/* 8061DE24  C0 03 CB DC */	lfs f0, lit_448@l(r3)  /* 0x8064CBDC@l */
/* 8061DE28  7F 25 CB 78 */	mr r5, r25
/* 8061DE2C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8061DE30  C0 58 00 08 */	lfs f2, 8(r24)
/* 8061DE34  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061DE38  7F 67 DB 78 */	mr r7, r27
/* 8061DE3C  7F 88 E3 78 */	mr r8, r28
/* 8061DE40  38 81 00 58 */	addi r4, r1, 0x58
/* 8061DE44  EC 22 08 28 */	fsubs f1, f2, f1
/* 8061DE48  38 60 00 4C */	li r3, 0x4c
/* 8061DE4C  39 20 00 02 */	li r9, 2
/* 8061DE50  39 40 00 00 */	li r10, 0
/* 8061DE54  D0 38 00 08 */	stfs f1, 8(r24)
/* 8061DE58  C0 38 00 04 */	lfs f1, 4(r24)
/* 8061DE5C  EC 01 00 2A */	fadds f0, f1, f0
/* 8061DE60  D0 18 00 04 */	stfs f0, 4(r24)
/* 8061DE64  83 58 00 00 */	lwz r26, 0(r24)
/* 8061DE68  81 98 00 04 */	lwz r12, 4(r24)
/* 8061DE6C  80 18 00 08 */	lwz r0, 8(r24)
/* 8061DE70  93 41 00 58 */	stw r26, 0x58(r1)
/* 8061DE74  91 81 00 5C */	stw r12, 0x5c(r1)
/* 8061DE78  90 01 00 60 */	stw r0, 0x60(r1)
/* 8061DE7C  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061DE80  7D 89 03 A6 */	mtctr r12
/* 8061DE84  4E 80 04 21 */	bctrl 
/* 8061DE88  48 00 03 54 */	b lbl_8061E1DC
lbl_8061DE8C:
/* 8061DE8C  2C 03 00 01 */	cmpwi r3, 1
/* 8061DE90  41 82 00 10 */	beq lbl_8061DEA0
/* 8061DE94  7F A0 07 34 */	extsh r0, r29
/* 8061DE98  2C 00 00 0B */	cmpwi r0, 0xb
/* 8061DE9C  40 82 00 BC */	bne lbl_8061DF58
lbl_8061DEA0:
/* 8061DEA0  7F C3 07 34 */	extsh r3, r30
/* 8061DEA4  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 8061DEA8  40 82 03 34 */	bne lbl_8061E1DC
/* 8061DEAC  2C 03 00 0A */	cmpwi r3, 0xa
/* 8061DEB0  40 80 03 2C */	bge lbl_8061E1DC
/* 8061DEB4  7F 43 D3 78 */	mr r3, r26
/* 8061DEB8  4B D9 CC 39 */	bl sin_s
/* 8061DEBC  3C 60 80 65 */	lis r3, lit_447@ha /* 0x8064CBD8@ha */
/* 8061DEC0  C0 18 00 00 */	lfs f0, 0(r24)
/* 8061DEC4  38 83 CB D8 */	addi r4, r3, lit_447@l /* 0x8064CBD8@l */
/* 8061DEC8  7F 43 D3 78 */	mr r3, r26
/* 8061DECC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8061DED0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061DED4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061DED8  D0 18 00 00 */	stfs f0, 0(r24)
/* 8061DEDC  4B D9 CB C1 */	bl cos_s
/* 8061DEE0  3C 80 80 65 */	lis r4, lit_447@ha /* 0x8064CBD8@ha */
/* 8061DEE4  3C 60 80 65 */	lis r3, lit_448@ha /* 0x8064CBDC@ha */
/* 8061DEE8  C0 64 CB D8 */	lfs f3, lit_447@l(r4)  /* 0x8064CBD8@l */
/* 8061DEEC  7F 46 D3 78 */	mr r6, r26
/* 8061DEF0  C0 03 CB DC */	lfs f0, lit_448@l(r3)  /* 0x8064CBDC@l */
/* 8061DEF4  7F 25 CB 78 */	mr r5, r25
/* 8061DEF8  EC 23 00 72 */	fmuls f1, f3, f1
/* 8061DEFC  C0 58 00 08 */	lfs f2, 8(r24)
/* 8061DF00  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061DF04  7F 67 DB 78 */	mr r7, r27
/* 8061DF08  7F 88 E3 78 */	mr r8, r28
/* 8061DF0C  7F A9 EB 78 */	mr r9, r29
/* 8061DF10  EC 22 08 28 */	fsubs f1, f2, f1
/* 8061DF14  38 81 00 4C */	addi r4, r1, 0x4c
/* 8061DF18  38 60 00 05 */	li r3, 5
/* 8061DF1C  39 40 00 00 */	li r10, 0
/* 8061DF20  D0 38 00 08 */	stfs f1, 8(r24)
/* 8061DF24  C0 38 00 04 */	lfs f1, 4(r24)
/* 8061DF28  EC 01 00 2A */	fadds f0, f1, f0
/* 8061DF2C  D0 18 00 04 */	stfs f0, 4(r24)
/* 8061DF30  83 58 00 00 */	lwz r26, 0(r24)
/* 8061DF34  81 98 00 04 */	lwz r12, 4(r24)
/* 8061DF38  80 18 00 08 */	lwz r0, 8(r24)
/* 8061DF3C  93 41 00 4C */	stw r26, 0x4c(r1)
/* 8061DF40  91 81 00 50 */	stw r12, 0x50(r1)
/* 8061DF44  90 01 00 54 */	stw r0, 0x54(r1)
/* 8061DF48  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061DF4C  7D 89 03 A6 */	mtctr r12
/* 8061DF50  4E 80 04 21 */	bctrl 
/* 8061DF54  48 00 02 88 */	b lbl_8061E1DC
lbl_8061DF58:
/* 8061DF58  7F C3 07 34 */	extsh r3, r30
/* 8061DF5C  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 8061DF60  40 82 02 7C */	bne lbl_8061E1DC
/* 8061DF64  2C 03 00 0A */	cmpwi r3, 0xa
/* 8061DF68  40 80 02 74 */	bge lbl_8061E1DC
/* 8061DF6C  3C 60 80 65 */	lis r3, lit_449@ha /* 0x8064CBE0@ha */
/* 8061DF70  C0 38 00 04 */	lfs f1, 4(r24)
/* 8061DF74  C0 03 CB E0 */	lfs f0, lit_449@l(r3)  /* 0x8064CBE0@l */
/* 8061DF78  7F 46 D3 78 */	mr r6, r26
/* 8061DF7C  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061DF80  7F 25 CB 78 */	mr r5, r25
/* 8061DF84  EC 01 00 2A */	fadds f0, f1, f0
/* 8061DF88  7F 67 DB 78 */	mr r7, r27
/* 8061DF8C  7F 88 E3 78 */	mr r8, r28
/* 8061DF90  7F A9 EB 78 */	mr r9, r29
/* 8061DF94  38 81 00 40 */	addi r4, r1, 0x40
/* 8061DF98  38 60 00 01 */	li r3, 1
/* 8061DF9C  D0 18 00 04 */	stfs f0, 4(r24)
/* 8061DFA0  39 40 00 08 */	li r10, 8
/* 8061DFA4  83 58 00 00 */	lwz r26, 0(r24)
/* 8061DFA8  81 98 00 04 */	lwz r12, 4(r24)
/* 8061DFAC  80 18 00 08 */	lwz r0, 8(r24)
/* 8061DFB0  93 41 00 40 */	stw r26, 0x40(r1)
/* 8061DFB4  91 81 00 44 */	stw r12, 0x44(r1)
/* 8061DFB8  90 01 00 48 */	stw r0, 0x48(r1)
/* 8061DFBC  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061DFC0  7D 89 03 A6 */	mtctr r12
/* 8061DFC4  4E 80 04 21 */	bctrl 
/* 8061DFC8  48 00 02 14 */	b lbl_8061E1DC
lbl_8061DFCC:
/* 8061DFCC  7F A0 07 34 */	extsh r0, r29
/* 8061DFD0  2C 00 00 16 */	cmpwi r0, 0x16
/* 8061DFD4  41 82 00 14 */	beq lbl_8061DFE8
/* 8061DFD8  40 80 00 C8 */	bge lbl_8061E0A0
/* 8061DFDC  2C 00 00 09 */	cmpwi r0, 9
/* 8061DFE0  41 82 01 FC */	beq lbl_8061E1DC
/* 8061DFE4  48 00 00 BC */	b lbl_8061E0A0
lbl_8061DFE8:
/* 8061DFE8  7F C3 07 34 */	extsh r3, r30
/* 8061DFEC  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 8061DFF0  40 82 01 EC */	bne lbl_8061E1DC
/* 8061DFF4  2C 03 00 0A */	cmpwi r3, 0xa
/* 8061DFF8  40 80 01 E4 */	bge lbl_8061E1DC
/* 8061DFFC  7F 43 D3 78 */	mr r3, r26
/* 8061E000  4B D9 CA F1 */	bl sin_s
/* 8061E004  3C 60 80 65 */	lis r3, lit_447@ha /* 0x8064CBD8@ha */
/* 8061E008  C0 18 00 00 */	lfs f0, 0(r24)
/* 8061E00C  38 83 CB D8 */	addi r4, r3, lit_447@l /* 0x8064CBD8@l */
/* 8061E010  7F 43 D3 78 */	mr r3, r26
/* 8061E014  C0 44 00 00 */	lfs f2, 0(r4)
/* 8061E018  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061E01C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061E020  D0 18 00 00 */	stfs f0, 0(r24)
/* 8061E024  4B D9 CA 79 */	bl cos_s
/* 8061E028  3C 80 80 65 */	lis r4, lit_447@ha /* 0x8064CBD8@ha */
/* 8061E02C  3C 60 80 65 */	lis r3, lit_448@ha /* 0x8064CBDC@ha */
/* 8061E030  C0 64 CB D8 */	lfs f3, lit_447@l(r4)  /* 0x8064CBD8@l */
/* 8061E034  7F 46 D3 78 */	mr r6, r26
/* 8061E038  C0 03 CB DC */	lfs f0, lit_448@l(r3)  /* 0x8064CBDC@l */
/* 8061E03C  7F 25 CB 78 */	mr r5, r25
/* 8061E040  EC 23 00 72 */	fmuls f1, f3, f1
/* 8061E044  C0 58 00 08 */	lfs f2, 8(r24)
/* 8061E048  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061E04C  7F 67 DB 78 */	mr r7, r27
/* 8061E050  7F 88 E3 78 */	mr r8, r28
/* 8061E054  38 81 00 34 */	addi r4, r1, 0x34
/* 8061E058  EC 22 08 28 */	fsubs f1, f2, f1
/* 8061E05C  38 60 00 4C */	li r3, 0x4c
/* 8061E060  39 20 00 02 */	li r9, 2
/* 8061E064  39 40 00 00 */	li r10, 0
/* 8061E068  D0 38 00 08 */	stfs f1, 8(r24)
/* 8061E06C  C0 38 00 04 */	lfs f1, 4(r24)
/* 8061E070  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E074  D0 18 00 04 */	stfs f0, 4(r24)
/* 8061E078  83 58 00 00 */	lwz r26, 0(r24)
/* 8061E07C  81 98 00 04 */	lwz r12, 4(r24)
/* 8061E080  80 18 00 08 */	lwz r0, 8(r24)
/* 8061E084  93 41 00 34 */	stw r26, 0x34(r1)
/* 8061E088  91 81 00 38 */	stw r12, 0x38(r1)
/* 8061E08C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8061E090  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061E094  7D 89 03 A6 */	mtctr r12
/* 8061E098  4E 80 04 21 */	bctrl 
/* 8061E09C  48 00 01 40 */	b lbl_8061E1DC
lbl_8061E0A0:
/* 8061E0A0  2C 03 00 01 */	cmpwi r3, 1
/* 8061E0A4  41 82 00 10 */	beq lbl_8061E0B4
/* 8061E0A8  7F A0 07 34 */	extsh r0, r29
/* 8061E0AC  2C 00 00 0B */	cmpwi r0, 0xb
/* 8061E0B0  40 82 00 BC */	bne lbl_8061E16C
lbl_8061E0B4:
/* 8061E0B4  7F C3 07 34 */	extsh r3, r30
/* 8061E0B8  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 8061E0BC  40 82 01 20 */	bne lbl_8061E1DC
/* 8061E0C0  2C 03 00 0A */	cmpwi r3, 0xa
/* 8061E0C4  40 80 01 18 */	bge lbl_8061E1DC
/* 8061E0C8  7F 43 D3 78 */	mr r3, r26
/* 8061E0CC  4B D9 CA 25 */	bl sin_s
/* 8061E0D0  3C 60 80 65 */	lis r3, lit_447@ha /* 0x8064CBD8@ha */
/* 8061E0D4  C0 18 00 00 */	lfs f0, 0(r24)
/* 8061E0D8  38 83 CB D8 */	addi r4, r3, lit_447@l /* 0x8064CBD8@l */
/* 8061E0DC  7F 43 D3 78 */	mr r3, r26
/* 8061E0E0  C0 44 00 00 */	lfs f2, 0(r4)
/* 8061E0E4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061E0E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061E0EC  D0 18 00 00 */	stfs f0, 0(r24)
/* 8061E0F0  4B D9 C9 AD */	bl cos_s
/* 8061E0F4  3C 80 80 65 */	lis r4, lit_447@ha /* 0x8064CBD8@ha */
/* 8061E0F8  3C 60 80 65 */	lis r3, lit_448@ha /* 0x8064CBDC@ha */
/* 8061E0FC  C0 64 CB D8 */	lfs f3, lit_447@l(r4)  /* 0x8064CBD8@l */
/* 8061E100  7F 46 D3 78 */	mr r6, r26
/* 8061E104  C0 03 CB DC */	lfs f0, lit_448@l(r3)  /* 0x8064CBDC@l */
/* 8061E108  7F 25 CB 78 */	mr r5, r25
/* 8061E10C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8061E110  C0 58 00 08 */	lfs f2, 8(r24)
/* 8061E114  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061E118  7F 67 DB 78 */	mr r7, r27
/* 8061E11C  7F 88 E3 78 */	mr r8, r28
/* 8061E120  7F A9 EB 78 */	mr r9, r29
/* 8061E124  EC 22 08 28 */	fsubs f1, f2, f1
/* 8061E128  38 81 00 28 */	addi r4, r1, 0x28
/* 8061E12C  38 60 00 05 */	li r3, 5
/* 8061E130  39 40 00 00 */	li r10, 0
/* 8061E134  D0 38 00 08 */	stfs f1, 8(r24)
/* 8061E138  C0 38 00 04 */	lfs f1, 4(r24)
/* 8061E13C  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E140  D0 18 00 04 */	stfs f0, 4(r24)
/* 8061E144  83 58 00 00 */	lwz r26, 0(r24)
/* 8061E148  81 98 00 04 */	lwz r12, 4(r24)
/* 8061E14C  80 18 00 08 */	lwz r0, 8(r24)
/* 8061E150  93 41 00 28 */	stw r26, 0x28(r1)
/* 8061E154  91 81 00 2C */	stw r12, 0x2c(r1)
/* 8061E158  90 01 00 30 */	stw r0, 0x30(r1)
/* 8061E15C  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061E160  7D 89 03 A6 */	mtctr r12
/* 8061E164  4E 80 04 21 */	bctrl 
/* 8061E168  48 00 00 74 */	b lbl_8061E1DC
lbl_8061E16C:
/* 8061E16C  7F C3 07 34 */	extsh r3, r30
/* 8061E170  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 8061E174  40 82 00 68 */	bne lbl_8061E1DC
/* 8061E178  2C 03 00 0A */	cmpwi r3, 0xa
/* 8061E17C  40 80 00 60 */	bge lbl_8061E1DC
/* 8061E180  3C 60 80 65 */	lis r3, lit_449@ha /* 0x8064CBE0@ha */
/* 8061E184  C0 38 00 04 */	lfs f1, 4(r24)
/* 8061E188  C0 03 CB E0 */	lfs f0, lit_449@l(r3)  /* 0x8064CBE0@l */
/* 8061E18C  7F 46 D3 78 */	mr r6, r26
/* 8061E190  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061E194  7F 25 CB 78 */	mr r5, r25
/* 8061E198  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E19C  7F 67 DB 78 */	mr r7, r27
/* 8061E1A0  7F 88 E3 78 */	mr r8, r28
/* 8061E1A4  7F A9 EB 78 */	mr r9, r29
/* 8061E1A8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8061E1AC  38 60 00 01 */	li r3, 1
/* 8061E1B0  D0 18 00 04 */	stfs f0, 4(r24)
/* 8061E1B4  39 40 00 08 */	li r10, 8
/* 8061E1B8  83 58 00 00 */	lwz r26, 0(r24)
/* 8061E1BC  81 98 00 04 */	lwz r12, 4(r24)
/* 8061E1C0  80 18 00 08 */	lwz r0, 8(r24)
/* 8061E1C4  93 41 00 1C */	stw r26, 0x1c(r1)
/* 8061E1C8  91 81 00 20 */	stw r12, 0x20(r1)
/* 8061E1CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061E1D0  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061E1D4  7D 89 03 A6 */	mtctr r12
/* 8061E1D8  4E 80 04 21 */	bctrl 
lbl_8061E1DC:
/* 8061E1DC  80 78 00 00 */	lwz r3, 0(r24)
/* 8061E1E0  38 00 00 00 */	li r0, 0
/* 8061E1E4  80 B8 00 04 */	lwz r5, 4(r24)
/* 8061E1E8  7F 66 DB 78 */	mr r6, r27
/* 8061E1EC  81 78 00 08 */	lwz r11, 8(r24)
/* 8061E1F0  7F 88 E3 78 */	mr r8, r28
/* 8061E1F4  90 61 00 10 */	stw r3, 0x10(r1)
/* 8061E1F8  7F 29 CB 78 */	mr r9, r25
/* 8061E1FC  38 81 00 10 */	addi r4, r1, 0x10
/* 8061E200  38 60 00 37 */	li r3, 0x37
/* 8061E204  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8061E208  38 A0 00 00 */	li r5, 0
/* 8061E20C  38 E0 00 00 */	li r7, 0
/* 8061E210  39 40 00 00 */	li r10, 0
/* 8061E214  91 61 00 18 */	stw r11, 0x18(r1)
/* 8061E218  90 01 00 08 */	stw r0, 8(r1)
/* 8061E21C  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061E220  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8061E224  7D 89 03 A6 */	mtctr r12
/* 8061E228  4E 80 04 21 */	bctrl 
/* 8061E22C  39 61 00 90 */	addi r11, r1, 0x90
/* 8061E230  4B A7 CC DD */	bl func_8009AF0C
/* 8061E234  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8061E238  7C 08 03 A6 */	mtlr r0
/* 8061E23C  38 21 00 90 */	addi r1, r1, 0x90
/* 8061E240  4E 80 00 20 */	blr 
