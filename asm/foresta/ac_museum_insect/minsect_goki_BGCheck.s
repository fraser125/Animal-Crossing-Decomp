lbl_8045BE5C:
/* 8045BE5C  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BE60  3C C0 80 64 */	lis r6, lit_5240@ha /* 0x80644970@ha */
/* 8045BE64  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8045BE68  3C A0 80 64 */	lis r5, lit_5241@ha /* 0x80644974@ha */
/* 8045BE6C  54 00 07 F4 */	rlwinm r0, r0, 0, 0x1f, 0x1a
/* 8045BE70  C0 06 49 70 */	lfs f0, lit_5240@l(r6)  /* 0x80644970@l */
/* 8045BE74  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BE78  3C 80 80 64 */	lis r4, lit_1349@ha /* 0x8064473C@ha */
/* 8045BE7C  C0 25 49 74 */	lfs f1, lit_5241@l(r5)  /* 0x80644974@l */
/* 8045BE80  EC A2 00 28 */	fsubs f5, f2, f0
/* 8045BE84  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BE88  C0 04 47 3C */	lfs f0, lit_1349@l(r4)  /* 0x8064473C@l */
/* 8045BE8C  EC C1 10 28 */	fsubs f6, f1, f2
/* 8045BE90  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8045BE94  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BE98  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8045BE9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045BEA0  40 80 00 18 */	bge lbl_8045BEB8
/* 8045BEA4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8045BEA8  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BEAC  60 00 00 02 */	ori r0, r0, 2
/* 8045BEB0  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BEB4  48 00 00 24 */	b lbl_8045BED8
lbl_8045BEB8:
/* 8045BEB8  3C 80 80 64 */	lis r4, lit_5242@ha /* 0x80644978@ha */
/* 8045BEBC  C0 04 49 78 */	lfs f0, lit_5242@l(r4)  /* 0x80644978@l */
/* 8045BEC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045BEC4  40 81 00 14 */	ble lbl_8045BED8
/* 8045BEC8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8045BECC  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BED0  60 00 00 04 */	ori r0, r0, 4
/* 8045BED4  B0 03 00 8C */	sth r0, 0x8c(r3)
lbl_8045BED8:
/* 8045BED8  3C 80 80 64 */	lis r4, lit_1349@ha /* 0x8064473C@ha */
/* 8045BEDC  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 8045BEE0  C0 04 47 3C */	lfs f0, lit_1349@l(r4)  /* 0x8064473C@l */
/* 8045BEE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045BEE8  40 80 00 18 */	bge lbl_8045BF00
/* 8045BEEC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8045BEF0  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BEF4  60 00 00 08 */	ori r0, r0, 8
/* 8045BEF8  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BEFC  48 00 00 24 */	b lbl_8045BF20
lbl_8045BF00:
/* 8045BF00  3C 80 80 64 */	lis r4, lit_5243@ha /* 0x8064497C@ha */
/* 8045BF04  C0 04 49 7C */	lfs f0, lit_5243@l(r4)  /* 0x8064497C@l */
/* 8045BF08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045BF0C  40 81 00 14 */	ble lbl_8045BF20
/* 8045BF10  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8045BF14  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BF18  60 00 00 10 */	ori r0, r0, 0x10
/* 8045BF1C  B0 03 00 8C */	sth r0, 0x8c(r3)
lbl_8045BF20:
/* 8045BF20  3C 80 80 64 */	lis r4, lit_502@ha /* 0x806445D8@ha */
/* 8045BF24  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 8045BF28  C0 04 45 D8 */	lfs f0, lit_502@l(r4)  /* 0x806445D8@l */
/* 8045BF2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045BF30  40 80 00 14 */	bge lbl_8045BF44
/* 8045BF34  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8045BF38  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BF3C  60 00 00 20 */	ori r0, r0, 0x20
/* 8045BF40  B0 03 00 8C */	sth r0, 0x8c(r3)
lbl_8045BF44:
/* 8045BF44  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 8045BF48  C0 44 45 BC */	lfs f2, lit_459@l(r4)  /* 0x806445BC@l */
/* 8045BF4C  FC 05 10 40 */	fcmpo cr0, f5, f2
/* 8045BF50  4C 81 00 20 */	blelr 
/* 8045BF54  FC 06 10 40 */	fcmpo cr0, f6, f2
/* 8045BF58  4C 81 00 20 */	blelr 
/* 8045BF5C  3C A0 80 64 */	lis r5, BG_ZB_tbl@ha /* 0x80644960@ha */
/* 8045BF60  3C 80 80 64 */	lis r4, BG_ZF_tbl@ha /* 0x80644968@ha */
/* 8045BF64  38 C4 49 68 */	addi r6, r4, BG_ZF_tbl@l /* 0x80644968@l */
/* 8045BF68  FC 60 28 50 */	fneg f3, f5
/* 8045BF6C  38 00 00 02 */	li r0, 2
/* 8045BF70  38 E5 49 60 */	addi r7, r5, BG_ZB_tbl@l /* 0x80644960@l */
/* 8045BF74  38 80 00 00 */	li r4, 0
/* 8045BF78  7C 09 03 A6 */	mtctr r0
lbl_8045BF7C:
/* 8045BF7C  C0 83 00 24 */	lfs f4, 0x24(r3)
/* 8045BF80  7C 27 24 2E */	lfsx f1, r7, r4
/* 8045BF84  7C 06 24 2E */	lfsx f0, r6, r4
/* 8045BF88  EC 24 08 28 */	fsubs f1, f4, f1
/* 8045BF8C  EC 80 20 28 */	fsubs f4, f0, f4
/* 8045BF90  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8045BF94  40 81 00 F4 */	ble lbl_8045C088
/* 8045BF98  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 8045BF9C  C0 05 45 BC */	lfs f0, lit_459@l(r5)  /* 0x806445BC@l */
/* 8045BFA0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8045BFA4  40 81 00 E4 */	ble lbl_8045C088
/* 8045BFA8  FC 05 30 40 */	fcmpo cr0, f5, f6
/* 8045BFAC  40 81 00 0C */	ble lbl_8045BFB8
/* 8045BFB0  FC E0 30 90 */	fmr f7, f6
/* 8045BFB4  48 00 00 08 */	b lbl_8045BFBC
lbl_8045BFB8:
/* 8045BFB8  FC E0 18 90 */	fmr f7, f3
lbl_8045BFBC:
/* 8045BFBC  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8045BFC0  40 81 00 08 */	ble lbl_8045BFC8
/* 8045BFC4  48 00 00 08 */	b lbl_8045BFCC
lbl_8045BFC8:
/* 8045BFC8  FC 80 08 50 */	fneg f4, f1
lbl_8045BFCC:
/* 8045BFCC  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 8045BFD0  C0 05 45 BC */	lfs f0, lit_459@l(r5)  /* 0x806445BC@l */
/* 8045BFD4  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 8045BFD8  4C 41 13 82 */	cror 2, 1, 2
/* 8045BFDC  40 82 00 0C */	bne lbl_8045BFE8
/* 8045BFE0  FC 20 38 90 */	fmr f1, f7
/* 8045BFE4  48 00 00 08 */	b lbl_8045BFEC
lbl_8045BFE8:
/* 8045BFE8  FC 20 38 50 */	fneg f1, f7
lbl_8045BFEC:
/* 8045BFEC  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 8045BFF0  C0 05 45 BC */	lfs f0, lit_459@l(r5)  /* 0x806445BC@l */
/* 8045BFF4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8045BFF8  4C 41 13 82 */	cror 2, 1, 2
/* 8045BFFC  40 82 00 0C */	bne lbl_8045C008
/* 8045C000  FC 00 20 90 */	fmr f0, f4
/* 8045C004  48 00 00 08 */	b lbl_8045C00C
lbl_8045C008:
/* 8045C008  FC 00 20 50 */	fneg f0, f4
lbl_8045C00C:
/* 8045C00C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045C010  40 81 00 40 */	ble lbl_8045C050
/* 8045C014  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8045C018  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 8045C01C  EC 20 38 2A */	fadds f1, f0, f7
/* 8045C020  C0 05 45 BC */	lfs f0, lit_459@l(r5)  /* 0x806445BC@l */
/* 8045C024  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 8045C028  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8045C02C  40 81 00 14 */	ble lbl_8045C040
/* 8045C030  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045C034  60 00 00 04 */	ori r0, r0, 4
/* 8045C038  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045C03C  48 00 00 4C */	b lbl_8045C088
lbl_8045C040:
/* 8045C040  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045C044  60 00 00 02 */	ori r0, r0, 2
/* 8045C048  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045C04C  48 00 00 3C */	b lbl_8045C088
lbl_8045C050:
/* 8045C050  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8045C054  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 8045C058  EC 20 20 2A */	fadds f1, f0, f4
/* 8045C05C  C0 05 45 BC */	lfs f0, lit_459@l(r5)  /* 0x806445BC@l */
/* 8045C060  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8045C064  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8045C068  40 81 00 14 */	ble lbl_8045C07C
/* 8045C06C  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045C070  60 00 00 10 */	ori r0, r0, 0x10
/* 8045C074  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045C078  48 00 00 10 */	b lbl_8045C088
lbl_8045C07C:
/* 8045C07C  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045C080  60 00 00 08 */	ori r0, r0, 8
/* 8045C084  B0 03 00 8C */	sth r0, 0x8c(r3)
lbl_8045C088:
/* 8045C088  38 84 00 04 */	addi r4, r4, 4
/* 8045C08C  42 00 FE F0 */	bdnz lbl_8045BF7C
/* 8045C090  4E 80 00 20 */	blr 
