lbl_8061AF18:
/* 8061AF18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8061AF1C  7C 08 02 A6 */	mflr r0
/* 8061AF20  90 01 00 64 */	stw r0, 0x64(r1)
/* 8061AF24  39 61 00 60 */	addi r11, r1, 0x60
/* 8061AF28  4B A7 FF A1 */	bl func_8009AEC8
/* 8061AF2C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061AF30  7C 9D 23 78 */	mr r29, r4
/* 8061AF34  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 8061AF38  7C 7C 1B 78 */	mr r28, r3
/* 8061AF3C  3F E4 00 02 */	addis r31, r4, 2
/* 8061AF40  38 80 00 10 */	li r4, 0x10
/* 8061AF44  80 DF 60 9C */	lwz r6, 0x609c(r31)
/* 8061AF48  38 A0 00 78 */	li r5, 0x78
/* 8061AF4C  81 86 00 10 */	lwz r12, 0x10(r6)
/* 8061AF50  7D 89 03 A6 */	mtctr r12
/* 8061AF54  4E 80 04 21 */	bctrl 
/* 8061AF58  88 7C 00 0F */	lbz r3, 0xf(r28)
/* 8061AF5C  28 03 00 00 */	cmplwi r3, 0
/* 8061AF60  40 82 01 4C */	bne lbl_8061B0AC
/* 8061AF64  A8 1C 00 06 */	lha r0, 6(r28)
/* 8061AF68  2C 00 00 01 */	cmpwi r0, 1
/* 8061AF6C  41 82 01 40 */	beq lbl_8061B0AC
/* 8061AF70  A8 1C 00 08 */	lha r0, 8(r28)
/* 8061AF74  38 80 00 00 */	li r4, 0
/* 8061AF78  A8 7C 00 00 */	lha r3, 0(r28)
/* 8061AF7C  38 A0 00 10 */	li r5, 0x10
/* 8061AF80  2C 00 00 00 */	cmpwi r0, 0
/* 8061AF84  40 82 00 10 */	bne lbl_8061AF94
/* 8061AF88  3C C0 80 65 */	lis r6, lit_391@ha /* 0x8064CA20@ha */
/* 8061AF8C  C0 26 CA 20 */	lfs f1, lit_391@l(r6)  /* 0x8064CA20@l */
/* 8061AF90  48 00 00 50 */	b lbl_8061AFE0
lbl_8061AF94:
/* 8061AF94  3C C0 81 16 */	lis r6, debug_mode@ha /* 0x81166138@ha */
/* 8061AF98  3C 00 43 30 */	lis r0, 0x4330
/* 8061AF9C  38 E6 61 38 */	addi r7, r6, debug_mode@l /* 0x81166138@l */
/* 8061AFA0  3D 20 80 65 */	lis r9, lit_391@ha /* 0x8064CA20@ha */
/* 8061AFA4  80 E7 00 00 */	lwz r7, 0(r7)
/* 8061AFA8  3C C0 80 65 */	lis r6, lit_394@ha /* 0x8064CA2C@ha */
/* 8061AFAC  3D 00 80 65 */	lis r8, lit_392@ha /* 0x8064CA24@ha */
/* 8061AFB0  90 01 00 38 */	stw r0, 0x38(r1)
/* 8061AFB4  A8 E7 1B 78 */	lha r7, 0x1b78(r7)
/* 8061AFB8  C8 26 CA 2C */	lfd f1, lit_394@l(r6)  /* 0x8064CA2C@l */
/* 8061AFBC  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 8061AFC0  C0 69 CA 20 */	lfs f3, lit_391@l(r9)  /* 0x8064CA20@l */
/* 8061AFC4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8061AFC8  C0 48 CA 24 */	lfs f2, lit_392@l(r8)  /* 0x8064CA24@l */
/* 8061AFCC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8061AFD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061AFD4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8061AFD8  EC 02 00 2A */	fadds f0, f2, f0
/* 8061AFDC  EC 23 00 32 */	fmuls f1, f3, f0
lbl_8061AFE0:
/* 8061AFE0  80 DF 60 9C */	lwz r6, 0x609c(r31)
/* 8061AFE4  3C E0 80 65 */	lis r7, lit_447@ha /* 0x8064CA34@ha */
/* 8061AFE8  C0 47 CA 34 */	lfs f2, lit_447@l(r7)  /* 0x8064CA34@l */
/* 8061AFEC  81 86 00 14 */	lwz r12, 0x14(r6)
/* 8061AFF0  7D 89 03 A6 */	mtctr r12
/* 8061AFF4  4E 80 04 21 */	bctrl 
/* 8061AFF8  D0 3C 00 3C */	stfs f1, 0x3c(r28)
/* 8061AFFC  D0 3C 00 38 */	stfs f1, 0x38(r28)
/* 8061B000  D0 3C 00 34 */	stfs f1, 0x34(r28)
/* 8061B004  A8 1C 00 00 */	lha r0, 0(r28)
/* 8061B008  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 8061B00C  40 82 02 60 */	bne lbl_8061B26C
/* 8061B010  3C 60 80 6D */	lis r3, angle_tbl_410@ha /* 0x806D3390@ha */
/* 8061B014  3B C0 00 00 */	li r30, 0
/* 8061B018  3B 43 33 90 */	addi r26, r3, angle_tbl_410@l /* 0x806D3390@l */
/* 8061B01C  3B 60 00 00 */	li r27, 0
lbl_8061B020:
/* 8061B020  A8 1C 00 00 */	lha r0, 0(r28)
/* 8061B024  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 8061B028  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 8061B02C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8061B030  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 8061B034  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8061B038  7C DA DA AE */	lhax r6, r26, r27
/* 8061B03C  90 81 00 30 */	stw r4, 0x30(r1)
/* 8061B040  90 61 00 34 */	stw r3, 0x34(r1)
/* 8061B044  40 82 00 10 */	bne lbl_8061B054
/* 8061B048  3C 66 00 01 */	addis r3, r6, 1
/* 8061B04C  38 03 80 00 */	addi r0, r3, -32768
/* 8061B050  7C 06 07 34 */	extsh r6, r0
lbl_8061B054:
/* 8061B054  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8061B058  7F A7 EB 78 */	mr r7, r29
/* 8061B05C  81 01 00 30 */	lwz r8, 0x30(r1)
/* 8061B060  38 81 00 14 */	addi r4, r1, 0x14
/* 8061B064  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061B068  39 40 80 07 */	li r10, -32761
/* 8061B06C  90 61 00 14 */	stw r3, 0x14(r1)
/* 8061B070  38 60 00 54 */	li r3, 0x54
/* 8061B074  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 8061B078  91 01 00 18 */	stw r8, 0x18(r1)
/* 8061B07C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061B080  81 85 00 00 */	lwz r12, 0(r5)
/* 8061B084  88 BC 00 0E */	lbz r5, 0xe(r28)
/* 8061B088  A1 1C 00 0C */	lhz r8, 0xc(r28)
/* 8061B08C  A9 3C 00 06 */	lha r9, 6(r28)
/* 8061B090  7D 89 03 A6 */	mtctr r12
/* 8061B094  4E 80 04 21 */	bctrl 
/* 8061B098  3B DE 00 01 */	addi r30, r30, 1
/* 8061B09C  3B 7B 00 02 */	addi r27, r27, 2
/* 8061B0A0  2C 1E 00 03 */	cmpwi r30, 3
/* 8061B0A4  41 80 FF 7C */	blt lbl_8061B020
/* 8061B0A8  48 00 01 C4 */	b lbl_8061B26C
lbl_8061B0AC:
/* 8061B0AC  28 03 00 02 */	cmplwi r3, 2
/* 8061B0B0  40 82 01 4C */	bne lbl_8061B1FC
/* 8061B0B4  A8 1C 00 08 */	lha r0, 8(r28)
/* 8061B0B8  3C 60 80 65 */	lis r3, lit_447@ha /* 0x8064CA34@ha */
/* 8061B0BC  38 83 CA 34 */	addi r4, r3, lit_447@l /* 0x8064CA34@l */
/* 8061B0C0  A8 7C 00 00 */	lha r3, 0(r28)
/* 8061B0C4  2C 00 00 00 */	cmpwi r0, 0
/* 8061B0C8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8061B0CC  38 80 00 00 */	li r4, 0
/* 8061B0D0  38 A0 00 18 */	li r5, 0x18
/* 8061B0D4  40 82 00 10 */	bne lbl_8061B0E4
/* 8061B0D8  3C C0 80 65 */	lis r6, lit_391@ha /* 0x8064CA20@ha */
/* 8061B0DC  C0 46 CA 20 */	lfs f2, lit_391@l(r6)  /* 0x8064CA20@l */
/* 8061B0E0  48 00 00 50 */	b lbl_8061B130
lbl_8061B0E4:
/* 8061B0E4  3C C0 81 16 */	lis r6, debug_mode@ha /* 0x81166138@ha */
/* 8061B0E8  3C 00 43 30 */	lis r0, 0x4330
/* 8061B0EC  38 E6 61 38 */	addi r7, r6, debug_mode@l /* 0x81166138@l */
/* 8061B0F0  3D 20 80 65 */	lis r9, lit_391@ha /* 0x8064CA20@ha */
/* 8061B0F4  80 E7 00 00 */	lwz r7, 0(r7)
/* 8061B0F8  3C C0 80 65 */	lis r6, lit_394@ha /* 0x8064CA2C@ha */
/* 8061B0FC  3D 00 80 65 */	lis r8, lit_392@ha /* 0x8064CA24@ha */
/* 8061B100  90 01 00 38 */	stw r0, 0x38(r1)
/* 8061B104  A8 E7 1B 78 */	lha r7, 0x1b78(r7)
/* 8061B108  C8 46 CA 2C */	lfd f2, lit_394@l(r6)  /* 0x8064CA2C@l */
/* 8061B10C  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 8061B110  C0 89 CA 20 */	lfs f4, lit_391@l(r9)  /* 0x8064CA20@l */
/* 8061B114  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8061B118  C0 68 CA 24 */	lfs f3, lit_392@l(r8)  /* 0x8064CA24@l */
/* 8061B11C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8061B120  EC 00 10 28 */	fsubs f0, f0, f2
/* 8061B124  EC 04 00 32 */	fmuls f0, f4, f0
/* 8061B128  EC 03 00 2A */	fadds f0, f3, f0
/* 8061B12C  EC 44 00 32 */	fmuls f2, f4, f0
lbl_8061B130:
/* 8061B130  80 DF 60 9C */	lwz r6, 0x609c(r31)
/* 8061B134  81 86 00 14 */	lwz r12, 0x14(r6)
/* 8061B138  7D 89 03 A6 */	mtctr r12
/* 8061B13C  4E 80 04 21 */	bctrl 
/* 8061B140  D0 3C 00 3C */	stfs f1, 0x3c(r28)
/* 8061B144  D0 3C 00 38 */	stfs f1, 0x38(r28)
/* 8061B148  D0 3C 00 34 */	stfs f1, 0x34(r28)
/* 8061B14C  A8 7C 00 00 */	lha r3, 0(r28)
/* 8061B150  54 60 07 7F */	clrlwi. r0, r3, 0x1d
/* 8061B154  40 82 01 18 */	bne lbl_8061B26C
/* 8061B158  2C 03 00 08 */	cmpwi r3, 8
/* 8061B15C  40 81 01 10 */	ble lbl_8061B26C
/* 8061B160  3C 60 80 6D */	lis r3, angle_tbl_428@ha /* 0x806D3398@ha */
/* 8061B164  3B C0 00 00 */	li r30, 0
/* 8061B168  3B 43 33 98 */	addi r26, r3, angle_tbl_428@l /* 0x806D3398@l */
/* 8061B16C  3B 60 00 00 */	li r27, 0
lbl_8061B170:
/* 8061B170  A8 1C 00 00 */	lha r0, 0(r28)
/* 8061B174  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 8061B178  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 8061B17C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8061B180  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 8061B184  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8061B188  7C DA DA AE */	lhax r6, r26, r27
/* 8061B18C  90 81 00 24 */	stw r4, 0x24(r1)
/* 8061B190  90 61 00 28 */	stw r3, 0x28(r1)
/* 8061B194  40 82 00 10 */	bne lbl_8061B1A4
/* 8061B198  3C 66 00 01 */	addis r3, r6, 1
/* 8061B19C  38 03 80 00 */	addi r0, r3, -32768
/* 8061B1A0  7C 06 07 34 */	extsh r6, r0
lbl_8061B1A4:
/* 8061B1A4  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8061B1A8  7F A7 EB 78 */	mr r7, r29
/* 8061B1AC  81 01 00 24 */	lwz r8, 0x24(r1)
/* 8061B1B0  38 81 00 08 */	addi r4, r1, 8
/* 8061B1B4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8061B1B8  39 40 80 07 */	li r10, -32761
/* 8061B1BC  90 61 00 08 */	stw r3, 8(r1)
/* 8061B1C0  38 60 00 54 */	li r3, 0x54
/* 8061B1C4  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 8061B1C8  91 01 00 0C */	stw r8, 0xc(r1)
/* 8061B1CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061B1D0  81 85 00 00 */	lwz r12, 0(r5)
/* 8061B1D4  88 BC 00 0E */	lbz r5, 0xe(r28)
/* 8061B1D8  A1 1C 00 0C */	lhz r8, 0xc(r28)
/* 8061B1DC  A9 3C 00 06 */	lha r9, 6(r28)
/* 8061B1E0  7D 89 03 A6 */	mtctr r12
/* 8061B1E4  4E 80 04 21 */	bctrl 
/* 8061B1E8  3B DE 00 01 */	addi r30, r30, 1
/* 8061B1EC  3B 7B 00 02 */	addi r27, r27, 2
/* 8061B1F0  2C 1E 00 03 */	cmpwi r30, 3
/* 8061B1F4  41 80 FF 7C */	blt lbl_8061B170
/* 8061B1F8  48 00 00 74 */	b lbl_8061B26C
lbl_8061B1FC:
/* 8061B1FC  A8 1C 00 08 */	lha r0, 8(r28)
/* 8061B200  2C 00 00 00 */	cmpwi r0, 0
/* 8061B204  40 82 00 10 */	bne lbl_8061B214
/* 8061B208  3C 60 80 65 */	lis r3, lit_391@ha /* 0x8064CA20@ha */
/* 8061B20C  C0 03 CA 20 */	lfs f0, lit_391@l(r3)  /* 0x8064CA20@l */
/* 8061B210  48 00 00 50 */	b lbl_8061B260
lbl_8061B214:
/* 8061B214  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061B218  3C 00 43 30 */	lis r0, 0x4330
/* 8061B21C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8061B220  3C C0 80 65 */	lis r6, lit_391@ha /* 0x8064CA20@ha */
/* 8061B224  80 84 00 00 */	lwz r4, 0(r4)
/* 8061B228  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064CA2C@ha */
/* 8061B22C  3C A0 80 65 */	lis r5, lit_392@ha /* 0x8064CA24@ha */
/* 8061B230  90 01 00 38 */	stw r0, 0x38(r1)
/* 8061B234  A8 84 1B 78 */	lha r4, 0x1b78(r4)
/* 8061B238  C8 23 CA 2C */	lfd f1, lit_394@l(r3)  /* 0x8064CA2C@l */
/* 8061B23C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8061B240  C0 66 CA 20 */	lfs f3, lit_391@l(r6)  /* 0x8064CA20@l */
/* 8061B244  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8061B248  C0 45 CA 24 */	lfs f2, lit_392@l(r5)  /* 0x8064CA24@l */
/* 8061B24C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8061B250  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061B254  EC 03 00 32 */	fmuls f0, f3, f0
/* 8061B258  EC 02 00 2A */	fadds f0, f2, f0
/* 8061B25C  EC 03 00 32 */	fmuls f0, f3, f0
lbl_8061B260:
/* 8061B260  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 8061B264  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 8061B268  D0 1C 00 34 */	stfs f0, 0x34(r28)
lbl_8061B26C:
/* 8061B26C  39 61 00 60 */	addi r11, r1, 0x60
/* 8061B270  4B A7 FC A5 */	bl func_8009AF14
/* 8061B274  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8061B278  7C 08 03 A6 */	mtlr r0
/* 8061B27C  38 21 00 60 */	addi r1, r1, 0x60
/* 8061B280  4E 80 00 20 */	blr 
