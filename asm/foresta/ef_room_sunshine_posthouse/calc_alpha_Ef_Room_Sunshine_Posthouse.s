lbl_804D0128:
/* 804D0128  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804D012C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D0130  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804D0134  3C 63 00 02 */	addis r3, r3, 2
/* 804D0138  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804D013C  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804D0140  40 80 00 44 */	bge lbl_804D0184
/* 804D0144  20 64 38 40 */	subfic r3, r4, 0x3840
/* 804D0148  3C 00 43 30 */	lis r0, 0x4330
/* 804D014C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804D0150  3C 80 80 64 */	lis r4, lit_406@ha /* 0x806463A4@ha */
/* 804D0154  90 61 00 0C */	stw r3, 0xc(r1)
/* 804D0158  3C 60 80 64 */	lis r3, lit_404@ha /* 0x806463A0@ha */
/* 804D015C  C8 44 63 A4 */	lfd f2, lit_406@l(r4)  /* 0x806463A4@l */
/* 804D0160  3C A0 80 64 */	lis r5, lit_427@ha /* 0x806463AC@ha */
/* 804D0164  90 01 00 08 */	stw r0, 8(r1)
/* 804D0168  C0 03 63 A0 */	lfs f0, lit_404@l(r3)  /* 0x806463A0@l */
/* 804D016C  C8 21 00 08 */	lfd f1, 8(r1)
/* 804D0170  EC 21 10 28 */	fsubs f1, f1, f2
/* 804D0174  C0 45 63 AC */	lfs f2, lit_427@l(r5)  /* 0x806463AC@l */
/* 804D0178  EC 01 00 24 */	fdivs f0, f1, f0
/* 804D017C  EC 22 00 32 */	fmuls f1, f2, f0
/* 804D0180  48 00 00 B0 */	b lbl_804D0230
lbl_804D0184:
/* 804D0184  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804D0188  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804D018C  7C 04 00 00 */	cmpw r4, r0
/* 804D0190  40 80 00 5C */	bge lbl_804D01EC
/* 804D0194  3C 64 FF FF */	addis r3, r4, 0xffff
/* 804D0198  3C 80 80 64 */	lis r4, lit_428@ha /* 0x806463B0@ha */
/* 804D019C  38 03 57 40 */	addi r0, r3, 0x5740
/* 804D01A0  C0 64 63 B0 */	lfs f3, lit_428@l(r4)  /* 0x806463B0@l */
/* 804D01A4  34 63 57 40 */	addic. r3, r3, 0x5740
/* 804D01A8  7C 60 00 D0 */	neg r3, r0
/* 804D01AC  41 80 00 08 */	blt lbl_804D01B4
/* 804D01B0  7C 03 03 78 */	mr r3, r0
lbl_804D01B4:
/* 804D01B4  20 63 70 80 */	subfic r3, r3, 0x7080
/* 804D01B8  3C 00 43 30 */	lis r0, 0x4330
/* 804D01BC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804D01C0  3C 80 80 64 */	lis r4, lit_406@ha /* 0x806463A4@ha */
/* 804D01C4  90 61 00 0C */	stw r3, 0xc(r1)
/* 804D01C8  3C 60 80 64 */	lis r3, lit_403@ha /* 0x8064639C@ha */
/* 804D01CC  C8 44 63 A4 */	lfd f2, lit_406@l(r4)  /* 0x806463A4@l */
/* 804D01D0  90 01 00 08 */	stw r0, 8(r1)
/* 804D01D4  C0 03 63 9C */	lfs f0, lit_403@l(r3)  /* 0x8064639C@l */
/* 804D01D8  C8 21 00 08 */	lfd f1, 8(r1)
/* 804D01DC  EC 21 10 28 */	fsubs f1, f1, f2
/* 804D01E0  EC 01 00 24 */	fdivs f0, f1, f0
/* 804D01E4  EC 23 00 32 */	fmuls f1, f3, f0
/* 804D01E8  48 00 00 48 */	b lbl_804D0230
lbl_804D01EC:
/* 804D01EC  38 63 51 80 */	addi r3, r3, 0x5180
/* 804D01F0  3C 00 43 30 */	lis r0, 0x4330
/* 804D01F4  7C 64 18 50 */	subf r3, r4, r3
/* 804D01F8  3C A0 80 64 */	lis r5, lit_406@ha /* 0x806463A4@ha */
/* 804D01FC  20 83 38 40 */	subfic r4, r3, 0x3840
/* 804D0200  90 01 00 08 */	stw r0, 8(r1)
/* 804D0204  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804D0208  3C 60 80 64 */	lis r3, lit_404@ha /* 0x806463A0@ha */
/* 804D020C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804D0210  3C 80 80 64 */	lis r4, lit_427@ha /* 0x806463AC@ha */
/* 804D0214  C8 45 63 A4 */	lfd f2, lit_406@l(r5)  /* 0x806463A4@l */
/* 804D0218  C8 21 00 08 */	lfd f1, 8(r1)
/* 804D021C  C0 03 63 A0 */	lfs f0, lit_404@l(r3)  /* 0x806463A0@l */
/* 804D0220  EC 21 10 28 */	fsubs f1, f1, f2
/* 804D0224  C0 64 63 AC */	lfs f3, lit_427@l(r4)  /* 0x806463AC@l */
/* 804D0228  EC 01 00 24 */	fdivs f0, f1, f0
/* 804D022C  EC 23 00 32 */	fmuls f1, f3, f0
lbl_804D0230:
/* 804D0230  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804D0234  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804D0238  3C 63 00 02 */	addis r3, r3, 2
/* 804D023C  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 804D0240  2C 00 00 01 */	cmpwi r0, 1
/* 804D0244  41 82 00 0C */	beq lbl_804D0250
/* 804D0248  2C 00 00 02 */	cmpwi r0, 2
/* 804D024C  40 82 00 10 */	bne lbl_804D025C
lbl_804D0250:
/* 804D0250  3C 60 80 64 */	lis r3, lit_429@ha /* 0x806463B4@ha */
/* 804D0254  C0 03 63 B4 */	lfs f0, lit_429@l(r3)  /* 0x806463B4@l */
/* 804D0258  EC 21 00 32 */	fmuls f1, f1, f0
lbl_804D025C:
/* 804D025C  FC 00 08 1E */	fctiwz f0, f1
/* 804D0260  D8 01 00 08 */	stfd f0, 8(r1)
/* 804D0264  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D0268  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804D026C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D0270  4E 80 00 20 */	blr 