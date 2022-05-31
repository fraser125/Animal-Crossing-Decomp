lbl_8038773C:
/* 8038773C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80387740  7C 08 02 A6 */	mflr r0
/* 80387744  90 01 00 54 */	stw r0, 0x54(r1)
/* 80387748  39 61 00 50 */	addi r11, r1, 0x50
/* 8038774C  4B D1 37 7D */	bl func_8009AEC8
/* 80387750  7C 9B 23 78 */	mr r27, r4
/* 80387754  7C DD 33 78 */	mr r29, r6
/* 80387758  7C 7A 1B 78 */	mr r26, r3
/* 8038775C  7C BC 2B 78 */	mr r28, r5
/* 80387760  7C FE 3B 78 */	mr r30, r7
/* 80387764  7D 1F 43 78 */	mr r31, r8
/* 80387768  7F 63 DB 78 */	mr r3, r27
/* 8038776C  7F A4 EB 78 */	mr r4, r29
/* 80387770  38 BB 00 20 */	addi r5, r27, 0x20
/* 80387774  48 00 34 35 */	bl mCoBG_GetPointInfoFrontLine
/* 80387778  2C 03 00 00 */	cmpwi r3, 0
/* 8038777C  41 82 02 08 */	beq lbl_80387984
/* 80387780  7F 63 DB 78 */	mr r3, r27
/* 80387784  7F 84 E3 78 */	mr r4, r28
/* 80387788  38 BB 00 20 */	addi r5, r27, 0x20
/* 8038778C  48 00 34 1D */	bl mCoBG_GetPointInfoFrontLine
/* 80387790  2C 03 00 00 */	cmpwi r3, 0
/* 80387794  41 82 01 F0 */	beq lbl_80387984
/* 80387798  7F 64 DB 78 */	mr r4, r27
/* 8038779C  7F A7 EB 78 */	mr r7, r29
/* 803877A0  38 61 00 08 */	addi r3, r1, 8
/* 803877A4  38 BB 00 08 */	addi r5, r27, 8
/* 803877A8  38 DB 00 20 */	addi r6, r27, 0x20
/* 803877AC  48 00 34 51 */	bl mCoBG_GetDistPointAndLine2D_Norm
/* 803877B0  C0 01 00 08 */	lfs f0, 8(r1)
/* 803877B4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 803877B8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803877BC  40 80 01 C8 */	bge lbl_80387984
/* 803877C0  7F 63 DB 78 */	mr r3, r27
/* 803877C4  7F A4 EB 78 */	mr r4, r29
/* 803877C8  48 00 38 59 */	bl mCoBG_JudgePointInCircle
/* 803877CC  2C 03 00 00 */	cmpwi r3, 0
/* 803877D0  41 82 00 D0 */	beq lbl_803878A0
/* 803877D4  7F 63 DB 78 */	mr r3, r27
/* 803877D8  7F A4 EB 78 */	mr r4, r29
/* 803877DC  4B FF FE 31 */	bl mCoBG_CheckDistSPCheck
/* 803877E0  2C 03 00 00 */	cmpwi r3, 0
/* 803877E4  40 82 00 0C */	bne lbl_803877F0
/* 803877E8  38 60 00 00 */	li r3, 0
/* 803877EC  48 00 01 9C */	b lbl_80387988
lbl_803877F0:
/* 803877F0  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 803877F4  7F 65 DB 78 */	mr r5, r27
/* 803877F8  7F A7 EB 78 */	mr r7, r29
/* 803877FC  38 61 00 24 */	addi r3, r1, 0x24
/* 80387800  38 81 00 1C */	addi r4, r1, 0x1c
/* 80387804  38 DB 00 20 */	addi r6, r27, 0x20
/* 80387808  48 00 34 59 */	bl mCoBG_GetCrossCircleAndLine2Dvector
/* 8038780C  2C 03 00 00 */	cmpwi r3, 0
/* 80387810  41 82 01 74 */	beq lbl_80387984
/* 80387814  C0 7B 00 10 */	lfs f3, 0x10(r27)
/* 80387818  3C 60 80 64 */	lis r3, lit_2457@ha /* 0x80641A90@ha */
/* 8038781C  3C 80 80 64 */	lis r4, lit_2058@ha /* 0x80641A78@ha */
/* 80387820  C0 03 1A 90 */	lfs f0, lit_2457@l(r3)  /* 0x80641A90@l */
/* 80387824  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80387828  C0 44 1A 78 */	lfs f2, lit_2058@l(r4)  /* 0x80641A78@l */
/* 8038782C  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 80387830  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80387834  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80387838  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038783C  EC 02 00 2A */	fadds f0, f2, f0
/* 80387840  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80387844  4C 40 13 82 */	cror 2, 0, 2
/* 80387848  40 82 01 3C */	bne lbl_80387984
/* 8038784C  7F 43 D3 78 */	mr r3, r26
/* 80387850  7F A4 EB 78 */	mr r4, r29
/* 80387854  7F 65 DB 78 */	mr r5, r27
/* 80387858  7F 68 DB 78 */	mr r8, r27
/* 8038785C  38 C1 00 24 */	addi r6, r1, 0x24
/* 80387860  38 E1 00 1C */	addi r7, r1, 0x1c
/* 80387864  4B FF FC F5 */	bl mCoBG_GetSpecialDistanceReverse
/* 80387868  A8 DB 00 28 */	lha r6, 0x28(r27)
/* 8038786C  7F C3 F3 78 */	mr r3, r30
/* 80387870  88 FB 00 30 */	lbz r7, 0x30(r27)
/* 80387874  38 9E 00 58 */	addi r4, r30, 0x58
/* 80387878  38 A1 00 14 */	addi r5, r1, 0x14
/* 8038787C  4B FF EF 5D */	bl mCoBG_RegistCollisionWallInfo
/* 80387880  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 80387884  28 03 00 00 */	cmplwi r3, 0
/* 80387888  41 82 00 10 */	beq lbl_80387898
/* 8038788C  A8 BB 00 28 */	lha r5, 0x28(r27)
/* 80387890  7F E4 FB 78 */	mr r4, r31
/* 80387894  48 00 57 C1 */	bl mCoBG_SetMoveBgContactSide
lbl_80387898:
/* 80387898  38 60 00 01 */	li r3, 1
/* 8038789C  48 00 00 EC */	b lbl_80387988
lbl_803878A0:
/* 803878A0  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 803878A4  7F A4 EB 78 */	mr r4, r29
/* 803878A8  38 7B 00 08 */	addi r3, r27, 8
/* 803878AC  48 00 37 75 */	bl mCoBG_JudgePointInCircle
/* 803878B0  2C 03 00 00 */	cmpwi r3, 0
/* 803878B4  41 82 00 D0 */	beq lbl_80387984
/* 803878B8  7F 63 DB 78 */	mr r3, r27
/* 803878BC  7F A4 EB 78 */	mr r4, r29
/* 803878C0  4B FF FD 4D */	bl mCoBG_CheckDistSPCheck
/* 803878C4  2C 03 00 00 */	cmpwi r3, 0
/* 803878C8  40 82 00 0C */	bne lbl_803878D4
/* 803878CC  38 60 00 00 */	li r3, 0
/* 803878D0  48 00 00 B8 */	b lbl_80387988
lbl_803878D4:
/* 803878D4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 803878D8  7F A7 EB 78 */	mr r7, r29
/* 803878DC  38 61 00 24 */	addi r3, r1, 0x24
/* 803878E0  38 81 00 1C */	addi r4, r1, 0x1c
/* 803878E4  38 BB 00 08 */	addi r5, r27, 8
/* 803878E8  38 DB 00 20 */	addi r6, r27, 0x20
/* 803878EC  48 00 33 75 */	bl mCoBG_GetCrossCircleAndLine2Dvector
/* 803878F0  2C 03 00 00 */	cmpwi r3, 0
/* 803878F4  41 82 00 90 */	beq lbl_80387984
/* 803878F8  C0 7B 00 18 */	lfs f3, 0x18(r27)
/* 803878FC  3C 60 80 64 */	lis r3, lit_2457@ha /* 0x80641A90@ha */
/* 80387900  3C 80 80 64 */	lis r4, lit_2058@ha /* 0x80641A78@ha */
/* 80387904  C0 03 1A 90 */	lfs f0, lit_2457@l(r3)  /* 0x80641A90@l */
/* 80387908  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8038790C  C0 44 1A 78 */	lfs f2, lit_2058@l(r4)  /* 0x80641A78@l */
/* 80387910  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 80387914  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80387918  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8038791C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80387920  EC 02 00 2A */	fadds f0, f2, f0
/* 80387924  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80387928  4C 40 13 82 */	cror 2, 0, 2
/* 8038792C  40 82 00 58 */	bne lbl_80387984
/* 80387930  7F 43 D3 78 */	mr r3, r26
/* 80387934  7F A4 EB 78 */	mr r4, r29
/* 80387938  7F 65 DB 78 */	mr r5, r27
/* 8038793C  38 C1 00 24 */	addi r6, r1, 0x24
/* 80387940  38 E1 00 1C */	addi r7, r1, 0x1c
/* 80387944  39 1B 00 08 */	addi r8, r27, 8
/* 80387948  4B FF FC 11 */	bl mCoBG_GetSpecialDistanceReverse
/* 8038794C  A8 DB 00 28 */	lha r6, 0x28(r27)
/* 80387950  7F C3 F3 78 */	mr r3, r30
/* 80387954  88 FB 00 30 */	lbz r7, 0x30(r27)
/* 80387958  38 9E 00 58 */	addi r4, r30, 0x58
/* 8038795C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80387960  4B FF EE 79 */	bl mCoBG_RegistCollisionWallInfo
/* 80387964  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 80387968  28 03 00 00 */	cmplwi r3, 0
/* 8038796C  41 82 00 10 */	beq lbl_8038797C
/* 80387970  A8 BB 00 28 */	lha r5, 0x28(r27)
/* 80387974  7F E4 FB 78 */	mr r4, r31
/* 80387978  48 00 56 DD */	bl mCoBG_SetMoveBgContactSide
lbl_8038797C:
/* 8038797C  38 60 00 01 */	li r3, 1
/* 80387980  48 00 00 08 */	b lbl_80387988
lbl_80387984:
/* 80387984  38 60 00 00 */	li r3, 0
lbl_80387988:
/* 80387988  39 61 00 50 */	addi r11, r1, 0x50
/* 8038798C  4B D1 35 89 */	bl func_8009AF14
/* 80387990  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80387994  7C 08 03 A6 */	mtlr r0
/* 80387998  38 21 00 50 */	addi r1, r1, 0x50
/* 8038799C  4E 80 00 20 */	blr 
