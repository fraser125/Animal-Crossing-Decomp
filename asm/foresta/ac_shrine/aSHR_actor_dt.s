lbl_805BA550:
/* 805BA550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BA554  7C 08 02 A6 */	mflr r0
/* 805BA558  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BA55C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BA560  7C 7F 1B 78 */	mr r31, r3
/* 805BA564  48 00 00 85 */	bl aSHR_free_clip_area
/* 805BA568  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BA56C  4B DB 65 85 */	bl cKF_SkeletonInfo_R_dt
/* 805BA570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BA574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BA578  7C 08 03 A6 */	mtlr r0
/* 805BA57C  38 21 00 10 */	addi r1, r1, 0x10
/* 805BA580  4E 80 00 20 */	blr 
