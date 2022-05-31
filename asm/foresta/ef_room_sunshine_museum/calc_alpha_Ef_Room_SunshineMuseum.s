lbl_804D08C0:
/* 804D08C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804D08C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D08C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804D08CC  3C 63 00 02 */	addis r3, r3, 2
/* 804D08D0  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804D08D4  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804D08D8  40 80 00 44 */	bge lbl_804D091C
/* 804D08DC  20 64 38 40 */	subfic r3, r4, 0x3840
/* 804D08E0  3C 00 43 30 */	lis r0, 0x4330
/* 804D08E4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804D08E8  3C 80 80 64 */	lis r4, lit_407@ha /* 0x806463F4@ha */
/* 804D08EC  90 61 00 0C */	stw r3, 0xc(r1)
/* 804D08F0  3C 60 80 64 */	lis r3, lit_405@ha /* 0x806463EC@ha */
/* 804D08F4  C8 44 63 F4 */	lfd f2, lit_407@l(r4)  /* 0x806463F4@l */
/* 804D08F8  3C A0 80 64 */	lis r5, lit_428@ha /* 0x806463FC@ha */
/* 804D08FC  90 01 00 08 */	stw r0, 8(r1)
/* 804D0900  C0 03 63 EC */	lfs f0, lit_405@l(r3)  /* 0x806463EC@l */
/* 804D0904  C8 21 00 08 */	lfd f1, 8(r1)
/* 804D0908  EC 21 10 28 */	fsubs f1, f1, f2
/* 804D090C  C0 45 63 FC */	lfs f2, lit_428@l(r5)  /* 0x806463FC@l */
/* 804D0910  EC 01 00 24 */	fdivs f0, f1, f0
/* 804D0914  EC 22 00 32 */	fmuls f1, f2, f0
/* 804D0918  48 00 00 B0 */	b lbl_804D09C8
lbl_804D091C:
/* 804D091C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804D0920  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804D0924  7C 04 00 00 */	cmpw r4, r0
/* 804D0928  40 80 00 5C */	bge lbl_804D0984
/* 804D092C  3C 64 FF FF */	addis r3, r4, 0xffff
/* 804D0930  3C 80 80 64 */	lis r4, lit_429@ha /* 0x80646400@ha */
/* 804D0934  38 03 57 40 */	addi r0, r3, 0x5740
/* 804D0938  C0 64 64 00 */	lfs f3, lit_429@l(r4)  /* 0x80646400@l */
/* 804D093C  34 63 57 40 */	addic. r3, r3, 0x5740
/* 804D0940  7C 60 00 D0 */	neg r3, r0
/* 804D0944  41 80 00 08 */	blt lbl_804D094C
/* 804D0948  7C 03 03 78 */	mr r3, r0
lbl_804D094C:
/* 804D094C  20 63 70 80 */	subfic r3, r3, 0x7080
/* 804D0950  3C 00 43 30 */	lis r0, 0x4330
/* 804D0954  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804D0958  3C 80 80 64 */	lis r4, lit_407@ha /* 0x806463F4@ha */
/* 804D095C  90 61 00 0C */	stw r3, 0xc(r1)
/* 804D0960  3C 60 80 64 */	lis r3, lit_404@ha /* 0x806463E8@ha */
/* 804D0964  C8 44 63 F4 */	lfd f2, lit_407@l(r4)  /* 0x806463F4@l */
/* 804D0968  90 01 00 08 */	stw r0, 8(r1)
/* 804D096C  C0 03 63 E8 */	lfs f0, lit_404@l(r3)  /* 0x806463E8@l */
/* 804D0970  C8 21 00 08 */	lfd f1, 8(r1)
/* 804D0974  EC 21 10 28 */	fsubs f1, f1, f2
/* 804D0978  EC 01 00 24 */	fdivs f0, f1, f0
/* 804D097C  EC 23 00 32 */	fmuls f1, f3, f0
/* 804D0980  48 00 00 48 */	b lbl_804D09C8
lbl_804D0984:
/* 804D0984  38 63 51 80 */	addi r3, r3, 0x5180
/* 804D0988  3C 00 43 30 */	lis r0, 0x4330
/* 804D098C  7C 64 18 50 */	subf r3, r4, r3
/* 804D0990  3C A0 80 64 */	lis r5, lit_407@ha /* 0x806463F4@ha */
/* 804D0994  20 83 38 40 */	subfic r4, r3, 0x3840
/* 804D0998  90 01 00 08 */	stw r0, 8(r1)
/* 804D099C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804D09A0  3C 60 80 64 */	lis r3, lit_405@ha /* 0x806463EC@ha */
/* 804D09A4  90 81 00 0C */	stw r4, 0xc(r1)
/* 804D09A8  3C 80 80 64 */	lis r4, lit_428@ha /* 0x806463FC@ha */
/* 804D09AC  C8 45 63 F4 */	lfd f2, lit_407@l(r5)  /* 0x806463F4@l */
/* 804D09B0  C8 21 00 08 */	lfd f1, 8(r1)
/* 804D09B4  C0 03 63 EC */	lfs f0, lit_405@l(r3)  /* 0x806463EC@l */
/* 804D09B8  EC 21 10 28 */	fsubs f1, f1, f2
/* 804D09BC  C0 64 63 FC */	lfs f3, lit_428@l(r4)  /* 0x806463FC@l */
/* 804D09C0  EC 01 00 24 */	fdivs f0, f1, f0
/* 804D09C4  EC 23 00 32 */	fmuls f1, f3, f0
lbl_804D09C8:
/* 804D09C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804D09CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804D09D0  3C 63 00 02 */	addis r3, r3, 2
/* 804D09D4  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 804D09D8  2C 00 00 01 */	cmpwi r0, 1
/* 804D09DC  41 82 00 0C */	beq lbl_804D09E8
/* 804D09E0  2C 00 00 02 */	cmpwi r0, 2
/* 804D09E4  40 82 00 10 */	bne lbl_804D09F4
lbl_804D09E8:
/* 804D09E8  3C 60 80 64 */	lis r3, lit_430@ha /* 0x80646404@ha */
/* 804D09EC  C0 03 64 04 */	lfs f0, lit_430@l(r3)  /* 0x80646404@l */
/* 804D09F0  EC 21 00 32 */	fmuls f1, f1, f0
lbl_804D09F4:
/* 804D09F4  FC 00 08 1E */	fctiwz f0, f1
/* 804D09F8  D8 01 00 08 */	stfd f0, 8(r1)
/* 804D09FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D0A00  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804D0A04  38 21 00 10 */	addi r1, r1, 0x10
/* 804D0A08  4E 80 00 20 */	blr 
