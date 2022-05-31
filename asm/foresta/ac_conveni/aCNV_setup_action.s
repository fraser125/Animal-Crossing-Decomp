lbl_805AB35C:
/* 805AB35C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AB360  7C 08 02 A6 */	mflr r0
/* 805AB364  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AB368  39 61 00 20 */	addi r11, r1, 0x20
/* 805AB36C  4B AE FB 65 */	bl func_8009AED0
/* 805AB370  80 03 02 D8 */	lwz r0, 0x2d8(r3)
/* 805AB374  7C 9F 23 78 */	mr r31, r4
/* 805AB378  7C 7E 1B 78 */	mr r30, r3
/* 805AB37C  3C 60 80 6C */	lis r3, data_806C4758@ha /* 0x806C4758@ha */
/* 805AB380  20 00 00 03 */	subfic r0, r0, 3
/* 805AB384  3C 80 80 65 */	lis r4, lit_550@ha /* 0x8064A644@ha */
/* 805AB388  3B A3 47 58 */	addi r29, r3, data_806C4758@l /* 0x806C4758@l */
/* 805AB38C  3C 60 80 65 */	lis r3, lit_488@ha /* 0x8064A630@ha */
/* 805AB390  39 44 A6 44 */	addi r10, r4, lit_550@l /* 0x8064A644@l */
/* 805AB394  7C 00 00 34 */	cntlzw r0, r0
/* 805AB398  39 03 A6 30 */	addi r8, r3, lit_488@l /* 0x8064A630@l */
/* 805AB39C  57 FC 10 3A */	slwi r28, r31, 2
/* 805AB3A0  38 DD 01 B0 */	addi r6, r29, 0x1b0
/* 805AB3A4  38 FD 01 9C */	addi r7, r29, 0x19c
/* 805AB3A8  39 3D 01 88 */	addi r9, r29, 0x188
/* 805AB3AC  7C 46 E4 2E */	lfsx f2, r6, r28
/* 805AB3B0  7C 67 E4 2E */	lfsx f3, r7, r28
/* 805AB3B4  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805AB3B8  38 7D 01 80 */	addi r3, r29, 0x180
/* 805AB3BC  80 9E 01 90 */	lwz r4, 0x190(r30)
/* 805AB3C0  7C A3 00 2E */	lwzx r5, r3, r0
/* 805AB3C4  38 7E 01 78 */	addi r3, r30, 0x178
/* 805AB3C8  C0 2A 00 00 */	lfs f1, 0(r10)
/* 805AB3CC  38 C0 00 00 */	li r6, 0
/* 805AB3D0  7C 89 E4 2E */	lfsx f4, r9, r28
/* 805AB3D4  38 E0 00 00 */	li r7, 0
/* 805AB3D8  C0 A8 00 00 */	lfs f5, 0(r8)
/* 805AB3DC  4B DC 58 F9 */	bl cKF_SkeletonInfo_R_init
/* 805AB3E0  2C 1F 00 03 */	cmpwi r31, 3
/* 805AB3E4  41 82 00 24 */	beq lbl_805AB408
/* 805AB3E8  40 80 00 2C */	bge lbl_805AB414
/* 805AB3EC  2C 1F 00 02 */	cmpwi r31, 2
/* 805AB3F0  40 80 00 08 */	bge lbl_805AB3F8
/* 805AB3F4  48 00 00 20 */	b lbl_805AB414
lbl_805AB3F8:
/* 805AB3F8  7F C3 F3 78 */	mr r3, r30
/* 805AB3FC  38 80 04 4C */	li r4, 0x44c
/* 805AB400  4B FF F7 FD */	bl func_805AABFC
/* 805AB404  48 00 00 10 */	b lbl_805AB414
lbl_805AB408:
/* 805AB408  7F C3 F3 78 */	mr r3, r30
/* 805AB40C  38 80 04 4B */	li r4, 0x44b
/* 805AB410  4B FF F7 ED */	bl func_805AABFC
lbl_805AB414:
/* 805AB414  38 7D 01 C4 */	addi r3, r29, 0x1c4
/* 805AB418  7C 03 E0 2E */	lwzx r0, r3, r28
/* 805AB41C  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 805AB420  93 FE 02 B4 */	stw r31, 0x2b4(r30)
/* 805AB424  39 61 00 20 */	addi r11, r1, 0x20
/* 805AB428  4B AE FA F5 */	bl func_8009AF1C
/* 805AB42C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AB430  7C 08 03 A6 */	mtlr r0
/* 805AB434  38 21 00 20 */	addi r1, r1, 0x20
/* 805AB438  4E 80 00 20 */	blr 
