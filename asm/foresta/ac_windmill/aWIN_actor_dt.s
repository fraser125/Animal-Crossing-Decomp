lbl_805C19D0:
/* 805C19D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C19D4  7C 08 02 A6 */	mflr r0
/* 805C19D8  38 80 00 00 */	li r4, 0
/* 805C19DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C19E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C19E4  7C 7F 1B 78 */	mr r31, r3
/* 805C19E8  48 00 00 21 */	bl func_805C1A08
/* 805C19EC  38 7F 01 78 */	addi r3, r31, 0x178
/* 805C19F0  4B DA F1 01 */	bl cKF_SkeletonInfo_R_dt
/* 805C19F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C19F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C19FC  7C 08 03 A6 */	mtlr r0
/* 805C1A00  38 21 00 10 */	addi r1, r1, 0x10
/* 805C1A04  4E 80 00 20 */	blr 
