lbl_805B2748:
/* 805B2748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B274C  7C 08 02 A6 */	mflr r0
/* 805B2750  38 63 01 78 */	addi r3, r3, 0x178
/* 805B2754  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B2758  4B DB E3 99 */	bl cKF_SkeletonInfo_R_dt
/* 805B275C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B2760  7C 08 03 A6 */	mtlr r0
/* 805B2764  38 21 00 10 */	addi r1, r1, 0x10
/* 805B2768  4E 80 00 20 */	blr 
