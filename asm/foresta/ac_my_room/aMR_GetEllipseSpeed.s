lbl_8047C26C:
/* 8047C26C  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047C270  EC 21 10 28 */	fsubs f1, f1, f2
/* 8047C274  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047C278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047C27C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047C280  4C 41 13 82 */	cror 2, 1, 2
/* 8047C284  40 82 00 08 */	bne lbl_8047C28C
/* 8047C288  48 00 00 08 */	b lbl_8047C290
lbl_8047C28C:
/* 8047C28C  FC 20 08 50 */	fneg f1, f1
lbl_8047C290:
/* 8047C290  FC 00 22 10 */	fabs f0, f4
/* 8047C294  3C 60 80 64 */	lis r3, lit_5357@ha /* 0x80644B10@ha */
/* 8047C298  C0 A3 4B 10 */	lfs f5, lit_5357@l(r3)  /* 0x80644B10@l */
/* 8047C29C  EC 21 20 28 */	fsubs f1, f1, f4
/* 8047C2A0  FC 00 00 18 */	frsp f0, f0
/* 8047C2A4  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 8047C2A8  41 80 00 C0 */	blt lbl_8047C368
/* 8047C2AC  EC 21 00 72 */	fmuls f1, f1, f1
/* 8047C2B0  3C 60 80 64 */	lis r3, lit_621@ha /* 0x806449EC@ha */
/* 8047C2B4  EC 04 01 32 */	fmuls f0, f4, f4
/* 8047C2B8  C0 43 49 EC */	lfs f2, lit_621@l(r3)  /* 0x806449EC@l */
/* 8047C2BC  EC 63 00 F2 */	fmuls f3, f3, f3
/* 8047C2C0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8047C2C4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8047C2C8  EC 83 00 32 */	fmuls f4, f3, f0
/* 8047C2CC  FC 00 22 10 */	fabs f0, f4
/* 8047C2D0  FC 00 00 18 */	frsp f0, f0
/* 8047C2D4  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 8047C2D8  40 80 00 10 */	bge lbl_8047C2E8
/* 8047C2DC  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047C2E0  C0 23 49 F8 */	lfs f1, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047C2E4  48 00 00 8C */	b lbl_8047C370
lbl_8047C2E8:
/* 8047C2E8  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047C2EC  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047C2F0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8047C2F4  40 81 00 6C */	ble lbl_8047C360
/* 8047C2F8  FC 20 20 34 */	frsqrte f1, f4
/* 8047C2FC  3C 60 80 64 */	lis r3, lit_4781@ha /* 0x80644AC4@ha */
/* 8047C300  38 83 4A C4 */	addi r4, r3, lit_4781@l /* 0x80644AC4@l */
/* 8047C304  3C 60 80 64 */	lis r3, lit_4782@ha /* 0x80644ACC@ha */
/* 8047C308  C8 64 00 00 */	lfd f3, 0(r4)
/* 8047C30C  FC 01 00 72 */	fmul f0, f1, f1
/* 8047C310  C8 43 4A CC */	lfd f2, lit_4782@l(r3)  /* 0x80644ACC@l */
/* 8047C314  FC 23 00 72 */	fmul f1, f3, f1
/* 8047C318  FC 04 00 32 */	fmul f0, f4, f0
/* 8047C31C  FC 02 00 28 */	fsub f0, f2, f0
/* 8047C320  FC 21 00 32 */	fmul f1, f1, f0
/* 8047C324  FC 01 00 72 */	fmul f0, f1, f1
/* 8047C328  FC 23 00 72 */	fmul f1, f3, f1
/* 8047C32C  FC 04 00 32 */	fmul f0, f4, f0
/* 8047C330  FC 02 00 28 */	fsub f0, f2, f0
/* 8047C334  FC 21 00 32 */	fmul f1, f1, f0
/* 8047C338  FC 01 00 72 */	fmul f0, f1, f1
/* 8047C33C  FC 23 00 72 */	fmul f1, f3, f1
/* 8047C340  FC 04 00 32 */	fmul f0, f4, f0
/* 8047C344  FC 02 00 28 */	fsub f0, f2, f0
/* 8047C348  FC 01 00 32 */	fmul f0, f1, f0
/* 8047C34C  FC 04 00 32 */	fmul f0, f4, f0
/* 8047C350  FC 00 00 18 */	frsp f0, f0
/* 8047C354  D0 01 00 08 */	stfs f0, 8(r1)
/* 8047C358  C0 21 00 08 */	lfs f1, 8(r1)
/* 8047C35C  48 00 00 14 */	b lbl_8047C370
lbl_8047C360:
/* 8047C360  FC 20 20 90 */	fmr f1, f4
/* 8047C364  48 00 00 0C */	b lbl_8047C370
lbl_8047C368:
/* 8047C368  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047C36C  C0 23 49 F8 */	lfs f1, lit_886@l(r3)  /* 0x806449F8@l */
lbl_8047C370:
/* 8047C370  38 21 00 10 */	addi r1, r1, 0x10
/* 8047C374  4E 80 00 20 */	blr 
