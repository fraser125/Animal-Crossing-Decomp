lbl_8037FE5C:
/* 8037FE5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037FE60  7C 08 02 A6 */	mflr r0
/* 8037FE64  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037FE68  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8037FE6C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8037FE70  39 61 00 20 */	addi r11, r1, 0x20
/* 8037FE74  4B D1 B0 5D */	bl func_8009AED0
/* 8037FE78  7C 7C 1B 78 */	mr r28, r3
/* 8037FE7C  83 E3 1C 00 */	lwz r31, 0x1c00(r3)
/* 8037FE80  3B BC 1C 00 */	addi r29, r28, 0x1c00
/* 8037FE84  83 C3 1C 04 */	lwz r30, 0x1c04(r3)
/* 8037FE88  28 1F 00 00 */	cmplwi r31, 0
/* 8037FE8C  40 82 00 0C */	bne lbl_8037FE98
/* 8037FE90  28 1E 00 00 */	cmplwi r30, 0
/* 8037FE94  41 82 00 98 */	beq lbl_8037FF2C
lbl_8037FE98:
/* 8037FE98  28 1F 00 00 */	cmplwi r31, 0
/* 8037FE9C  41 82 00 0C */	beq lbl_8037FEA8
/* 8037FEA0  28 1E 00 00 */	cmplwi r30, 0
/* 8037FEA4  40 82 00 10 */	bne lbl_8037FEB4
lbl_8037FEA8:
/* 8037FEA8  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 8037FEAC  C3 E3 13 54 */	lfs f31, lit_474@l(r3)  /* 0x80641354@l */
/* 8037FEB0  48 00 00 14 */	b lbl_8037FEC4
lbl_8037FEB4:
/* 8037FEB4  38 7F 00 28 */	addi r3, r31, 0x28
/* 8037FEB8  38 9E 00 28 */	addi r4, r30, 0x28
/* 8037FEBC  48 03 B1 19 */	bl search_position_distance
/* 8037FEC0  FF E0 08 90 */	fmr f31, f1
lbl_8037FEC4:
/* 8037FEC4  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8037FEC8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8037FECC  41 82 00 14 */	beq lbl_8037FEE0
/* 8037FED0  38 7F 00 28 */	addi r3, r31, 0x28
/* 8037FED4  38 9D 00 08 */	addi r4, r29, 8
/* 8037FED8  48 03 B0 FD */	bl search_position_distance
/* 8037FEDC  FF E0 08 90 */	fmr f31, f1
lbl_8037FEE0:
/* 8037FEE0  FC 20 F8 90 */	fmr f1, f31
/* 8037FEE4  7F 83 E3 78 */	mr r3, r28
/* 8037FEE8  7F E4 FB 78 */	mr r4, r31
/* 8037FEEC  7F C5 F3 78 */	mr r5, r30
/* 8037FEF0  4B FF F9 9D */	bl Camera2_Talk_ChangeCameraCenterPos_BetweenSpeakerToListener
/* 8037FEF4  FC 20 F8 90 */	fmr f1, f31
/* 8037FEF8  7F 83 E3 78 */	mr r3, r28
/* 8037FEFC  7F E4 FB 78 */	mr r4, r31
/* 8037FF00  7F C5 F3 78 */	mr r5, r30
/* 8037FF04  38 C1 00 08 */	addi r6, r1, 8
/* 8037FF08  4B FF FE 11 */	bl Camera2_Talk_GetGoalDirectionAngleXYZAndSetDistance_BetweenSpeakerToListener
/* 8037FF0C  7F 83 E3 78 */	mr r3, r28
/* 8037FF10  38 81 00 08 */	addi r4, r1, 8
/* 8037FF14  38 A0 00 00 */	li r5, 0
/* 8037FF18  4B FF DE BD */	bl Camera2_MoveDirectionAngleXYZ
/* 8037FF1C  7F 83 E3 78 */	mr r3, r28
/* 8037FF20  4B FF DD 75 */	bl Camera2_SetEyePos_fromCenterPos
/* 8037FF24  7F 83 E3 78 */	mr r3, r28
/* 8037FF28  4B FF E0 15 */	bl Camera2_SetView
lbl_8037FF2C:
/* 8037FF2C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8037FF30  39 61 00 20 */	addi r11, r1, 0x20
/* 8037FF34  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8037FF38  4B D1 AF E5 */	bl func_8009AF1C
/* 8037FF3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037FF40  7C 08 03 A6 */	mtlr r0
/* 8037FF44  38 21 00 30 */	addi r1, r1, 0x30
/* 8037FF48  4E 80 00 20 */	blr 
