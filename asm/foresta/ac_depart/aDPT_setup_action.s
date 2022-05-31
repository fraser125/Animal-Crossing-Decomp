lbl_805AD138:
/* 805AD138  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AD13C  7C 08 02 A6 */	mflr r0
/* 805AD140  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AD144  39 61 00 20 */	addi r11, r1, 0x20
/* 805AD148  4B AE DD 89 */	bl func_8009AED0
/* 805AD14C  80 03 02 D8 */	lwz r0, 0x2d8(r3)
/* 805AD150  7C 9F 23 78 */	mr r31, r4
/* 805AD154  7C 7E 1B 78 */	mr r30, r3
/* 805AD158  3C 60 80 6C */	lis r3, data_806C4AA8@ha /* 0x806C4AA8@ha */
/* 805AD15C  20 00 00 03 */	subfic r0, r0, 3
/* 805AD160  3C 80 80 65 */	lis r4, lit_550@ha /* 0x8064A6BC@ha */
/* 805AD164  3B A3 4A A8 */	addi r29, r3, data_806C4AA8@l /* 0x806C4AA8@l */
/* 805AD168  3C 60 80 65 */	lis r3, lit_488@ha /* 0x8064A6A8@ha */
/* 805AD16C  39 44 A6 BC */	addi r10, r4, lit_550@l /* 0x8064A6BC@l */
/* 805AD170  7C 00 00 34 */	cntlzw r0, r0
/* 805AD174  39 03 A6 A8 */	addi r8, r3, lit_488@l /* 0x8064A6A8@l */
/* 805AD178  57 FC 10 3A */	slwi r28, r31, 2
/* 805AD17C  38 DD 02 18 */	addi r6, r29, 0x218
/* 805AD180  38 FD 02 04 */	addi r7, r29, 0x204
/* 805AD184  39 3D 01 F0 */	addi r9, r29, 0x1f0
/* 805AD188  7C 46 E4 2E */	lfsx f2, r6, r28
/* 805AD18C  7C 67 E4 2E */	lfsx f3, r7, r28
/* 805AD190  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805AD194  38 7D 01 E8 */	addi r3, r29, 0x1e8
/* 805AD198  80 9E 01 90 */	lwz r4, 0x190(r30)
/* 805AD19C  7C A3 00 2E */	lwzx r5, r3, r0
/* 805AD1A0  38 7E 01 78 */	addi r3, r30, 0x178
/* 805AD1A4  C0 2A 00 00 */	lfs f1, 0(r10)
/* 805AD1A8  38 C0 00 00 */	li r6, 0
/* 805AD1AC  7C 89 E4 2E */	lfsx f4, r9, r28
/* 805AD1B0  38 E0 00 00 */	li r7, 0
/* 805AD1B4  C0 A8 00 00 */	lfs f5, 0(r8)
/* 805AD1B8  4B DC 3B 1D */	bl cKF_SkeletonInfo_R_init
/* 805AD1BC  2C 1F 00 03 */	cmpwi r31, 3
/* 805AD1C0  41 82 00 24 */	beq lbl_805AD1E4
/* 805AD1C4  40 80 00 2C */	bge lbl_805AD1F0
/* 805AD1C8  2C 1F 00 02 */	cmpwi r31, 2
/* 805AD1CC  40 80 00 08 */	bge lbl_805AD1D4
/* 805AD1D0  48 00 00 20 */	b lbl_805AD1F0
lbl_805AD1D4:
/* 805AD1D4  7F C3 F3 78 */	mr r3, r30
/* 805AD1D8  38 80 04 4C */	li r4, 0x44c
/* 805AD1DC  4B FF F7 FD */	bl func_805AC9D8
/* 805AD1E0  48 00 00 10 */	b lbl_805AD1F0
lbl_805AD1E4:
/* 805AD1E4  7F C3 F3 78 */	mr r3, r30
/* 805AD1E8  38 80 04 4B */	li r4, 0x44b
/* 805AD1EC  4B FF F7 ED */	bl func_805AC9D8
lbl_805AD1F0:
/* 805AD1F0  38 7D 02 2C */	addi r3, r29, 0x22c
/* 805AD1F4  7C 03 E0 2E */	lwzx r0, r3, r28
/* 805AD1F8  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 805AD1FC  93 FE 02 B4 */	stw r31, 0x2b4(r30)
/* 805AD200  39 61 00 20 */	addi r11, r1, 0x20
/* 805AD204  4B AE DD 19 */	bl func_8009AF1C
/* 805AD208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AD20C  7C 08 03 A6 */	mtlr r0
/* 805AD210  38 21 00 20 */	addi r1, r1, 0x20
/* 805AD214  4E 80 00 20 */	blr 
