lbl_805B2AD8:
/* 805B2AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B2ADC  7C 08 02 A6 */	mflr r0
/* 805B2AE0  38 63 01 78 */	addi r3, r3, 0x178
/* 805B2AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B2AE8  4B DB E0 09 */	bl cKF_SkeletonInfo_R_dt
/* 805B2AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B2AF0  7C 08 03 A6 */	mtlr r0
/* 805B2AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 805B2AF8  4E 80 00 20 */	blr 
