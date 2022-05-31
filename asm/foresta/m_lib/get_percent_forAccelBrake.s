lbl_803BB5FC:
/* 803BB5FC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 803BB600  4C 41 13 82 */	cror 2, 1, 2
/* 803BB604  40 82 00 10 */	bne lbl_803BB614
/* 803BB608  3C 60 80 64 */	lis r3, lit_966@ha /* 0x8064257C@ha */
/* 803BB60C  C0 23 25 7C */	lfs f1, lit_966@l(r3)  /* 0x8064257C@l */
/* 803BB610  4E 80 00 20 */	blr 
lbl_803BB614:
/* 803BB614  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 803BB618  4C 40 13 82 */	cror 2, 0, 2
/* 803BB61C  40 82 00 10 */	bne lbl_803BB62C
/* 803BB620  3C 60 80 64 */	lis r3, lit_450@ha /* 0x80642564@ha */
/* 803BB624  C0 23 25 64 */	lfs f1, lit_450@l(r3)  /* 0x80642564@l */
/* 803BB628  4E 80 00 20 */	blr 
lbl_803BB62C:
/* 803BB62C  EC C3 10 28 */	fsubs f6, f3, f2
/* 803BB630  EC 04 28 2A */	fadds f0, f4, f5
/* 803BB634  EC E1 10 28 */	fsubs f7, f1, f2
/* 803BB638  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 803BB63C  40 80 00 10 */	bge lbl_803BB64C
/* 803BB640  3C 60 80 64 */	lis r3, lit_450@ha /* 0x80642564@ha */
/* 803BB644  C0 23 25 64 */	lfs f1, lit_450@l(r3)  /* 0x80642564@l */
/* 803BB648  4E 80 00 20 */	blr 
lbl_803BB64C:
/* 803BB64C  3C 60 80 64 */	lis r3, lit_995@ha /* 0x80642584@ha */
/* 803BB650  3C A0 80 64 */	lis r5, lit_966@ha /* 0x8064257C@ha */
/* 803BB654  38 83 25 84 */	addi r4, r3, lit_995@l /* 0x80642584@l */
/* 803BB658  C0 45 25 7C */	lfs f2, lit_966@l(r5)  /* 0x8064257C@l */
/* 803BB65C  C0 04 00 00 */	lfs f0, 0(r4)
/* 803BB660  3C 60 80 64 */	lis r3, lit_450@ha /* 0x80642564@ha */
/* 803BB664  C0 23 25 64 */	lfs f1, lit_450@l(r3)  /* 0x80642564@l */
/* 803BB668  EC 00 01 B2 */	fmuls f0, f0, f6
/* 803BB66C  FC 01 20 00 */	fcmpu cr0, f1, f4
/* 803BB670  EC 00 20 28 */	fsubs f0, f0, f4
/* 803BB674  EC 00 28 28 */	fsubs f0, f0, f5
/* 803BB678  ED 02 00 24 */	fdivs f8, f2, f0
/* 803BB67C  41 82 00 24 */	beq lbl_803BB6A0
/* 803BB680  FC 07 20 40 */	fcmpo cr0, f7, f4
/* 803BB684  4C 40 13 82 */	cror 2, 0, 2
/* 803BB688  40 82 00 14 */	bne lbl_803BB69C
/* 803BB68C  EC 08 01 F2 */	fmuls f0, f8, f7
/* 803BB690  EC 27 00 32 */	fmuls f1, f7, f0
/* 803BB694  EC 21 20 24 */	fdivs f1, f1, f4
/* 803BB698  4E 80 00 20 */	blr 
lbl_803BB69C:
/* 803BB69C  EC 28 01 32 */	fmuls f1, f8, f4
lbl_803BB6A0:
/* 803BB6A0  EC 06 28 28 */	fsubs f0, f6, f5
/* 803BB6A4  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 803BB6A8  4C 40 13 82 */	cror 2, 0, 2
/* 803BB6AC  40 82 00 20 */	bne lbl_803BB6CC
/* 803BB6B0  3C 60 80 64 */	lis r3, lit_995@ha /* 0x80642584@ha */
/* 803BB6B4  EC 07 20 28 */	fsubs f0, f7, f4
/* 803BB6B8  C0 43 25 84 */	lfs f2, lit_995@l(r3)  /* 0x80642584@l */
/* 803BB6BC  EC 42 02 32 */	fmuls f2, f2, f8
/* 803BB6C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 803BB6C4  EC 21 00 2A */	fadds f1, f1, f0
/* 803BB6C8  4E 80 00 20 */	blr 
lbl_803BB6CC:
/* 803BB6CC  3C 60 80 64 */	lis r3, lit_995@ha /* 0x80642584@ha */
/* 803BB6D0  EC 46 20 28 */	fsubs f2, f6, f4
/* 803BB6D4  38 83 25 84 */	addi r4, r3, lit_995@l /* 0x80642584@l */
/* 803BB6D8  C0 64 00 00 */	lfs f3, 0(r4)
/* 803BB6DC  3C 60 80 64 */	lis r3, lit_450@ha /* 0x80642564@ha */
/* 803BB6E0  C0 03 25 64 */	lfs f0, lit_450@l(r3)  /* 0x80642564@l */
/* 803BB6E4  EC 42 28 28 */	fsubs f2, f2, f5
/* 803BB6E8  EC 63 02 32 */	fmuls f3, f3, f8
/* 803BB6EC  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 803BB6F0  EC 03 00 B2 */	fmuls f0, f3, f2
/* 803BB6F4  EC 21 00 2A */	fadds f1, f1, f0
/* 803BB6F8  4D 82 00 20 */	beqlr 
/* 803BB6FC  EC 08 01 72 */	fmuls f0, f8, f5
/* 803BB700  FC 07 30 40 */	fcmpo cr0, f7, f6
/* 803BB704  EC 21 00 2A */	fadds f1, f1, f0
/* 803BB708  4C 80 00 20 */	bgelr 
/* 803BB70C  EC 46 38 28 */	fsubs f2, f6, f7
/* 803BB710  EC 08 00 B2 */	fmuls f0, f8, f2
/* 803BB714  EC 02 00 32 */	fmuls f0, f2, f0
/* 803BB718  EC 00 28 24 */	fdivs f0, f0, f5
/* 803BB71C  EC 21 00 28 */	fsubs f1, f1, f0
/* 803BB720  4E 80 00 20 */	blr 
