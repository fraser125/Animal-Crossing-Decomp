lbl_805AC038:
/* 805AC038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AC03C  7C 08 02 A6 */	mflr r0
/* 805AC040  38 63 01 78 */	addi r3, r3, 0x178
/* 805AC044  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AC048  4B DC 4A A9 */	bl cKF_SkeletonInfo_R_dt
/* 805AC04C  48 00 00 71 */	bl aCOU_free_clip_area
/* 805AC050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AC054  7C 08 03 A6 */	mtlr r0
/* 805AC058  38 21 00 10 */	addi r1, r1, 0x10
/* 805AC05C  4E 80 00 20 */	blr 
