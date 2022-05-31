lbl_8042CCD0:
/* 8042CCD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042CCD4  7C 08 02 A6 */	mflr r0
/* 8042CCD8  3C 80 80 64 */	lis r4, lit_683@ha /* 0x806440E4@ha */
/* 8042CCDC  38 A3 00 20 */	addi r5, r3, 0x20
/* 8042CCE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042CCE4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8042CCE8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8042CCEC  C0 04 40 E4 */	lfs f0, lit_683@l(r4)  /* 0x806440E4@l */
/* 8042CCF0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8042CCF4  FC 20 0A 10 */	fabs f1, f1
/* 8042CCF8  FC 20 08 18 */	frsp f1, f1
/* 8042CCFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042CD00  41 80 00 0C */	blt lbl_8042CD0C
/* 8042CD04  7C A3 2B 78 */	mr r3, r5
/* 8042CD08  4B F4 43 0D */	bl cKF_SkeletonInfo_R_play
lbl_8042CD0C:
/* 8042CD0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042CD10  7C 08 03 A6 */	mtlr r0
/* 8042CD14  38 21 00 10 */	addi r1, r1, 0x10
/* 8042CD18  4E 80 00 20 */	blr 
