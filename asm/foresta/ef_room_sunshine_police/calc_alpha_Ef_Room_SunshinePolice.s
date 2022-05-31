lbl_804CF940:
/* 804CF940  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804CF944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CF948  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804CF94C  3C 63 00 02 */	addis r3, r3, 2
/* 804CF950  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804CF954  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804CF958  40 80 00 44 */	bge lbl_804CF99C
/* 804CF95C  20 64 38 40 */	subfic r3, r4, 0x3840
/* 804CF960  3C 00 43 30 */	lis r0, 0x4330
/* 804CF964  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804CF968  3C 80 80 64 */	lis r4, lit_407@ha /* 0x8064635C@ha */
/* 804CF96C  90 61 00 0C */	stw r3, 0xc(r1)
/* 804CF970  3C 60 80 64 */	lis r3, lit_405@ha /* 0x80646354@ha */
/* 804CF974  C8 44 63 5C */	lfd f2, lit_407@l(r4)  /* 0x8064635C@l */
/* 804CF978  3C A0 80 64 */	lis r5, lit_428@ha /* 0x80646364@ha */
/* 804CF97C  90 01 00 08 */	stw r0, 8(r1)
/* 804CF980  C0 03 63 54 */	lfs f0, lit_405@l(r3)  /* 0x80646354@l */
/* 804CF984  C8 21 00 08 */	lfd f1, 8(r1)
/* 804CF988  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF98C  C0 45 63 64 */	lfs f2, lit_428@l(r5)  /* 0x80646364@l */
/* 804CF990  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CF994  EC 22 00 32 */	fmuls f1, f2, f0
/* 804CF998  48 00 00 B0 */	b lbl_804CFA48
lbl_804CF99C:
/* 804CF99C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804CF9A0  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804CF9A4  7C 04 00 00 */	cmpw r4, r0
/* 804CF9A8  40 80 00 5C */	bge lbl_804CFA04
/* 804CF9AC  3C 64 FF FF */	addis r3, r4, 0xffff
/* 804CF9B0  3C 80 80 64 */	lis r4, lit_429@ha /* 0x80646368@ha */
/* 804CF9B4  38 03 57 40 */	addi r0, r3, 0x5740
/* 804CF9B8  C0 64 63 68 */	lfs f3, lit_429@l(r4)  /* 0x80646368@l */
/* 804CF9BC  34 63 57 40 */	addic. r3, r3, 0x5740
/* 804CF9C0  7C 60 00 D0 */	neg r3, r0
/* 804CF9C4  41 80 00 08 */	blt lbl_804CF9CC
/* 804CF9C8  7C 03 03 78 */	mr r3, r0
lbl_804CF9CC:
/* 804CF9CC  20 63 70 80 */	subfic r3, r3, 0x7080
/* 804CF9D0  3C 00 43 30 */	lis r0, 0x4330
/* 804CF9D4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804CF9D8  3C 80 80 64 */	lis r4, lit_407@ha /* 0x8064635C@ha */
/* 804CF9DC  90 61 00 0C */	stw r3, 0xc(r1)
/* 804CF9E0  3C 60 80 64 */	lis r3, lit_404@ha /* 0x80646350@ha */
/* 804CF9E4  C8 44 63 5C */	lfd f2, lit_407@l(r4)  /* 0x8064635C@l */
/* 804CF9E8  90 01 00 08 */	stw r0, 8(r1)
/* 804CF9EC  C0 03 63 50 */	lfs f0, lit_404@l(r3)  /* 0x80646350@l */
/* 804CF9F0  C8 21 00 08 */	lfd f1, 8(r1)
/* 804CF9F4  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF9F8  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CF9FC  EC 23 00 32 */	fmuls f1, f3, f0
/* 804CFA00  48 00 00 48 */	b lbl_804CFA48
lbl_804CFA04:
/* 804CFA04  38 63 51 80 */	addi r3, r3, 0x5180
/* 804CFA08  3C 00 43 30 */	lis r0, 0x4330
/* 804CFA0C  7C 64 18 50 */	subf r3, r4, r3
/* 804CFA10  3C A0 80 64 */	lis r5, lit_407@ha /* 0x8064635C@ha */
/* 804CFA14  20 83 38 40 */	subfic r4, r3, 0x3840
/* 804CFA18  90 01 00 08 */	stw r0, 8(r1)
/* 804CFA1C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804CFA20  3C 60 80 64 */	lis r3, lit_405@ha /* 0x80646354@ha */
/* 804CFA24  90 81 00 0C */	stw r4, 0xc(r1)
/* 804CFA28  3C 80 80 64 */	lis r4, lit_428@ha /* 0x80646364@ha */
/* 804CFA2C  C8 45 63 5C */	lfd f2, lit_407@l(r5)  /* 0x8064635C@l */
/* 804CFA30  C8 21 00 08 */	lfd f1, 8(r1)
/* 804CFA34  C0 03 63 54 */	lfs f0, lit_405@l(r3)  /* 0x80646354@l */
/* 804CFA38  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CFA3C  C0 64 63 64 */	lfs f3, lit_428@l(r4)  /* 0x80646364@l */
/* 804CFA40  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CFA44  EC 23 00 32 */	fmuls f1, f3, f0
lbl_804CFA48:
/* 804CFA48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804CFA4C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804CFA50  3C 63 00 02 */	addis r3, r3, 2
/* 804CFA54  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 804CFA58  2C 00 00 01 */	cmpwi r0, 1
/* 804CFA5C  41 82 00 0C */	beq lbl_804CFA68
/* 804CFA60  2C 00 00 02 */	cmpwi r0, 2
/* 804CFA64  40 82 00 10 */	bne lbl_804CFA74
lbl_804CFA68:
/* 804CFA68  3C 60 80 64 */	lis r3, lit_430@ha /* 0x8064636C@ha */
/* 804CFA6C  C0 03 63 6C */	lfs f0, lit_430@l(r3)  /* 0x8064636C@l */
/* 804CFA70  EC 21 00 32 */	fmuls f1, f1, f0
lbl_804CFA74:
/* 804CFA74  FC 00 08 1E */	fctiwz f0, f1
/* 804CFA78  D8 01 00 08 */	stfd f0, 8(r1)
/* 804CFA7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804CFA80  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804CFA84  38 21 00 10 */	addi r1, r1, 0x10
/* 804CFA88  4E 80 00 20 */	blr 
