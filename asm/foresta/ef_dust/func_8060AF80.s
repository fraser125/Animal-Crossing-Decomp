lbl_8060AF80:
/* 8060AF80  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8060AF84  7C 08 02 A6 */	mflr r0
/* 8060AF88  90 01 00 84 */	stw r0, 0x84(r1)
/* 8060AF8C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8060AF90  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8060AF94  39 61 00 70 */	addi r11, r1, 0x70
/* 8060AF98  4B A8 FF 2D */	bl func_8009AEC4
/* 8060AF9C  7C BB 2B 78 */	mr r27, r5
/* 8060AFA0  3C 00 43 30 */	lis r0, 0x4330
/* 8060AFA4  7F 65 07 34 */	extsh r5, r27
/* 8060AFA8  3D 40 80 65 */	lis r10, lit_436@ha /* 0x8064BF64@ha */
/* 8060AFAC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8060AFB0  3D 60 80 65 */	lis r11, data_8064BF14@ha /* 0x8064BF14@ha */
/* 8060AFB4  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8060AFB8  3C A0 80 65 */	lis r5, lit_416@ha /* 0x8064BF18@ha */
/* 8060AFBC  C8 2A BF 64 */	lfd f1, lit_436@l(r10)  /* 0x8064BF64@l */
/* 8060AFC0  7D 3F 4B 78 */	mr r31, r9
/* 8060AFC4  90 01 00 40 */	stw r0, 0x40(r1)
/* 8060AFC8  7F E0 07 34 */	extsh r0, r31
/* 8060AFCC  C0 4B BF 14 */	lfs f2, data_8064BF14@l(r11)  /* 0x8064BF14@l */
/* 8060AFD0  2C 00 00 04 */	cmpwi r0, 4
/* 8060AFD4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8060AFD8  7C 79 1B 78 */	mr r25, r3
/* 8060AFDC  7C 9A 23 78 */	mr r26, r4
/* 8060AFE0  7C DC 33 78 */	mr r28, r6
/* 8060AFE4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8060AFE8  C0 05 BF 18 */	lfs f0, lit_416@l(r5)  /* 0x8064BF18@l */
/* 8060AFEC  7C FD 3B 78 */	mr r29, r7
/* 8060AFF0  7D 1E 43 78 */	mr r30, r8
/* 8060AFF4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8060AFF8  EF E2 00 72 */	fmuls f31, f2, f1
/* 8060AFFC  41 82 00 14 */	beq lbl_8060B010
/* 8060B000  3C 60 80 65 */	lis r3, lit_417@ha /* 0x8064BF1C@ha */
/* 8060B004  C0 03 BF 1C */	lfs f0, lit_417@l(r3)  /* 0x8064BF1C@l */
/* 8060B008  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8060B00C  48 00 00 1C */	b lbl_8060B028
lbl_8060B010:
/* 8060B010  3C 60 80 65 */	lis r3, lit_418@ha /* 0x8064BF20@ha */
/* 8060B014  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8060B018  C0 39 00 04 */	lfs f1, 4(r25)
/* 8060B01C  C0 03 BF 20 */	lfs f0, lit_418@l(r3)  /* 0x8064BF20@l */
/* 8060B020  EC 01 00 2A */	fadds f0, f1, f0
/* 8060B024  D0 19 00 04 */	stfs f0, 4(r25)
lbl_8060B028:
/* 8060B028  7F E3 07 34 */	extsh r3, r31
/* 8060B02C  2C 03 00 08 */	cmpwi r3, 8
/* 8060B030  40 82 00 14 */	bne lbl_8060B044
/* 8060B034  3C 60 80 65 */	lis r3, lit_419@ha /* 0x8064BF24@ha */
/* 8060B038  C0 03 BF 24 */	lfs f0, lit_419@l(r3)  /* 0x8064BF24@l */
/* 8060B03C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8060B040  48 00 01 2C */	b lbl_8060B16C
lbl_8060B044:
/* 8060B044  2C 03 00 01 */	cmpwi r3, 1
/* 8060B048  40 82 00 14 */	bne lbl_8060B05C
/* 8060B04C  3C 60 80 65 */	lis r3, lit_420@ha /* 0x8064BF28@ha */
/* 8060B050  C0 03 BF 28 */	lfs f0, lit_420@l(r3)  /* 0x8064BF28@l */
/* 8060B054  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8060B058  48 00 01 14 */	b lbl_8060B16C
lbl_8060B05C:
/* 8060B05C  2C 03 00 02 */	cmpwi r3, 2
/* 8060B060  40 82 00 14 */	bne lbl_8060B074
/* 8060B064  3C 60 80 65 */	lis r3, lit_421@ha /* 0x8064BF2C@ha */
/* 8060B068  C0 03 BF 2C */	lfs f0, lit_421@l(r3)  /* 0x8064BF2C@l */
/* 8060B06C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8060B070  48 00 00 FC */	b lbl_8060B16C
lbl_8060B074:
/* 8060B074  2C 03 00 03 */	cmpwi r3, 3
/* 8060B078  41 82 00 0C */	beq lbl_8060B084
/* 8060B07C  2C 03 00 05 */	cmpwi r3, 5
/* 8060B080  40 82 00 14 */	bne lbl_8060B094
lbl_8060B084:
/* 8060B084  3C 60 80 65 */	lis r3, lit_416@ha /* 0x8064BF18@ha */
/* 8060B088  C0 03 BF 18 */	lfs f0, lit_416@l(r3)  /* 0x8064BF18@l */
/* 8060B08C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8060B090  48 00 00 DC */	b lbl_8060B16C
lbl_8060B094:
/* 8060B094  7F E0 07 35 */	extsh. r0, r31
/* 8060B098  40 82 00 6C */	bne lbl_8060B104
/* 8060B09C  3C 80 80 65 */	lis r4, lit_422@ha /* 0x8064BF30@ha */
/* 8060B0A0  7F 63 DB 78 */	mr r3, r27
/* 8060B0A4  C0 04 BF 30 */	lfs f0, lit_422@l(r4)  /* 0x8064BF30@l */
/* 8060B0A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8060B0AC  4B DA FA 45 */	bl sin_s
/* 8060B0B0  3C 60 80 65 */	lis r3, lit_423@ha /* 0x8064BF34@ha */
/* 8060B0B4  C0 19 00 00 */	lfs f0, 0(r25)
/* 8060B0B8  38 83 BF 34 */	addi r4, r3, lit_423@l /* 0x8064BF34@l */
/* 8060B0BC  7F 63 DB 78 */	mr r3, r27
/* 8060B0C0  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060B0C4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060B0C8  EC 00 08 2A */	fadds f0, f0, f1
/* 8060B0CC  D0 19 00 00 */	stfs f0, 0(r25)
/* 8060B0D0  4B DA F9 CD */	bl cos_s
/* 8060B0D4  3C 80 80 65 */	lis r4, lit_423@ha /* 0x8064BF34@ha */
/* 8060B0D8  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064BF38@ha */
/* 8060B0DC  C0 64 BF 34 */	lfs f3, lit_423@l(r4)  /* 0x8064BF34@l */
/* 8060B0E0  C0 59 00 08 */	lfs f2, 8(r25)
/* 8060B0E4  EC 23 00 72 */	fmuls f1, f3, f1
/* 8060B0E8  C0 03 BF 38 */	lfs f0, lit_424@l(r3)  /* 0x8064BF38@l */
/* 8060B0EC  EC 22 08 2A */	fadds f1, f2, f1
/* 8060B0F0  D0 39 00 08 */	stfs f1, 8(r25)
/* 8060B0F4  C0 39 00 04 */	lfs f1, 4(r25)
/* 8060B0F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8060B0FC  D0 19 00 04 */	stfs f0, 4(r25)
/* 8060B100  48 00 00 6C */	b lbl_8060B16C
lbl_8060B104:
/* 8060B104  2C 03 00 09 */	cmpwi r3, 9
/* 8060B108  40 82 00 58 */	bne lbl_8060B160
/* 8060B10C  3C 80 80 65 */	lis r4, lit_425@ha /* 0x8064BF3C@ha */
/* 8060B110  7F 63 DB 78 */	mr r3, r27
/* 8060B114  C0 04 BF 3C */	lfs f0, lit_425@l(r4)  /* 0x8064BF3C@l */
/* 8060B118  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8060B11C  4B DA F9 D5 */	bl sin_s
/* 8060B120  3C 60 80 65 */	lis r3, lit_426@ha /* 0x8064BF40@ha */
/* 8060B124  C0 19 00 00 */	lfs f0, 0(r25)
/* 8060B128  38 83 BF 40 */	addi r4, r3, lit_426@l /* 0x8064BF40@l */
/* 8060B12C  7F 63 DB 78 */	mr r3, r27
/* 8060B130  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060B134  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060B138  EC 00 08 2A */	fadds f0, f0, f1
/* 8060B13C  D0 19 00 00 */	stfs f0, 0(r25)
/* 8060B140  4B DA F9 5D */	bl cos_s
/* 8060B144  3C 60 80 65 */	lis r3, lit_426@ha /* 0x8064BF40@ha */
/* 8060B148  C0 19 00 08 */	lfs f0, 8(r25)
/* 8060B14C  C0 43 BF 40 */	lfs f2, lit_426@l(r3)  /* 0x8064BF40@l */
/* 8060B150  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060B154  EC 00 08 2A */	fadds f0, f0, f1
/* 8060B158  D0 19 00 08 */	stfs f0, 8(r25)
/* 8060B15C  48 00 00 10 */	b lbl_8060B16C
lbl_8060B160:
/* 8060B160  3C 60 80 65 */	lis r3, lit_427@ha /* 0x8064BF44@ha */
/* 8060B164  C0 03 BF 44 */	lfs f0, lit_427@l(r3)  /* 0x8064BF44@l */
/* 8060B168  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_8060B16C:
/* 8060B16C  7F E0 07 34 */	extsh r0, r31
/* 8060B170  2C 00 00 04 */	cmpwi r0, 4
/* 8060B174  40 82 00 24 */	bne lbl_8060B198
/* 8060B178  3C 80 80 65 */	lis r4, lit_416@ha /* 0x8064BF18@ha */
/* 8060B17C  3C 60 80 65 */	lis r3, lit_428@ha /* 0x8064BF48@ha */
/* 8060B180  C0 24 BF 18 */	lfs f1, lit_416@l(r4)  /* 0x8064BF18@l */
/* 8060B184  C0 03 BF 48 */	lfs f0, lit_428@l(r3)  /* 0x8064BF48@l */
/* 8060B188  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8060B18C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8060B190  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8060B194  48 00 00 54 */	b lbl_8060B1E8
lbl_8060B198:
/* 8060B198  7F E0 07 35 */	extsh. r0, r31
/* 8060B19C  40 82 00 28 */	bne lbl_8060B1C4
/* 8060B1A0  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 8060B1A4  38 A3 F0 50 */	addi r5, r3, data_8065F050@l /* 0x8065F050@l */
/* 8060B1A8  80 85 00 00 */	lwz r4, 0(r5)
/* 8060B1AC  80 65 00 04 */	lwz r3, 4(r5)
/* 8060B1B0  80 05 00 08 */	lwz r0, 8(r5)
/* 8060B1B4  90 81 00 28 */	stw r4, 0x28(r1)
/* 8060B1B8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8060B1BC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8060B1C0  48 00 00 28 */	b lbl_8060B1E8
lbl_8060B1C4:
/* 8060B1C4  3C A0 80 65 */	lis r5, lit_416@ha /* 0x8064BF18@ha */
/* 8060B1C8  3C 80 80 65 */	lis r4, lit_429@ha /* 0x8064BF4C@ha */
/* 8060B1CC  3C 60 80 65 */	lis r3, lit_430@ha /* 0x8064BF50@ha */
/* 8060B1D0  C0 45 BF 18 */	lfs f2, lit_416@l(r5)  /* 0x8064BF18@l */
/* 8060B1D4  C0 24 BF 4C */	lfs f1, lit_429@l(r4)  /* 0x8064BF4C@l */
/* 8060B1D8  C0 03 BF 50 */	lfs f0, lit_430@l(r3)  /* 0x8064BF50@l */
/* 8060B1DC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8060B1E0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8060B1E4  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_8060B1E8:
/* 8060B1E8  7F E3 07 34 */	extsh r3, r31
/* 8060B1EC  2C 03 00 04 */	cmpwi r3, 4
/* 8060B1F0  40 82 00 14 */	bne lbl_8060B204
/* 8060B1F4  3C 60 80 65 */	lis r3, lit_431@ha /* 0x8064BF54@ha */
/* 8060B1F8  C0 03 BF 54 */	lfs f0, lit_431@l(r3)  /* 0x8064BF54@l */
/* 8060B1FC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8060B200  48 00 00 30 */	b lbl_8060B230
lbl_8060B204:
/* 8060B204  7F E0 07 35 */	extsh. r0, r31
/* 8060B208  41 82 00 0C */	beq lbl_8060B214
/* 8060B20C  2C 03 00 09 */	cmpwi r3, 9
/* 8060B210  40 82 00 14 */	bne lbl_8060B224
lbl_8060B214:
/* 8060B214  3C 60 80 65 */	lis r3, lit_432@ha /* 0x8064BF58@ha */
/* 8060B218  C0 03 BF 58 */	lfs f0, lit_432@l(r3)  /* 0x8064BF58@l */
/* 8060B21C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8060B220  48 00 00 10 */	b lbl_8060B230
lbl_8060B224:
/* 8060B224  3C 60 80 65 */	lis r3, lit_433@ha /* 0x8064BF5C@ha */
/* 8060B228  C0 03 BF 5C */	lfs f0, lit_433@l(r3)  /* 0x8064BF5C@l */
/* 8060B22C  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_8060B230:
/* 8060B230  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060B234  FC 20 F8 90 */	fmr f1, f31
/* 8060B238  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8060B23C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8060B240  3F 64 00 02 */	addis r27, r4, 2
/* 8060B244  80 9B 60 9C */	lwz r4, 0x609c(r27)
/* 8060B248  81 84 00 08 */	lwz r12, 8(r4)
/* 8060B24C  7D 89 03 A6 */	mtctr r12
/* 8060B250  4E 80 04 21 */	bctrl 
/* 8060B254  80 9B 60 9C */	lwz r4, 0x609c(r27)
/* 8060B258  FC 20 F8 90 */	fmr f1, f31
/* 8060B25C  38 61 00 28 */	addi r3, r1, 0x28
/* 8060B260  81 84 00 08 */	lwz r12, 8(r4)
/* 8060B264  7D 89 03 A6 */	mtctr r12
/* 8060B268  4E 80 04 21 */	bctrl 
/* 8060B26C  80 99 00 00 */	lwz r4, 0(r25)
/* 8060B270  7F 86 E3 78 */	mr r6, r28
/* 8060B274  80 79 00 04 */	lwz r3, 4(r25)
/* 8060B278  7F A8 EB 78 */	mr r8, r29
/* 8060B27C  80 19 00 08 */	lwz r0, 8(r25)
/* 8060B280  7F 49 D3 78 */	mr r9, r26
/* 8060B284  90 81 00 10 */	stw r4, 0x10(r1)
/* 8060B288  7F CA F3 78 */	mr r10, r30
/* 8060B28C  38 81 00 10 */	addi r4, r1, 0x10
/* 8060B290  38 E1 00 1C */	addi r7, r1, 0x1c
/* 8060B294  90 61 00 14 */	stw r3, 0x14(r1)
/* 8060B298  38 60 00 01 */	li r3, 1
/* 8060B29C  38 A0 00 00 */	li r5, 0
/* 8060B2A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060B2A4  93 E1 00 08 */	stw r31, 8(r1)
/* 8060B2A8  81 7B 60 9C */	lwz r11, 0x609c(r27)
/* 8060B2AC  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8060B2B0  7D 89 03 A6 */	mtctr r12
/* 8060B2B4  4E 80 04 21 */	bctrl 
/* 8060B2B8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8060B2BC  39 61 00 70 */	addi r11, r1, 0x70
/* 8060B2C0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8060B2C4  4B A8 FC 4D */	bl func_8009AF10
/* 8060B2C8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8060B2CC  7C 08 03 A6 */	mtlr r0
/* 8060B2D0  38 21 00 80 */	addi r1, r1, 0x80
/* 8060B2D4  4E 80 00 20 */	blr 
