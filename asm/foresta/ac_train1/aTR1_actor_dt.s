lbl_805C059C:
/* 805C059C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C05A0  7C 08 02 A6 */	mflr r0
/* 805C05A4  38 A0 00 00 */	li r5, 0
/* 805C05A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C05AC  38 81 00 08 */	addi r4, r1, 8
/* 805C05B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805C05B4  7C 7F 1B 78 */	mr r31, r3
/* 805C05B8  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 805C05BC  38 60 00 00 */	li r3, 0
/* 805C05C0  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 805C05C4  90 C1 00 08 */	stw r6, 8(r1)
/* 805C05C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C05CC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805C05D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C05D4  4B DE 72 5D */	bl mFI_SetFG_common
/* 805C05D8  38 7F 01 78 */	addi r3, r31, 0x178
/* 805C05DC  4B DB 05 15 */	bl cKF_SkeletonInfo_R_dt
/* 805C05E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C05E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805C05E8  7C 08 03 A6 */	mtlr r0
/* 805C05EC  38 21 00 20 */	addi r1, r1, 0x20
/* 805C05F0  4E 80 00 20 */	blr 
