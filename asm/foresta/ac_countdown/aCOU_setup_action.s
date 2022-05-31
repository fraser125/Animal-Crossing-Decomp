lbl_805AC318:
/* 805AC318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AC31C  7C 08 02 A6 */	mflr r0
/* 805AC320  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AC324  39 61 00 20 */	addi r11, r1, 0x20
/* 805AC328  4B AE EB A9 */	bl func_8009AED0
/* 805AC32C  3C A0 80 6C */	lis r5, data_806C49A8@ha /* 0x806C49A8@ha */
/* 805AC330  7C 7C 1B 78 */	mr r28, r3
/* 805AC334  3B E5 49 A8 */	addi r31, r5, data_806C49A8@l /* 0x806C49A8@l */
/* 805AC338  3C 60 80 65 */	lis r3, lit_520@ha /* 0x8064A690@ha */
/* 805AC33C  54 9E 10 3A */	slwi r30, r4, 2
/* 805AC340  7C 9D 23 78 */	mr r29, r4
/* 805AC344  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 805AC348  38 C3 A6 90 */	addi r6, r3, lit_520@l /* 0x8064A690@l */
/* 805AC34C  7C 25 F4 2E */	lfsx f1, r5, r30
/* 805AC350  3C 80 80 65 */	lis r4, data_8064A68C@ha /* 0x8064A68C@ha */
/* 805AC354  39 04 A6 8C */	addi r8, r4, data_8064A68C@l /* 0x8064A68C@l */
/* 805AC358  38 FF 00 B4 */	addi r7, r31, 0xb4
/* 805AC35C  3C 60 80 B6 */	lis r3, cKF_ba_r_obj_e_count01@ha /* 0x80B67290@ha */
/* 805AC360  7C 87 F4 2E */	lfsx f4, r7, r30
/* 805AC364  C0 A6 00 00 */	lfs f5, 0(r6)
/* 805AC368  38 A3 72 90 */	addi r5, r3, cKF_ba_r_obj_e_count01@l /* 0x80B67290@l */
/* 805AC36C  FC 60 08 90 */	fmr f3, f1
/* 805AC370  80 9C 01 90 */	lwz r4, 0x190(r28)
/* 805AC374  C0 48 00 00 */	lfs f2, 0(r8)
/* 805AC378  38 7C 01 78 */	addi r3, r28, 0x178
/* 805AC37C  38 C0 00 00 */	li r6, 0
/* 805AC380  38 E0 00 00 */	li r7, 0
/* 805AC384  4B DC 49 51 */	bl cKF_SkeletonInfo_R_init
/* 805AC388  38 7F 00 9C */	addi r3, r31, 0x9c
/* 805AC38C  38 00 00 00 */	li r0, 0
/* 805AC390  7C 63 F0 2E */	lwzx r3, r3, r30
/* 805AC394  90 7C 02 A0 */	stw r3, 0x2a0(r28)
/* 805AC398  93 BC 02 B8 */	stw r29, 0x2b8(r28)
/* 805AC39C  90 1C 02 B4 */	stw r0, 0x2b4(r28)
/* 805AC3A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805AC3A4  4B AE EB 79 */	bl func_8009AF1C
/* 805AC3A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AC3AC  7C 08 03 A6 */	mtlr r0
/* 805AC3B0  38 21 00 20 */	addi r1, r1, 0x20
/* 805AC3B4  4E 80 00 20 */	blr 
