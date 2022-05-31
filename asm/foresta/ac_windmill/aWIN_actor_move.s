lbl_805C1B74:
/* 805C1B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C1B78  7C 08 02 A6 */	mflr r0
/* 805C1B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C1B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C1B84  7C 7F 1B 78 */	mr r31, r3
/* 805C1B88  38 7F 01 78 */	addi r3, r31, 0x178
/* 805C1B8C  93 C1 00 08 */	stw r30, 8(r1)
/* 805C1B90  7C 9E 23 78 */	mr r30, r4
/* 805C1B94  4B DA F4 81 */	bl cKF_SkeletonInfo_R_play
/* 805C1B98  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805C1B9C  7F E3 FB 78 */	mr r3, r31
/* 805C1BA0  7F C4 F3 78 */	mr r4, r30
/* 805C1BA4  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805C1BA8  7D 89 03 A6 */	mtctr r12
/* 805C1BAC  4E 80 04 21 */	bctrl 
/* 805C1BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C1BB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C1BB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C1BBC  7C 08 03 A6 */	mtlr r0
/* 805C1BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 805C1BC4  4E 80 00 20 */	blr 
