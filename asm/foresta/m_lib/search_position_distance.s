lbl_803BAFD4:
/* 803BAFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BAFD8  3C A0 80 64 */	lis r5, lit_450@ha /* 0x80642564@ha */
/* 803BAFDC  C0 64 00 00 */	lfs f3, 0(r4)
/* 803BAFE0  C0 43 00 00 */	lfs f2, 0(r3)
/* 803BAFE4  C0 24 00 04 */	lfs f1, 4(r4)
/* 803BAFE8  EC 43 10 28 */	fsubs f2, f3, f2
/* 803BAFEC  C0 03 00 04 */	lfs f0, 4(r3)
/* 803BAFF0  C0 64 00 08 */	lfs f3, 8(r4)
/* 803BAFF4  EC 81 00 28 */	fsubs f4, f1, f0
/* 803BAFF8  C0 23 00 08 */	lfs f1, 8(r3)
/* 803BAFFC  EC 42 00 B2 */	fmuls f2, f2, f2
/* 803BB000  EC 63 08 28 */	fsubs f3, f3, f1
/* 803BB004  C0 05 25 64 */	lfs f0, lit_450@l(r5)  /* 0x80642564@l */
/* 803BB008  EC 24 01 32 */	fmuls f1, f4, f4
/* 803BB00C  EC 63 00 F2 */	fmuls f3, f3, f3
/* 803BB010  EC 22 08 2A */	fadds f1, f2, f1
/* 803BB014  EC 23 08 2A */	fadds f1, f3, f1
/* 803BB018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BB01C  40 81 00 68 */	ble lbl_803BB084
/* 803BB020  FC 40 08 34 */	frsqrte f2, f1
/* 803BB024  3C 60 80 64 */	lis r3, lit_544@ha /* 0x8064256C@ha */
/* 803BB028  38 83 25 6C */	addi r4, r3, lit_544@l /* 0x8064256C@l */
/* 803BB02C  3C 60 80 64 */	lis r3, lit_545@ha /* 0x80642574@ha */
/* 803BB030  C8 84 00 00 */	lfd f4, 0(r4)
/* 803BB034  FC 02 00 B2 */	fmul f0, f2, f2
/* 803BB038  C8 63 25 74 */	lfd f3, lit_545@l(r3)  /* 0x80642574@l */
/* 803BB03C  FC 44 00 B2 */	fmul f2, f4, f2
/* 803BB040  FC 01 00 32 */	fmul f0, f1, f0
/* 803BB044  FC 03 00 28 */	fsub f0, f3, f0
/* 803BB048  FC 42 00 32 */	fmul f2, f2, f0
/* 803BB04C  FC 02 00 B2 */	fmul f0, f2, f2
/* 803BB050  FC 44 00 B2 */	fmul f2, f4, f2
/* 803BB054  FC 01 00 32 */	fmul f0, f1, f0
/* 803BB058  FC 03 00 28 */	fsub f0, f3, f0
/* 803BB05C  FC 42 00 32 */	fmul f2, f2, f0
/* 803BB060  FC 02 00 B2 */	fmul f0, f2, f2
/* 803BB064  FC 44 00 B2 */	fmul f2, f4, f2
/* 803BB068  FC 01 00 32 */	fmul f0, f1, f0
/* 803BB06C  FC 03 00 28 */	fsub f0, f3, f0
/* 803BB070  FC 02 00 32 */	fmul f0, f2, f0
/* 803BB074  FC 01 00 32 */	fmul f0, f1, f0
/* 803BB078  FC 00 00 18 */	frsp f0, f0
/* 803BB07C  D0 01 00 08 */	stfs f0, 8(r1)
/* 803BB080  C0 21 00 08 */	lfs f1, 8(r1)
lbl_803BB084:
/* 803BB084  38 21 00 10 */	addi r1, r1, 0x10
/* 803BB088  4E 80 00 20 */	blr 
