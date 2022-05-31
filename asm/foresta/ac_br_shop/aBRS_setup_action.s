lbl_805A8DFC:
/* 805A8DFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A8E00  7C 08 02 A6 */	mflr r0
/* 805A8E04  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A8E08  39 61 00 20 */	addi r11, r1, 0x20
/* 805A8E0C  4B AF 20 C5 */	bl func_8009AED0
/* 805A8E10  7C 7C 1B 78 */	mr r28, r3
/* 805A8E14  3C 60 80 6C */	lis r3, data_806C4460@ha /* 0x806C4460@ha */
/* 805A8E18  3B E3 44 60 */	addi r31, r3, data_806C4460@l /* 0x806C4460@l */
/* 805A8E1C  80 1C 02 D8 */	lwz r0, 0x2d8(r28)
/* 805A8E20  7C 9D 23 78 */	mr r29, r4
/* 805A8E24  54 9E 10 3A */	slwi r30, r4, 2
/* 805A8E28  38 9F 00 EC */	addi r4, r31, 0xec
/* 805A8E2C  20 00 00 03 */	subfic r0, r0, 3
/* 805A8E30  7C 24 F4 2E */	lfsx f1, r4, r30
/* 805A8E34  3C 60 80 65 */	lis r3, lit_472@ha /* 0x8064A550@ha */
/* 805A8E38  39 03 A5 50 */	addi r8, r3, lit_472@l /* 0x8064A550@l */
/* 805A8E3C  7C 00 00 34 */	cntlzw r0, r0
/* 805A8E40  38 DF 00 FC */	addi r6, r31, 0xfc
/* 805A8E44  38 FF 01 0C */	addi r7, r31, 0x10c
/* 805A8E48  7C 46 F4 2E */	lfsx f2, r6, r30
/* 805A8E4C  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805A8E50  38 BF 00 E4 */	addi r5, r31, 0xe4
/* 805A8E54  7C 87 F4 2E */	lfsx f4, r7, r30
/* 805A8E58  FC 60 08 90 */	fmr f3, f1
/* 805A8E5C  80 9C 01 90 */	lwz r4, 0x190(r28)
/* 805A8E60  7C A5 00 2E */	lwzx r5, r5, r0
/* 805A8E64  38 7C 01 78 */	addi r3, r28, 0x178
/* 805A8E68  C0 A8 00 00 */	lfs f5, 0(r8)
/* 805A8E6C  38 C0 00 00 */	li r6, 0
/* 805A8E70  38 E0 00 00 */	li r7, 0
/* 805A8E74  4B DC 7E 61 */	bl cKF_SkeletonInfo_R_init
/* 805A8E78  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 805A8E7C  7C 03 F0 2E */	lwzx r0, r3, r30
/* 805A8E80  90 1C 02 A0 */	stw r0, 0x2a0(r28)
/* 805A8E84  93 BC 02 B4 */	stw r29, 0x2b4(r28)
/* 805A8E88  39 61 00 20 */	addi r11, r1, 0x20
/* 805A8E8C  4B AF 20 91 */	bl func_8009AF1C
/* 805A8E90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A8E94  7C 08 03 A6 */	mtlr r0
/* 805A8E98  38 21 00 20 */	addi r1, r1, 0x20
/* 805A8E9C  4E 80 00 20 */	blr 
