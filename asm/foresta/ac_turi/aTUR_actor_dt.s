lbl_805C1128:
/* 805C1128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C112C  7C 08 02 A6 */	mflr r0
/* 805C1130  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C1134  48 00 00 5D */	bl aTRC_clip_dt
/* 805C1138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C113C  7C 08 03 A6 */	mtlr r0
/* 805C1140  38 21 00 10 */	addi r1, r1, 0x10
/* 805C1144  4E 80 00 20 */	blr 
