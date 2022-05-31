lbl_805BA09C:
/* 805BA09C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA0A0  2C 05 00 05 */	cmpwi r5, 5
/* 805BA0A4  80 E3 00 00 */	lwz r7, 0(r3)
/* 805BA0A8  40 82 00 D0 */	bne lbl_805BA178
/* 805BA0AC  80 08 02 B8 */	lwz r0, 0x2b8(r8)
/* 805BA0B0  2C 00 3F FF */	cmpwi r0, 0x3fff
/* 805BA0B4  40 82 00 14 */	bne lbl_805BA0C8
/* 805BA0B8  38 80 00 FF */	li r4, 0xff
/* 805BA0BC  38 00 00 FF */	li r0, 0xff
/* 805BA0C0  38 A0 00 96 */	li r5, 0x96
/* 805BA0C4  48 00 00 88 */	b lbl_805BA14C
lbl_805BA0C8:
/* 805BA0C8  2C 00 00 00 */	cmpwi r0, 0
/* 805BA0CC  40 82 00 14 */	bne lbl_805BA0E0
/* 805BA0D0  38 80 00 00 */	li r4, 0
/* 805BA0D4  38 00 00 00 */	li r0, 0
/* 805BA0D8  38 A0 00 00 */	li r5, 0
/* 805BA0DC  48 00 00 70 */	b lbl_805BA14C
lbl_805BA0E0:
/* 805BA0E0  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 805BA0E4  3C 00 43 30 */	lis r0, 0x4330
/* 805BA0E8  3C 80 80 65 */	lis r4, lit_708@ha /* 0x8064AAD4@ha */
/* 805BA0EC  90 61 00 0C */	stw r3, 0xc(r1)
/* 805BA0F0  38 64 AA D4 */	addi r3, r4, lit_708@l /* 0x8064AAD4@l */
/* 805BA0F4  90 01 00 08 */	stw r0, 8(r1)
/* 805BA0F8  3C 80 80 65 */	lis r4, lit_704@ha /* 0x8064AAC4@ha */
/* 805BA0FC  C8 23 00 00 */	lfd f1, 0(r3)
/* 805BA100  38 A4 AA C4 */	addi r5, r4, lit_704@l /* 0x8064AAC4@l */
/* 805BA104  C8 01 00 08 */	lfd f0, 8(r1)
/* 805BA108  3C 60 80 65 */	lis r3, lit_705@ha /* 0x8064AAC8@ha */
/* 805BA10C  C0 65 00 00 */	lfs f3, 0(r5)
/* 805BA110  38 83 AA C8 */	addi r4, r3, lit_705@l /* 0x8064AAC8@l */
/* 805BA114  EC 40 08 28 */	fsubs f2, f0, f1
/* 805BA118  3C 60 80 65 */	lis r3, lit_706@ha /* 0x8064AACC@ha */
/* 805BA11C  C0 24 00 00 */	lfs f1, 0(r4)
/* 805BA120  C0 03 AA CC */	lfs f0, lit_706@l(r3)  /* 0x8064AACC@l */
/* 805BA124  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805BA128  EC 21 00 B2 */	fmuls f1, f1, f2
/* 805BA12C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805BA130  FC 20 08 1E */	fctiwz f1, f1
/* 805BA134  FC 00 00 1E */	fctiwz f0, f0
/* 805BA138  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805BA13C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BA140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BA144  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 805BA148  7C 04 03 78 */	mr r4, r0
lbl_805BA14C:
/* 805BA14C  80 C7 02 D0 */	lwz r6, 0x2d0(r7)
/* 805BA150  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805BA154  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 805BA158  3C 60 FB 00 */	lis r3, 0xfb00
/* 805BA15C  7C C8 33 78 */	mr r8, r6
/* 805BA160  38 C6 00 08 */	addi r6, r6, 8
/* 805BA164  90 68 00 00 */	stw r3, 0(r8)
/* 805BA168  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 805BA16C  90 08 00 04 */	stw r0, 4(r8)
/* 805BA170  90 C7 02 D0 */	stw r6, 0x2d0(r7)
/* 805BA174  48 00 00 14 */	b lbl_805BA188
lbl_805BA178:
/* 805BA178  2C 05 00 06 */	cmpwi r5, 6
/* 805BA17C  40 82 00 0C */	bne lbl_805BA188
/* 805BA180  38 00 00 00 */	li r0, 0
/* 805BA184  90 06 00 00 */	stw r0, 0(r6)
lbl_805BA188:
/* 805BA188  38 60 00 01 */	li r3, 1
/* 805BA18C  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA190  4E 80 00 20 */	blr 
