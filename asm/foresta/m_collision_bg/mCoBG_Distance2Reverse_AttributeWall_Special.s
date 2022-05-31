lbl_80387AA0:
/* 80387AA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80387AA4  7C 08 02 A6 */	mflr r0
/* 80387AA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80387AAC  39 61 00 40 */	addi r11, r1, 0x40
/* 80387AB0  4B D1 34 1D */	bl func_8009AECC
/* 80387AB4  7C 9C 23 78 */	mr r28, r4
/* 80387AB8  7C DE 33 78 */	mr r30, r6
/* 80387ABC  7C 7B 1B 78 */	mr r27, r3
/* 80387AC0  7C BD 2B 78 */	mr r29, r5
/* 80387AC4  7C FF 3B 78 */	mr r31, r7
/* 80387AC8  7F 83 E3 78 */	mr r3, r28
/* 80387ACC  7F C4 F3 78 */	mr r4, r30
/* 80387AD0  38 BC 00 20 */	addi r5, r28, 0x20
/* 80387AD4  48 00 30 D5 */	bl mCoBG_GetPointInfoFrontLine
/* 80387AD8  2C 03 00 00 */	cmpwi r3, 0
/* 80387ADC  41 82 01 68 */	beq lbl_80387C44
/* 80387AE0  7F 83 E3 78 */	mr r3, r28
/* 80387AE4  7F A4 EB 78 */	mr r4, r29
/* 80387AE8  38 BC 00 20 */	addi r5, r28, 0x20
/* 80387AEC  48 00 30 BD */	bl mCoBG_GetPointInfoFrontLine
/* 80387AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80387AF4  41 82 01 50 */	beq lbl_80387C44
/* 80387AF8  7F 84 E3 78 */	mr r4, r28
/* 80387AFC  7F C7 F3 78 */	mr r7, r30
/* 80387B00  38 61 00 08 */	addi r3, r1, 8
/* 80387B04  38 BC 00 08 */	addi r5, r28, 8
/* 80387B08  38 DC 00 20 */	addi r6, r28, 0x20
/* 80387B0C  48 00 30 F1 */	bl mCoBG_GetDistPointAndLine2D_Norm
/* 80387B10  C0 01 00 08 */	lfs f0, 8(r1)
/* 80387B14  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80387B18  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80387B1C  40 80 01 28 */	bge lbl_80387C44
/* 80387B20  7F 83 E3 78 */	mr r3, r28
/* 80387B24  7F C4 F3 78 */	mr r4, r30
/* 80387B28  48 00 34 F9 */	bl mCoBG_JudgePointInCircle
/* 80387B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80387B30  41 82 00 80 */	beq lbl_80387BB0
/* 80387B34  7F 83 E3 78 */	mr r3, r28
/* 80387B38  7F C4 F3 78 */	mr r4, r30
/* 80387B3C  4B FF FA D1 */	bl mCoBG_CheckDistSPCheck
/* 80387B40  2C 03 00 00 */	cmpwi r3, 0
/* 80387B44  40 82 00 0C */	bne lbl_80387B50
/* 80387B48  38 60 00 00 */	li r3, 0
/* 80387B4C  48 00 00 FC */	b lbl_80387C48
lbl_80387B50:
/* 80387B50  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80387B54  7F 85 E3 78 */	mr r5, r28
/* 80387B58  7F C7 F3 78 */	mr r7, r30
/* 80387B5C  38 61 00 14 */	addi r3, r1, 0x14
/* 80387B60  38 81 00 0C */	addi r4, r1, 0xc
/* 80387B64  38 DC 00 20 */	addi r6, r28, 0x20
/* 80387B68  48 00 30 F9 */	bl mCoBG_GetCrossCircleAndLine2Dvector
/* 80387B6C  2C 03 00 00 */	cmpwi r3, 0
/* 80387B70  41 82 00 D4 */	beq lbl_80387C44
/* 80387B74  7F 63 DB 78 */	mr r3, r27
/* 80387B78  7F C4 F3 78 */	mr r4, r30
/* 80387B7C  7F 85 E3 78 */	mr r5, r28
/* 80387B80  7F 88 E3 78 */	mr r8, r28
/* 80387B84  38 C1 00 14 */	addi r6, r1, 0x14
/* 80387B88  38 E1 00 0C */	addi r7, r1, 0xc
/* 80387B8C  4B FF F9 CD */	bl mCoBG_GetSpecialDistanceReverse
/* 80387B90  A8 DC 00 28 */	lha r6, 0x28(r28)
/* 80387B94  7F E3 FB 78 */	mr r3, r31
/* 80387B98  88 FC 00 30 */	lbz r7, 0x30(r28)
/* 80387B9C  38 9F 00 58 */	addi r4, r31, 0x58
/* 80387BA0  38 A0 00 00 */	li r5, 0
/* 80387BA4  4B FF EC 35 */	bl mCoBG_RegistCollisionWallInfo
/* 80387BA8  38 60 00 01 */	li r3, 1
/* 80387BAC  48 00 00 9C */	b lbl_80387C48
lbl_80387BB0:
/* 80387BB0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80387BB4  7F C4 F3 78 */	mr r4, r30
/* 80387BB8  38 7C 00 08 */	addi r3, r28, 8
/* 80387BBC  48 00 34 65 */	bl mCoBG_JudgePointInCircle
/* 80387BC0  2C 03 00 00 */	cmpwi r3, 0
/* 80387BC4  41 82 00 80 */	beq lbl_80387C44
/* 80387BC8  7F 83 E3 78 */	mr r3, r28
/* 80387BCC  7F C4 F3 78 */	mr r4, r30
/* 80387BD0  4B FF FA 3D */	bl mCoBG_CheckDistSPCheck
/* 80387BD4  2C 03 00 00 */	cmpwi r3, 0
/* 80387BD8  40 82 00 0C */	bne lbl_80387BE4
/* 80387BDC  38 60 00 00 */	li r3, 0
/* 80387BE0  48 00 00 68 */	b lbl_80387C48
lbl_80387BE4:
/* 80387BE4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80387BE8  7F C7 F3 78 */	mr r7, r30
/* 80387BEC  38 61 00 14 */	addi r3, r1, 0x14
/* 80387BF0  38 81 00 0C */	addi r4, r1, 0xc
/* 80387BF4  38 BC 00 08 */	addi r5, r28, 8
/* 80387BF8  38 DC 00 20 */	addi r6, r28, 0x20
/* 80387BFC  48 00 30 65 */	bl mCoBG_GetCrossCircleAndLine2Dvector
/* 80387C00  2C 03 00 00 */	cmpwi r3, 0
/* 80387C04  41 82 00 40 */	beq lbl_80387C44
/* 80387C08  7F 63 DB 78 */	mr r3, r27
/* 80387C0C  7F C4 F3 78 */	mr r4, r30
/* 80387C10  7F 85 E3 78 */	mr r5, r28
/* 80387C14  38 C1 00 14 */	addi r6, r1, 0x14
/* 80387C18  38 E1 00 0C */	addi r7, r1, 0xc
/* 80387C1C  39 1C 00 08 */	addi r8, r28, 8
/* 80387C20  4B FF F9 39 */	bl mCoBG_GetSpecialDistanceReverse
/* 80387C24  A8 DC 00 28 */	lha r6, 0x28(r28)
/* 80387C28  7F E3 FB 78 */	mr r3, r31
/* 80387C2C  88 FC 00 30 */	lbz r7, 0x30(r28)
/* 80387C30  38 9F 00 58 */	addi r4, r31, 0x58
/* 80387C34  38 A0 00 00 */	li r5, 0
/* 80387C38  4B FF EB A1 */	bl mCoBG_RegistCollisionWallInfo
/* 80387C3C  38 60 00 01 */	li r3, 1
/* 80387C40  48 00 00 08 */	b lbl_80387C48
lbl_80387C44:
/* 80387C44  38 60 00 00 */	li r3, 0
lbl_80387C48:
/* 80387C48  39 61 00 40 */	addi r11, r1, 0x40
/* 80387C4C  4B D1 32 CD */	bl func_8009AF18
/* 80387C50  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80387C54  7C 08 03 A6 */	mtlr r0
/* 80387C58  38 21 00 40 */	addi r1, r1, 0x40
/* 80387C5C  4E 80 00 20 */	blr 
