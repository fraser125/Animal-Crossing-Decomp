lbl_803925CC:
/* 803925CC  54 C0 07 FE */	clrlwi r0, r6, 0x1f
/* 803925D0  2C 00 00 01 */	cmpwi r0, 1
/* 803925D4  41 82 00 74 */	beq lbl_80392648
/* 803925D8  40 80 00 70 */	bge lbl_80392648
/* 803925DC  2C 00 00 00 */	cmpwi r0, 0
/* 803925E0  40 80 00 08 */	bge lbl_803925E8
/* 803925E4  48 00 00 64 */	b lbl_80392648
lbl_803925E8:
/* 803925E8  C0 27 00 10 */	lfs f1, 0x10(r7)
/* 803925EC  C0 07 00 14 */	lfs f0, 0x14(r7)
/* 803925F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803925F4  41 82 00 B4 */	beq lbl_803926A8
/* 803925F8  C0 07 00 00 */	lfs f0, 0(r7)
/* 803925FC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80392600  C0 07 00 10 */	lfs f0, 0x10(r7)
/* 80392604  D0 03 00 04 */	stfs f0, 4(r3)
/* 80392608  C0 07 00 04 */	lfs f0, 4(r7)
/* 8039260C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80392610  38 60 00 01 */	li r3, 1
/* 80392614  C0 07 00 00 */	lfs f0, 0(r7)
/* 80392618  D0 04 00 00 */	stfs f0, 0(r4)
/* 8039261C  C0 07 00 14 */	lfs f0, 0x14(r7)
/* 80392620  D0 04 00 04 */	stfs f0, 4(r4)
/* 80392624  C0 07 00 04 */	lfs f0, 4(r7)
/* 80392628  D0 04 00 08 */	stfs f0, 8(r4)
/* 8039262C  C0 07 00 08 */	lfs f0, 8(r7)
/* 80392630  D0 05 00 00 */	stfs f0, 0(r5)
/* 80392634  C0 07 00 18 */	lfs f0, 0x18(r7)
/* 80392638  D0 05 00 04 */	stfs f0, 4(r5)
/* 8039263C  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 80392640  D0 05 00 08 */	stfs f0, 8(r5)
/* 80392644  4E 80 00 20 */	blr 
lbl_80392648:
/* 80392648  C0 27 00 18 */	lfs f1, 0x18(r7)
/* 8039264C  C0 07 00 1C */	lfs f0, 0x1c(r7)
/* 80392650  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80392654  41 82 00 54 */	beq lbl_803926A8
/* 80392658  C0 07 00 08 */	lfs f0, 8(r7)
/* 8039265C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80392660  C0 07 00 18 */	lfs f0, 0x18(r7)
/* 80392664  D0 03 00 04 */	stfs f0, 4(r3)
/* 80392668  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 8039266C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80392670  38 60 00 01 */	li r3, 1
/* 80392674  C0 07 00 00 */	lfs f0, 0(r7)
/* 80392678  D0 04 00 00 */	stfs f0, 0(r4)
/* 8039267C  C0 07 00 14 */	lfs f0, 0x14(r7)
/* 80392680  D0 04 00 04 */	stfs f0, 4(r4)
/* 80392684  C0 07 00 04 */	lfs f0, 4(r7)
/* 80392688  D0 04 00 08 */	stfs f0, 8(r4)
/* 8039268C  C0 07 00 08 */	lfs f0, 8(r7)
/* 80392690  D0 05 00 00 */	stfs f0, 0(r5)
/* 80392694  C0 07 00 1C */	lfs f0, 0x1c(r7)
/* 80392698  D0 05 00 04 */	stfs f0, 4(r5)
/* 8039269C  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 803926A0  D0 05 00 08 */	stfs f0, 8(r5)
/* 803926A4  4E 80 00 20 */	blr 
lbl_803926A8:
/* 803926A8  38 60 00 00 */	li r3, 0
/* 803926AC  4E 80 00 20 */	blr 
