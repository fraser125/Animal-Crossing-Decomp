lbl_805DFD20:
/* 805DFD20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DFD24  7C 08 02 A6 */	mflr r0
/* 805DFD28  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DFD2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DFD30  7C 7F 1B 78 */	mr r31, r3
/* 805DFD34  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DFD38  80 63 09 84 */	lwz r3, 0x984(r3)
/* 805DFD3C  4B D9 0D B5 */	bl cKF_SkeletonInfo_R_dt
/* 805DFD40  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 805DFD44  38 00 00 00 */	li r0, 0
/* 805DFD48  90 03 09 84 */	stw r0, 0x984(r3)
/* 805DFD4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DFD50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DFD54  7C 08 03 A6 */	mtlr r0
/* 805DFD58  38 21 00 10 */	addi r1, r1, 0x10
/* 805DFD5C  4E 80 00 20 */	blr 
