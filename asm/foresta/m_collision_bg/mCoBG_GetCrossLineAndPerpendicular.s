lbl_8038AB18:
/* 8038AB18  C0 05 00 00 */	lfs f0, 0(r5)
/* 8038AB1C  3C E0 80 64 */	lis r7, data_806419A4@ha /* 0x806419A4@ha */
/* 8038AB20  C0 E4 00 00 */	lfs f7, 0(r4)
/* 8038AB24  C0 25 00 04 */	lfs f1, 4(r5)
/* 8038AB28  EC 80 38 28 */	fsubs f4, f0, f7
/* 8038AB2C  C0 C4 00 04 */	lfs f6, 4(r4)
/* 8038AB30  C0 07 19 A4 */	lfs f0, data_806419A4@l(r7)  /* 0x806419A4@l */
/* 8038AB34  EC A1 30 28 */	fsubs f5, f1, f6
/* 8038AB38  EC 44 01 32 */	fmuls f2, f4, f4
/* 8038AB3C  EC 25 01 72 */	fmuls f1, f5, f5
/* 8038AB40  ED 02 08 2A */	fadds f8, f2, f1
/* 8038AB44  FC 00 40 00 */	fcmpu cr0, f0, f8
/* 8038AB48  41 82 00 50 */	beq lbl_8038AB98
/* 8038AB4C  C0 46 00 00 */	lfs f2, 0(r6)
/* 8038AB50  FC 60 20 50 */	fneg f3, f4
/* 8038AB54  C0 06 00 04 */	lfs f0, 4(r6)
/* 8038AB58  FC 20 28 50 */	fneg f1, f5
/* 8038AB5C  EC 47 10 28 */	fsubs f2, f7, f2
/* 8038AB60  EC 06 00 28 */	fsubs f0, f6, f0
/* 8038AB64  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8038AB68  EC 01 00 32 */	fmuls f0, f1, f0
/* 8038AB6C  EC 02 00 2A */	fadds f0, f2, f0
/* 8038AB70  EC 00 40 24 */	fdivs f0, f0, f8
/* 8038AB74  EC 20 01 32 */	fmuls f1, f0, f4
/* 8038AB78  EC 00 01 72 */	fmuls f0, f0, f5
/* 8038AB7C  EC 27 08 2A */	fadds f1, f7, f1
/* 8038AB80  D0 23 00 00 */	stfs f1, 0(r3)
/* 8038AB84  C0 24 00 04 */	lfs f1, 4(r4)
/* 8038AB88  EC 01 00 2A */	fadds f0, f1, f0
/* 8038AB8C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8038AB90  38 60 00 01 */	li r3, 1
/* 8038AB94  4E 80 00 20 */	blr 
lbl_8038AB98:
/* 8038AB98  D0 03 00 00 */	stfs f0, 0(r3)
/* 8038AB9C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8038ABA0  38 60 00 00 */	li r3, 0
/* 8038ABA4  4E 80 00 20 */	blr 
