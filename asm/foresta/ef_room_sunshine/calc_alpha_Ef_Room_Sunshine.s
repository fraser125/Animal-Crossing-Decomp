lbl_804CF0B0:
/* 804CF0B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804CF0B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CF0B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804CF0BC  3C 63 00 02 */	addis r3, r3, 2
/* 804CF0C0  80 A3 61 1C */	lwz r5, 0x611c(r3)
/* 804CF0C4  2C 05 38 40 */	cmpwi r5, 0x3840
/* 804CF0C8  40 80 00 70 */	bge lbl_804CF138
/* 804CF0CC  20 05 38 40 */	subfic r0, r5, 0x3840
/* 804CF0D0  3C 80 43 30 */	lis r4, 0x4330
/* 804CF0D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CF0D8  3C 60 80 64 */	lis r3, lit_405@ha /* 0x8064630C@ha */
/* 804CF0DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CF0E0  38 A3 63 0C */	addi r5, r3, lit_405@l /* 0x8064630C@l */
/* 804CF0E4  3C 60 80 64 */	lis r3, lit_403@ha /* 0x80646304@ha */
/* 804CF0E8  C8 45 00 00 */	lfd f2, 0(r5)
/* 804CF0EC  90 81 00 10 */	stw r4, 0x10(r1)
/* 804CF0F0  3C C0 81 16 */	lis r6, debug_mode@ha /* 0x81166138@ha */
/* 804CF0F4  38 A6 61 38 */	addi r5, r6, debug_mode@l /* 0x81166138@l */
/* 804CF0F8  C0 03 63 04 */	lfs f0, lit_403@l(r3)  /* 0x80646304@l */
/* 804CF0FC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 804CF100  3C C0 80 64 */	lis r6, lit_426@ha /* 0x80646314@ha */
/* 804CF104  80 65 00 00 */	lwz r3, 0(r5)
/* 804CF108  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF10C  90 81 00 08 */	stw r4, 8(r1)
/* 804CF110  A8 03 1B 50 */	lha r0, 0x1b50(r3)
/* 804CF114  C0 66 63 14 */	lfs f3, lit_426@l(r6)  /* 0x80646314@l */
/* 804CF118  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CF11C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CF120  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CF124  C8 21 00 08 */	lfd f1, 8(r1)
/* 804CF128  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF12C  EC 23 08 2A */	fadds f1, f3, f1
/* 804CF130  EC 21 00 32 */	fmuls f1, f1, f0
/* 804CF134  48 00 00 D4 */	b lbl_804CF208
lbl_804CF138:
/* 804CF138  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804CF13C  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804CF140  7C 05 00 00 */	cmpw r5, r0
/* 804CF144  40 80 00 5C */	bge lbl_804CF1A0
/* 804CF148  3C 65 FF FF */	addis r3, r5, 0xffff
/* 804CF14C  3C 80 80 64 */	lis r4, lit_427@ha /* 0x80646318@ha */
/* 804CF150  38 03 57 40 */	addi r0, r3, 0x5740
/* 804CF154  C0 64 63 18 */	lfs f3, lit_427@l(r4)  /* 0x80646318@l */
/* 804CF158  34 63 57 40 */	addic. r3, r3, 0x5740
/* 804CF15C  7C 60 00 D0 */	neg r3, r0
/* 804CF160  41 80 00 08 */	blt lbl_804CF168
/* 804CF164  7C 03 03 78 */	mr r3, r0
lbl_804CF168:
/* 804CF168  20 63 70 80 */	subfic r3, r3, 0x7080
/* 804CF16C  3C 00 43 30 */	lis r0, 0x4330
/* 804CF170  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804CF174  3C 80 80 64 */	lis r4, lit_405@ha /* 0x8064630C@ha */
/* 804CF178  90 61 00 14 */	stw r3, 0x14(r1)
/* 804CF17C  3C 60 80 64 */	lis r3, lit_402@ha /* 0x80646300@ha */
/* 804CF180  C8 44 63 0C */	lfd f2, lit_405@l(r4)  /* 0x8064630C@l */
/* 804CF184  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CF188  C0 03 63 00 */	lfs f0, lit_402@l(r3)  /* 0x80646300@l */
/* 804CF18C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 804CF190  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF194  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CF198  EC 23 00 32 */	fmuls f1, f3, f0
/* 804CF19C  48 00 00 6C */	b lbl_804CF208
lbl_804CF1A0:
/* 804CF1A0  38 03 51 80 */	addi r0, r3, 0x5180
/* 804CF1A4  3C 80 43 30 */	lis r4, 0x4330
/* 804CF1A8  7C 05 00 50 */	subf r0, r5, r0
/* 804CF1AC  3C A0 80 64 */	lis r5, lit_405@ha /* 0x8064630C@ha */
/* 804CF1B0  20 00 38 40 */	subfic r0, r0, 0x3840
/* 804CF1B4  3C 60 80 64 */	lis r3, lit_403@ha /* 0x80646304@ha */
/* 804CF1B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CF1BC  3C E0 80 64 */	lis r7, lit_426@ha /* 0x80646314@ha */
/* 804CF1C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CF1C4  3C C0 81 16 */	lis r6, debug_mode@ha /* 0x81166138@ha */
/* 804CF1C8  C0 03 63 04 */	lfs f0, lit_403@l(r3)  /* 0x80646304@l */
/* 804CF1CC  90 81 00 08 */	stw r4, 8(r1)
/* 804CF1D0  C8 45 63 0C */	lfd f2, lit_405@l(r5)  /* 0x8064630C@l */
/* 804CF1D4  C8 21 00 08 */	lfd f1, 8(r1)
/* 804CF1D8  80 66 61 38 */	lwz r3, debug_mode@l(r6)  /* 0x81166138@l */
/* 804CF1DC  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF1E0  90 81 00 10 */	stw r4, 0x10(r1)
/* 804CF1E4  A8 03 1B 50 */	lha r0, 0x1b50(r3)
/* 804CF1E8  C0 67 63 14 */	lfs f3, lit_426@l(r7)  /* 0x80646314@l */
/* 804CF1EC  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CF1F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CF1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CF1F8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 804CF1FC  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF200  EC 23 08 2A */	fadds f1, f3, f1
/* 804CF204  EC 21 00 32 */	fmuls f1, f1, f0
lbl_804CF208:
/* 804CF208  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804CF20C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804CF210  3C 63 00 02 */	addis r3, r3, 2
/* 804CF214  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 804CF218  2C 00 00 01 */	cmpwi r0, 1
/* 804CF21C  41 82 00 0C */	beq lbl_804CF228
/* 804CF220  2C 00 00 02 */	cmpwi r0, 2
/* 804CF224  40 82 00 10 */	bne lbl_804CF234
lbl_804CF228:
/* 804CF228  3C 60 80 64 */	lis r3, lit_428@ha /* 0x8064631C@ha */
/* 804CF22C  C0 03 63 1C */	lfs f0, lit_428@l(r3)  /* 0x8064631C@l */
/* 804CF230  EC 21 00 32 */	fmuls f1, f1, f0
lbl_804CF234:
/* 804CF234  FC 00 08 1E */	fctiwz f0, f1
/* 804CF238  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804CF23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CF240  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804CF244  38 21 00 20 */	addi r1, r1, 0x20
/* 804CF248  4E 80 00 20 */	blr 
