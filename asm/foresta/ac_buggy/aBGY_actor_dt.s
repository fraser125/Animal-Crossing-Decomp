lbl_805A9CF8:
/* 805A9CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A9CFC  7C 08 02 A6 */	mflr r0
/* 805A9D00  38 80 00 00 */	li r4, 0
/* 805A9D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A9D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A9D0C  7C 7F 1B 78 */	mr r31, r3
/* 805A9D10  48 00 00 21 */	bl func_805A9D30
/* 805A9D14  38 7F 01 78 */	addi r3, r31, 0x178
/* 805A9D18  4B DC 6D D9 */	bl cKF_SkeletonInfo_R_dt
/* 805A9D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A9D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A9D24  7C 08 03 A6 */	mtlr r0
/* 805A9D28  38 21 00 10 */	addi r1, r1, 0x10
/* 805A9D2C  4E 80 00 20 */	blr 
