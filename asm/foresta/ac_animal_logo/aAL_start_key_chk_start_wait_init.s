lbl_80410BBC:
/* 80410BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80410BC0  7C 08 02 A6 */	mflr r0
/* 80410BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80410BC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80410BCC  7C 7F 1B 78 */	mr r31, r3
/* 80410BD0  C0 03 01 80 */	lfs f0, 0x180(r3)
/* 80410BD4  38 7F 01 7C */	addi r3, r31, 0x17c
/* 80410BD8  D0 1F 01 8C */	stfs f0, 0x18c(r31)
/* 80410BDC  C0 1F 01 F8 */	lfs f0, 0x1f8(r31)
/* 80410BE0  D0 1F 02 04 */	stfs f0, 0x204(r31)
/* 80410BE4  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 80410BE8  D0 1F 02 7C */	stfs f0, 0x27c(r31)
/* 80410BEC  4B F6 04 29 */	bl cKF_SkeletonInfo_R_play
/* 80410BF0  38 7F 01 F4 */	addi r3, r31, 0x1f4
/* 80410BF4  4B F6 04 21 */	bl cKF_SkeletonInfo_R_play
/* 80410BF8  38 7F 02 6C */	addi r3, r31, 0x26c
/* 80410BFC  4B F6 04 19 */	bl cKF_SkeletonInfo_R_play
/* 80410C00  38 00 00 FF */	li r0, 0xff
/* 80410C04  38 60 00 DC */	li r3, 0xdc
/* 80410C08  90 1F 05 58 */	stw r0, 0x558(r31)
/* 80410C0C  38 00 00 3C */	li r0, 0x3c
/* 80410C10  B0 7F 05 54 */	sth r3, 0x554(r31)
/* 80410C14  90 1F 05 64 */	stw r0, 0x564(r31)
/* 80410C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80410C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80410C20  7C 08 03 A6 */	mtlr r0
/* 80410C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80410C28  4E 80 00 20 */	blr 
