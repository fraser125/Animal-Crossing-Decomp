lbl_8047BFA0:
/* 8047BFA0  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8047BFA4  3C 80 80 64 */	lis r4, lit_886@ha /* 0x806449F8@ha */
/* 8047BFA8  38 A5 52 F0 */	addi r5, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 8047BFAC  C0 04 49 F8 */	lfs f0, lit_886@l(r4)  /* 0x806449F8@l */
/* 8047BFB0  80 A5 00 00 */	lwz r5, 0(r5)
/* 8047BFB4  C0 25 00 A8 */	lfs f1, 0xa8(r5)
/* 8047BFB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047BFBC  4C 41 13 82 */	cror 2, 1, 2
/* 8047BFC0  40 82 00 08 */	bne lbl_8047BFC8
/* 8047BFC4  48 00 00 08 */	b lbl_8047BFCC
lbl_8047BFC8:
/* 8047BFC8  FC 20 08 50 */	fneg f1, f1
lbl_8047BFCC:
/* 8047BFCC  3C 80 80 64 */	lis r4, lit_886@ha /* 0x806449F8@ha */
/* 8047BFD0  C0 45 00 AC */	lfs f2, 0xac(r5)
/* 8047BFD4  C0 04 49 F8 */	lfs f0, lit_886@l(r4)  /* 0x806449F8@l */
/* 8047BFD8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8047BFDC  4C 41 13 82 */	cror 2, 1, 2
/* 8047BFE0  40 82 00 08 */	bne lbl_8047BFE8
/* 8047BFE4  48 00 00 08 */	b lbl_8047BFEC
lbl_8047BFE8:
/* 8047BFE8  FC 40 10 50 */	fneg f2, f2
lbl_8047BFEC:
/* 8047BFEC  88 03 01 D0 */	lbz r0, 0x1d0(r3)
/* 8047BFF0  28 00 00 00 */	cmplwi r0, 0
/* 8047BFF4  4C 82 00 20 */	bnelr 
/* 8047BFF8  3C 80 80 64 */	lis r4, lit_5288@ha /* 0x80644AF4@ha */
/* 8047BFFC  C0 04 4A F4 */	lfs f0, lit_5288@l(r4)  /* 0x80644AF4@l */
/* 8047C000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047C004  4C 40 13 82 */	cror 2, 0, 2
/* 8047C008  4C 82 00 20 */	bnelr 
/* 8047C00C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8047C010  4C 40 13 82 */	cror 2, 0, 2
/* 8047C014  4C 82 00 20 */	bnelr 
/* 8047C018  38 00 00 01 */	li r0, 1
/* 8047C01C  98 03 01 D0 */	stb r0, 0x1d0(r3)
/* 8047C020  4E 80 00 20 */	blr 
