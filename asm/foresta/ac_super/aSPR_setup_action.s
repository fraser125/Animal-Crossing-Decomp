lbl_805BD898:
/* 805BD898  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BD89C  7C 08 02 A6 */	mflr r0
/* 805BD8A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BD8A4  39 61 00 20 */	addi r11, r1, 0x20
/* 805BD8A8  4B AD D6 29 */	bl func_8009AED0
/* 805BD8AC  80 03 02 D8 */	lwz r0, 0x2d8(r3)
/* 805BD8B0  7C 9F 23 78 */	mr r31, r4
/* 805BD8B4  7C 7E 1B 78 */	mr r30, r3
/* 805BD8B8  3C 60 80 6C */	lis r3, data_806C6DD0@ha /* 0x806C6DD0@ha */
/* 805BD8BC  20 00 00 03 */	subfic r0, r0, 3
/* 805BD8C0  3C 80 80 65 */	lis r4, lit_550@ha /* 0x8064AB74@ha */
/* 805BD8C4  3B A3 6D D0 */	addi r29, r3, data_806C6DD0@l /* 0x806C6DD0@l */
/* 805BD8C8  3C 60 80 65 */	lis r3, lit_488@ha /* 0x8064AB60@ha */
/* 805BD8CC  39 44 AB 74 */	addi r10, r4, lit_550@l /* 0x8064AB74@l */
/* 805BD8D0  7C 00 00 34 */	cntlzw r0, r0
/* 805BD8D4  39 03 AB 60 */	addi r8, r3, lit_488@l /* 0x8064AB60@l */
/* 805BD8D8  57 FC 10 3A */	slwi r28, r31, 2
/* 805BD8DC  38 DD 02 10 */	addi r6, r29, 0x210
/* 805BD8E0  38 FD 01 FC */	addi r7, r29, 0x1fc
/* 805BD8E4  39 3D 01 E8 */	addi r9, r29, 0x1e8
/* 805BD8E8  7C 46 E4 2E */	lfsx f2, r6, r28
/* 805BD8EC  7C 67 E4 2E */	lfsx f3, r7, r28
/* 805BD8F0  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805BD8F4  38 7D 01 E0 */	addi r3, r29, 0x1e0
/* 805BD8F8  80 9E 01 90 */	lwz r4, 0x190(r30)
/* 805BD8FC  7C A3 00 2E */	lwzx r5, r3, r0
/* 805BD900  38 7E 01 78 */	addi r3, r30, 0x178
/* 805BD904  C0 2A 00 00 */	lfs f1, 0(r10)
/* 805BD908  38 C0 00 00 */	li r6, 0
/* 805BD90C  7C 89 E4 2E */	lfsx f4, r9, r28
/* 805BD910  38 E0 00 00 */	li r7, 0
/* 805BD914  C0 A8 00 00 */	lfs f5, 0(r8)
/* 805BD918  4B DB 33 BD */	bl cKF_SkeletonInfo_R_init
/* 805BD91C  2C 1F 00 03 */	cmpwi r31, 3
/* 805BD920  41 82 00 24 */	beq lbl_805BD944
/* 805BD924  40 80 00 2C */	bge lbl_805BD950
/* 805BD928  2C 1F 00 02 */	cmpwi r31, 2
/* 805BD92C  40 80 00 08 */	bge lbl_805BD934
/* 805BD930  48 00 00 20 */	b lbl_805BD950
lbl_805BD934:
/* 805BD934  7F C3 F3 78 */	mr r3, r30
/* 805BD938  38 80 04 4C */	li r4, 0x44c
/* 805BD93C  4B FF F7 FD */	bl func_805BD138
/* 805BD940  48 00 00 10 */	b lbl_805BD950
lbl_805BD944:
/* 805BD944  7F C3 F3 78 */	mr r3, r30
/* 805BD948  38 80 04 4B */	li r4, 0x44b
/* 805BD94C  4B FF F7 ED */	bl func_805BD138
lbl_805BD950:
/* 805BD950  38 7D 02 24 */	addi r3, r29, 0x224
/* 805BD954  7C 03 E0 2E */	lwzx r0, r3, r28
/* 805BD958  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 805BD95C  93 FE 02 B4 */	stw r31, 0x2b4(r30)
/* 805BD960  39 61 00 20 */	addi r11, r1, 0x20
/* 805BD964  4B AD D5 B9 */	bl func_8009AF1C
/* 805BD968  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BD96C  7C 08 03 A6 */	mtlr r0
/* 805BD970  38 21 00 20 */	addi r1, r1, 0x20
/* 805BD974  4E 80 00 20 */	blr 
