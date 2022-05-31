lbl_805B9ECC:
/* 805B9ECC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B9ED0  7C 08 02 A6 */	mflr r0
/* 805B9ED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9ED8  39 61 00 20 */	addi r11, r1, 0x20
/* 805B9EDC  4B AE 0F F5 */	bl func_8009AED0
/* 805B9EE0  80 03 02 D8 */	lwz r0, 0x2d8(r3)
/* 805B9EE4  7C 9F 23 78 */	mr r31, r4
/* 805B9EE8  7C 7E 1B 78 */	mr r30, r3
/* 805B9EEC  3C 60 80 6C */	lis r3, data_806C65D0@ha /* 0x806C65D0@ha */
/* 805B9EF0  20 00 00 03 */	subfic r0, r0, 3
/* 805B9EF4  3C 80 80 65 */	lis r4, lit_646@ha /* 0x8064AAC0@ha */
/* 805B9EF8  3B A3 65 D0 */	addi r29, r3, data_806C65D0@l /* 0x806C65D0@l */
/* 805B9EFC  3C 60 80 65 */	lis r3, lit_522@ha /* 0x8064AAB0@ha */
/* 805B9F00  39 44 AA C0 */	addi r10, r4, lit_646@l /* 0x8064AAC0@l */
/* 805B9F04  7C 00 00 34 */	cntlzw r0, r0
/* 805B9F08  39 03 AA B0 */	addi r8, r3, lit_522@l /* 0x8064AAB0@l */
/* 805B9F0C  57 FC 10 3A */	slwi r28, r31, 2
/* 805B9F10  38 DD 01 38 */	addi r6, r29, 0x138
/* 805B9F14  38 FD 01 24 */	addi r7, r29, 0x124
/* 805B9F18  39 3D 01 10 */	addi r9, r29, 0x110
/* 805B9F1C  7C 46 E4 2E */	lfsx f2, r6, r28
/* 805B9F20  7C 67 E4 2E */	lfsx f3, r7, r28
/* 805B9F24  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805B9F28  38 7D 01 08 */	addi r3, r29, 0x108
/* 805B9F2C  80 9E 01 90 */	lwz r4, 0x190(r30)
/* 805B9F30  7C A3 00 2E */	lwzx r5, r3, r0
/* 805B9F34  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B9F38  C0 2A 00 00 */	lfs f1, 0(r10)
/* 805B9F3C  38 C0 00 00 */	li r6, 0
/* 805B9F40  7C 89 E4 2E */	lfsx f4, r9, r28
/* 805B9F44  38 E0 00 00 */	li r7, 0
/* 805B9F48  C0 A8 00 00 */	lfs f5, 0(r8)
/* 805B9F4C  4B DB 6D 89 */	bl cKF_SkeletonInfo_R_init
/* 805B9F50  38 7D 01 4C */	addi r3, r29, 0x14c
/* 805B9F54  7C 03 E0 2E */	lwzx r0, r3, r28
/* 805B9F58  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 805B9F5C  93 FE 02 B4 */	stw r31, 0x2b4(r30)
/* 805B9F60  39 61 00 20 */	addi r11, r1, 0x20
/* 805B9F64  4B AE 0F B9 */	bl func_8009AF1C
/* 805B9F68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B9F6C  7C 08 03 A6 */	mtlr r0
/* 805B9F70  38 21 00 20 */	addi r1, r1, 0x20
/* 805B9F74  4E 80 00 20 */	blr 
