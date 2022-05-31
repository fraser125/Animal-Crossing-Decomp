lbl_8047A3C0:
/* 8047A3C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047A3C4  3C A0 80 64 */	lis r5, lit_886@ha /* 0x806449F8@ha */
/* 8047A3C8  C0 63 00 00 */	lfs f3, 0(r3)
/* 8047A3CC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8047A3D0  C0 43 00 08 */	lfs f2, 8(r3)
/* 8047A3D4  C0 24 00 08 */	lfs f1, 8(r4)
/* 8047A3D8  EC 63 00 28 */	fsubs f3, f3, f0
/* 8047A3DC  C0 05 49 F8 */	lfs f0, lit_886@l(r5)  /* 0x806449F8@l */
/* 8047A3E0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8047A3E4  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8047A3E8  EC 21 00 72 */	fmuls f1, f1, f1
/* 8047A3EC  EC 22 08 2A */	fadds f1, f2, f1
/* 8047A3F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047A3F4  40 81 00 68 */	ble lbl_8047A45C
/* 8047A3F8  FC 40 08 34 */	frsqrte f2, f1
/* 8047A3FC  3C 60 80 64 */	lis r3, lit_4781@ha /* 0x80644AC4@ha */
/* 8047A400  38 83 4A C4 */	addi r4, r3, lit_4781@l /* 0x80644AC4@l */
/* 8047A404  3C 60 80 64 */	lis r3, lit_4782@ha /* 0x80644ACC@ha */
/* 8047A408  C8 84 00 00 */	lfd f4, 0(r4)
/* 8047A40C  FC 02 00 B2 */	fmul f0, f2, f2
/* 8047A410  C8 63 4A CC */	lfd f3, lit_4782@l(r3)  /* 0x80644ACC@l */
/* 8047A414  FC 44 00 B2 */	fmul f2, f4, f2
/* 8047A418  FC 01 00 32 */	fmul f0, f1, f0
/* 8047A41C  FC 03 00 28 */	fsub f0, f3, f0
/* 8047A420  FC 42 00 32 */	fmul f2, f2, f0
/* 8047A424  FC 02 00 B2 */	fmul f0, f2, f2
/* 8047A428  FC 44 00 B2 */	fmul f2, f4, f2
/* 8047A42C  FC 01 00 32 */	fmul f0, f1, f0
/* 8047A430  FC 03 00 28 */	fsub f0, f3, f0
/* 8047A434  FC 42 00 32 */	fmul f2, f2, f0
/* 8047A438  FC 02 00 B2 */	fmul f0, f2, f2
/* 8047A43C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8047A440  FC 01 00 32 */	fmul f0, f1, f0
/* 8047A444  FC 03 00 28 */	fsub f0, f3, f0
/* 8047A448  FC 02 00 32 */	fmul f0, f2, f0
/* 8047A44C  FC 01 00 32 */	fmul f0, f1, f0
/* 8047A450  FC 00 00 18 */	frsp f0, f0
/* 8047A454  D0 01 00 08 */	stfs f0, 8(r1)
/* 8047A458  C0 21 00 08 */	lfs f1, 8(r1)
lbl_8047A45C:
/* 8047A45C  38 21 00 10 */	addi r1, r1, 0x10
/* 8047A460  4E 80 00 20 */	blr 
