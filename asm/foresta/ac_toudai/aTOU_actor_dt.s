lbl_805BEC38:
/* 805BEC38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BEC3C  7C 08 02 A6 */	mflr r0
/* 805BEC40  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BEC44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BEC48  7C 7F 1B 78 */	mr r31, r3
/* 805BEC4C  4B FF FE 89 */	bl aTOU_fgunit_off
/* 805BEC50  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BEC54  4B DB 1E 9D */	bl cKF_SkeletonInfo_R_dt
/* 805BEC58  3C 60 80 65 */	lis r3, lit_496@ha /* 0x8064ABCC@ha */
/* 805BEC5C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805BEC60  C0 23 AB CC */	lfs f1, lit_496@l(r3)  /* 0x8064ABCC@l */
/* 805BEC64  EC 00 08 2A */	fadds f0, f0, f1
/* 805BEC68  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805BEC6C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BEC70  EC 00 08 2A */	fadds f0, f0, f1
/* 805BEC74  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805BEC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BEC7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BEC80  7C 08 03 A6 */	mtlr r0
/* 805BEC84  38 21 00 10 */	addi r1, r1, 0x10
/* 805BEC88  4E 80 00 20 */	blr 
