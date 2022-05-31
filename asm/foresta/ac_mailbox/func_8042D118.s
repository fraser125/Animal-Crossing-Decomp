lbl_8042D118:
/* 8042D118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042D11C  7C 08 02 A6 */	mflr r0
/* 8042D120  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042D124  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D128  4B C6 DD A9 */	bl func_8009AED0
/* 8042D12C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8042D130  7C 7F 1B 78 */	mr r31, r3
/* 8042D134  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8042D138  A0 DF 00 06 */	lhz r6, 6(r31)
/* 8042D13C  3C A5 00 02 */	addis r5, r5, 2
/* 8042D140  3C 60 80 68 */	lis r3, aMBX_skeleton@ha /* 0x806849DC@ha */
/* 8042D144  80 05 61 10 */	lwz r0, 0x6110(r5)
/* 8042D148  3F C6 FF FF */	addis r30, r6, 0xffff
/* 8042D14C  38 A3 49 DC */	addi r5, r3, aMBX_skeleton@l /* 0x806849DC@l */
/* 8042D150  7C 9C 23 78 */	mr r28, r4
/* 8042D154  20 00 00 03 */	subfic r0, r0, 3
/* 8042D158  38 7F 01 7C */	addi r3, r31, 0x17c
/* 8042D15C  7C 00 00 34 */	cntlzw r0, r0
/* 8042D160  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 8042D164  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 8042D168  38 FF 02 16 */	addi r7, r31, 0x216
/* 8042D16C  7F A5 00 2E */	lwzx r29, r5, r0
/* 8042D170  38 A0 00 00 */	li r5, 0
/* 8042D174  3B DE 60 00 */	addi r30, r30, 0x6000
/* 8042D178  7F A4 EB 78 */	mr r4, r29
/* 8042D17C  4B F4 39 19 */	bl cKF_SkeletonInfo_R_ct
/* 8042D180  7F A4 EB 78 */	mr r4, r29
/* 8042D184  38 7F 02 48 */	addi r3, r31, 0x248
/* 8042D188  38 DF 02 B8 */	addi r6, r31, 0x2b8
/* 8042D18C  38 FF 02 E2 */	addi r7, r31, 0x2e2
/* 8042D190  38 A0 00 00 */	li r5, 0
/* 8042D194  4B F4 39 01 */	bl cKF_SkeletonInfo_R_ct
/* 8042D198  A8 9F 00 26 */	lha r4, 0x26(r31)
/* 8042D19C  3C 60 80 68 */	lis r3, angle_table@ha /* 0x806849E4@ha */
/* 8042D1A0  38 A0 00 07 */	li r5, 7
/* 8042D1A4  57 C0 08 3C */	slwi r0, r30, 1
/* 8042D1A8  1C C4 00 5C */	mulli r6, r4, 0x5c
/* 8042D1AC  38 83 49 E4 */	addi r4, r3, angle_table@l /* 0x806849E4@l */
/* 8042D1B0  7F E3 FB 78 */	mr r3, r31
/* 8042D1B4  38 C6 01 14 */	addi r6, r6, 0x114
/* 8042D1B8  7C DC 30 2E */	lwzx r6, r28, r6
/* 8042D1BC  90 DF 01 74 */	stw r6, 0x174(r31)
/* 8042D1C0  90 BF 02 40 */	stw r5, 0x240(r31)
/* 8042D1C4  93 DF 03 18 */	stw r30, 0x318(r31)
/* 8042D1C8  90 BF 03 0C */	stw r5, 0x30c(r31)
/* 8042D1CC  7C 04 02 AE */	lhax r0, r4, r0
/* 8042D1D0  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8042D1D4  48 00 03 F9 */	bl aMBX_check_flag
/* 8042D1D8  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 8042D1DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D1E0  D0 1F 01 8C */	stfs f0, 0x18c(r31)
/* 8042D1E4  4B C6 DD 39 */	bl func_8009AF1C
/* 8042D1E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042D1EC  7C 08 03 A6 */	mtlr r0
/* 8042D1F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8042D1F4  4E 80 00 20 */	blr 
