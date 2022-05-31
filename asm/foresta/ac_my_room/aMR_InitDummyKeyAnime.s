lbl_80472464:
/* 80472464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80472468  7C 08 02 A6 */	mflr r0
/* 8047246C  7C 87 23 78 */	mr r7, r4
/* 80472470  3C A0 80 91 */	lis r5, cKF_bs_r_furniture_stop@ha /* 0x80911B60@ha */
/* 80472474  90 01 00 14 */	stw r0, 0x14(r1)
/* 80472478  3C 60 80 91 */	lis r3, cKF_ba_r_furniture_stop@ha /* 0x80911B40@ha */
/* 8047247C  38 85 1B 60 */	addi r4, r5, cKF_bs_r_furniture_stop@l /* 0x80911B60@l */
/* 80472480  38 C7 02 48 */	addi r6, r7, 0x248
/* 80472484  38 A3 1B 40 */	addi r5, r3, cKF_ba_r_furniture_stop@l /* 0x80911B40@l */
/* 80472488  38 67 01 D8 */	addi r3, r7, 0x1d8
/* 8047248C  38 E7 02 4E */	addi r7, r7, 0x24e
/* 80472490  4B EF E6 05 */	bl cKF_SkeletonInfo_R_ct
/* 80472494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80472498  7C 08 03 A6 */	mtlr r0
/* 8047249C  38 21 00 10 */	addi r1, r1, 0x10
/* 804724A0  4E 80 00 20 */	blr 
