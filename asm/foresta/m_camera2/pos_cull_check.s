lbl_8037EF34:
/* 8037EF34  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8037EF38  EC C3 20 2A */	fadds f6, f3, f4
/* 8037EF3C  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8037EF40  80 84 00 00 */	lwz r4, 0(r4)
/* 8037EF44  C0 04 1B 9C */	lfs f0, 0x1b9c(r4)
/* 8037EF48  EC 00 28 2A */	fadds f0, f0, f5
/* 8037EF4C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8037EF50  4C 40 13 82 */	cror 2, 0, 2
/* 8037EF54  40 82 00 54 */	bne lbl_8037EFA8
/* 8037EF58  C0 04 1B 88 */	lfs f0, 0x1b88(r4)
/* 8037EF5C  C0 63 00 00 */	lfs f3, 0(r3)
/* 8037EF60  EC 80 30 28 */	fsubs f4, f0, f6
/* 8037EF64  EC 43 30 28 */	fsubs f2, f3, f6
/* 8037EF68  EC 00 30 2A */	fadds f0, f0, f6
/* 8037EF6C  EC 63 30 2A */	fadds f3, f3, f6
/* 8037EF70  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 8037EF74  40 81 00 08 */	ble lbl_8037EF7C
/* 8037EF78  FC 40 20 90 */	fmr f2, f4
lbl_8037EF7C:
/* 8037EF7C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8037EF80  40 80 00 08 */	bge lbl_8037EF88
/* 8037EF84  FC 60 00 90 */	fmr f3, f0
lbl_8037EF88:
/* 8037EF88  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8037EF8C  4C 40 13 82 */	cror 2, 0, 2
/* 8037EF90  40 82 00 18 */	bne lbl_8037EFA8
/* 8037EF94  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8037EF98  4C 40 13 82 */	cror 2, 0, 2
/* 8037EF9C  40 82 00 0C */	bne lbl_8037EFA8
/* 8037EFA0  38 60 00 01 */	li r3, 1
/* 8037EFA4  4E 80 00 20 */	blr 
lbl_8037EFA8:
/* 8037EFA8  38 60 00 00 */	li r3, 0
/* 8037EFAC  4E 80 00 20 */	blr 
