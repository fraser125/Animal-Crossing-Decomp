lbl_80377244:
/* 80377244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80377248  7C 08 02 A6 */	mflr r0
/* 8037724C  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377250  38 63 C9 68 */	addi r3, r3, banti@l /* 0x8112C968@l */
/* 80377254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80377258  38 63 00 1C */	addi r3, r3, 0x1c
/* 8037725C  4B FF 98 95 */	bl cKF_SkeletonInfo_R_dt
/* 80377260  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377264  38 63 C9 68 */	addi r3, r3, banti@l /* 0x8112C968@l */
/* 80377268  38 63 00 CC */	addi r3, r3, 0xcc
/* 8037726C  4B FF 98 85 */	bl cKF_SkeletonInfo_R_dt
/* 80377270  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377274  38 63 C9 68 */	addi r3, r3, banti@l /* 0x8112C968@l */
/* 80377278  38 63 01 7C */	addi r3, r3, 0x17c
/* 8037727C  4B FF 98 75 */	bl cKF_SkeletonInfo_R_dt
/* 80377280  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377284  38 63 C9 68 */	addi r3, r3, banti@l /* 0x8112C968@l */
/* 80377288  38 63 02 2C */	addi r3, r3, 0x22c
/* 8037728C  4B FF 98 65 */	bl cKF_SkeletonInfo_R_dt
/* 80377290  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377294  38 63 C9 68 */	addi r3, r3, banti@l /* 0x8112C968@l */
/* 80377298  38 63 02 DC */	addi r3, r3, 0x2dc
/* 8037729C  4B FF 98 55 */	bl cKF_SkeletonInfo_R_dt
/* 803772A0  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 803772A4  38 63 C9 68 */	addi r3, r3, banti@l /* 0x8112C968@l */
/* 803772A8  38 63 03 8C */	addi r3, r3, 0x38c
/* 803772AC  4B FF 98 45 */	bl cKF_SkeletonInfo_R_dt
/* 803772B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803772B4  7C 08 03 A6 */	mtlr r0
/* 803772B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803772BC  4E 80 00 20 */	blr 
