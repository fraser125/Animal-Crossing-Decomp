lbl_805E4CB8:
/* 805E4CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E4CBC  7C 08 02 A6 */	mflr r0
/* 805E4CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E4CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E4CC8  93 C1 00 08 */	stw r30, 8(r1)
/* 805E4CCC  7C 7E 1B 78 */	mr r30, r3
/* 805E4CD0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E4CD4  83 E3 09 88 */	lwz r31, 0x988(r3)
/* 805E4CD8  7F E3 FB 78 */	mr r3, r31
/* 805E4CDC  4B D8 BE 15 */	bl cKF_SkeletonInfo_R_dt
/* 805E4CE0  38 7F 00 70 */	addi r3, r31, 0x70
/* 805E4CE4  4B D8 BE 0D */	bl cKF_SkeletonInfo_R_dt
/* 805E4CE8  38 7F 02 24 */	addi r3, r31, 0x224
/* 805E4CEC  4B D8 BE 05 */	bl cKF_SkeletonInfo_R_dt
/* 805E4CF0  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805E4CF4  38 00 00 00 */	li r0, 0
/* 805E4CF8  90 03 09 88 */	stw r0, 0x988(r3)
/* 805E4CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E4D00  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E4D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E4D08  7C 08 03 A6 */	mtlr r0
/* 805E4D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E4D10  4E 80 00 20 */	blr 
