lbl_803870E8:
/* 803870E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803870EC  7C 08 02 A6 */	mflr r0
/* 803870F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803870F4  39 61 00 30 */	addi r11, r1, 0x30
/* 803870F8  4B D1 3D D1 */	bl func_8009AEC8
/* 803870FC  3D 20 80 64 */	lis r9, lit_2457@ha /* 0x80641A90@ha */
/* 80387100  C0 27 00 48 */	lfs f1, 0x48(r7)
/* 80387104  C0 09 1A 90 */	lfs f0, lit_2457@l(r9)  /* 0x80641A90@l */
/* 80387108  7C 9B 23 78 */	mr r27, r4
/* 8038710C  7C 7A 1B 78 */	mr r26, r3
/* 80387110  7C FE 3B 78 */	mr r30, r7
/* 80387114  EC 21 00 28 */	fsubs f1, f1, f0
/* 80387118  7C BC 2B 78 */	mr r28, r5
/* 8038711C  7C DD 33 78 */	mr r29, r6
/* 80387120  7D 1F 43 78 */	mr r31, r8
/* 80387124  38 7B 00 10 */	addi r3, r27, 0x10
/* 80387128  4B FF F7 8D */	bl mCoBG_RoughCheckWallHeight
/* 8038712C  2C 03 00 00 */	cmpwi r3, 0
/* 80387130  41 82 00 C0 */	beq lbl_803871F0
/* 80387134  3C 60 80 64 */	lis r3, lit_2457@ha /* 0x80641A90@ha */
/* 80387138  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8038713C  C0 03 1A 90 */	lfs f0, lit_2457@l(r3)  /* 0x80641A90@l */
/* 80387140  7F 64 DB 78 */	mr r4, r27
/* 80387144  7F 85 E3 78 */	mr r5, r28
/* 80387148  38 61 00 0C */	addi r3, r1, 0xc
/* 8038714C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80387150  4B FF F8 6D */	bl mCoBG_CheckHeightExactly
/* 80387154  2C 03 00 00 */	cmpwi r3, 0
/* 80387158  41 82 00 98 */	beq lbl_803871F0
/* 8038715C  7F 83 E3 78 */	mr r3, r28
/* 80387160  7F A4 EB 78 */	mr r4, r29
/* 80387164  7F 65 DB 78 */	mr r5, r27
/* 80387168  38 DB 00 08 */	addi r6, r27, 8
/* 8038716C  48 00 36 D1 */	bl mCoBG_GetCrossJudge_2Vector
/* 80387170  2C 03 00 00 */	cmpwi r3, 0
/* 80387174  41 82 00 7C */	beq lbl_803871F0
/* 80387178  7F 64 DB 78 */	mr r4, r27
/* 8038717C  7F A7 EB 78 */	mr r7, r29
/* 80387180  38 61 00 08 */	addi r3, r1, 8
/* 80387184  38 BB 00 08 */	addi r5, r27, 8
/* 80387188  38 DB 00 20 */	addi r6, r27, 0x20
/* 8038718C  48 00 3A 71 */	bl mCoBG_GetDistPointAndLine2D_Norm
/* 80387190  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80387194  3C 60 80 64 */	lis r3, lit_2458@ha /* 0x80641A94@ha */
/* 80387198  C0 01 00 08 */	lfs f0, 8(r1)
/* 8038719C  38 9E 00 58 */	addi r4, r30, 0x58
/* 803871A0  C0 43 1A 94 */	lfs f2, lit_2458@l(r3)  /* 0x80641A94@l */
/* 803871A4  7F C3 F3 78 */	mr r3, r30
/* 803871A8  EC 21 00 2A */	fadds f1, f1, f0
/* 803871AC  C0 1B 00 20 */	lfs f0, 0x20(r27)
/* 803871B0  38 A1 00 0C */	addi r5, r1, 0xc
/* 803871B4  EC 22 08 2A */	fadds f1, f2, f1
/* 803871B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803871BC  D0 1A 00 00 */	stfs f0, 0(r26)
/* 803871C0  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 803871C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803871C8  D0 1A 00 04 */	stfs f0, 4(r26)
/* 803871CC  A8 DB 00 28 */	lha r6, 0x28(r27)
/* 803871D0  88 FB 00 30 */	lbz r7, 0x30(r27)
/* 803871D4  4B FF F6 05 */	bl mCoBG_RegistCollisionWallInfo
/* 803871D8  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 803871DC  28 03 00 00 */	cmplwi r3, 0
/* 803871E0  41 82 00 10 */	beq lbl_803871F0
/* 803871E4  A8 BB 00 28 */	lha r5, 0x28(r27)
/* 803871E8  7F E4 FB 78 */	mr r4, r31
/* 803871EC  48 00 5E 69 */	bl mCoBG_SetMoveBgContactSide
lbl_803871F0:
/* 803871F0  39 61 00 30 */	addi r11, r1, 0x30
/* 803871F4  4B D1 3D 21 */	bl func_8009AF14
/* 803871F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803871FC  7C 08 03 A6 */	mtlr r0
/* 80387200  38 21 00 30 */	addi r1, r1, 0x30
/* 80387204  4E 80 00 20 */	blr 
