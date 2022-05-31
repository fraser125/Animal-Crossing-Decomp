lbl_804D3778:
/* 804D3778  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D377C  7C 08 02 A6 */	mflr r0
/* 804D3780  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D3784  39 61 00 40 */	addi r11, r1, 0x40
/* 804D3788  4B BC 77 31 */	bl func_8009AEB8
/* 804D378C  39 60 00 00 */	li r11, 0
/* 804D3790  38 00 FF FF */	li r0, -1
/* 804D3794  7C 9F 23 78 */	mr r31, r4
/* 804D3798  3D 80 80 6A */	lis r12, mMkRm_unit_max_table@ha /* 0x8069E34C@ha */
/* 804D379C  91 61 00 0C */	stw r11, 0xc(r1)
/* 804D37A0  3C 80 81 1D */	lis r4, ftr_fg_table1@ha /* 0x811D2D18@ha */
/* 804D37A4  7C 7E 1B 78 */	mr r30, r3
/* 804D37A8  57 FD 10 3A */	slwi r29, r31, 2
/* 804D37AC  39 6C E3 4C */	addi r11, r12, mMkRm_unit_max_table@l /* 0x8069E34C@l */
/* 804D37B0  90 01 00 08 */	stw r0, 8(r1)
/* 804D37B4  38 64 2D 18 */	addi r3, r4, ftr_fg_table1@l /* 0x811D2D18@l */
/* 804D37B8  7F 8B E8 2E */	lwzx r28, r11, r29
/* 804D37BC  80 9E 00 00 */	lwz r4, 0(r30)
/* 804D37C0  7C B6 2B 78 */	mr r22, r5
/* 804D37C4  7C D7 33 78 */	mr r23, r6
/* 804D37C8  7C FD 3B 78 */	mr r29, r7
/* 804D37CC  7D 18 43 78 */	mr r24, r8
/* 804D37D0  7D 39 4B 78 */	mr r25, r9
/* 804D37D4  7D 5A 53 78 */	mr r26, r10
/* 804D37D8  3B 60 00 00 */	li r27, 0
/* 804D37DC  4B F1 25 B1 */	bl mRmTp_MakeFtrNoTable
/* 804D37E0  3C 60 81 1D */	lis r3, ftr_fg_table2@ha /* 0x811D3008@ha */
/* 804D37E4  80 9E 00 04 */	lwz r4, 4(r30)
/* 804D37E8  38 63 30 08 */	addi r3, r3, ftr_fg_table2@l /* 0x811D3008@l */
/* 804D37EC  4B F1 25 A1 */	bl mRmTp_MakeFtrNoTable
/* 804D37F0  7F C3 F3 78 */	mr r3, r30
/* 804D37F4  7F 84 E3 78 */	mr r4, r28
/* 804D37F8  4B FF FF 39 */	bl mMkRm_InitData
/* 804D37FC  57 40 07 FF */	clrlwi. r0, r26, 0x1f
/* 804D3800  41 82 00 1C */	beq lbl_804D381C
/* 804D3804  7F C4 F3 78 */	mr r4, r30
/* 804D3808  7F 85 E3 78 */	mr r5, r28
/* 804D380C  7E C6 B3 78 */	mr r6, r22
/* 804D3810  7E E7 BB 78 */	mr r7, r23
/* 804D3814  38 61 00 0C */	addi r3, r1, 0xc
/* 804D3818  4B FF FA 31 */	bl mMkRm_EvaluateBasePoint
lbl_804D381C:
/* 804D381C  57 40 07 BD */	rlwinm. r0, r26, 0, 0x1e, 0x1e
/* 804D3820  41 82 00 0C */	beq lbl_804D382C
/* 804D3824  38 61 00 0C */	addi r3, r1, 0xc
/* 804D3828  4B FF F9 7D */	bl mMkRm_EvaluateNessBounos
lbl_804D382C:
/* 804D382C  57 40 07 7B */	rlwinm. r0, r26, 0, 0x1d, 0x1d
/* 804D3830  41 82 00 18 */	beq lbl_804D3848
/* 804D3834  7F A4 EB 78 */	mr r4, r29
/* 804D3838  7E C5 B3 78 */	mr r5, r22
/* 804D383C  7E E6 BB 78 */	mr r6, r23
/* 804D3840  38 61 00 0C */	addi r3, r1, 0xc
/* 804D3844  4B FF F7 71 */	bl mMkRm_EvaluateBaseSeriesComplete
lbl_804D3848:
/* 804D3848  57 5D 07 39 */	rlwinm. r29, r26, 0, 0x1c, 0x1c
/* 804D384C  41 82 00 24 */	beq lbl_804D3870
/* 804D3850  7F 05 C3 78 */	mr r5, r24
/* 804D3854  7F 26 CB 78 */	mr r6, r25
/* 804D3858  7E C7 B3 78 */	mr r7, r22
/* 804D385C  7E E8 BB 78 */	mr r8, r23
/* 804D3860  38 61 00 0C */	addi r3, r1, 0xc
/* 804D3864  38 81 00 08 */	addi r4, r1, 8
/* 804D3868  4B FF F4 CD */	bl mMkRm_EvaluateThemeSeriesComplete
/* 804D386C  7C 7B 1B 78 */	mr r27, r3
lbl_804D3870:
/* 804D3870  57 40 06 F7 */	rlwinm. r0, r26, 0, 0x1b, 0x1b
/* 804D3874  41 82 00 0C */	beq lbl_804D3880
/* 804D3878  38 61 00 0C */	addi r3, r1, 0xc
/* 804D387C  4B FF F3 F5 */	bl mMkRm_EvaluateSetSeriesComplete
lbl_804D3880:
/* 804D3880  57 40 06 B5 */	rlwinm. r0, r26, 0, 0x1a, 0x1a
/* 804D3884  41 82 00 14 */	beq lbl_804D3898
/* 804D3888  7F C4 F3 78 */	mr r4, r30
/* 804D388C  7F 85 E3 78 */	mr r5, r28
/* 804D3890  38 61 00 0C */	addi r3, r1, 0xc
/* 804D3894  4B FF F2 F9 */	bl mMkRm_EvaluateLuckyFurniture
lbl_804D3898:
/* 804D3898  57 40 06 73 */	rlwinm. r0, r26, 0, 0x19, 0x19
/* 804D389C  41 82 00 18 */	beq lbl_804D38B4
/* 804D38A0  7F C4 F3 78 */	mr r4, r30
/* 804D38A4  7F 85 E3 78 */	mr r5, r28
/* 804D38A8  7F E6 FB 78 */	mr r6, r31
/* 804D38AC  38 61 00 0C */	addi r3, r1, 0xc
/* 804D38B0  4B FF F1 61 */	bl mMkRm_EvaluateDirect
lbl_804D38B4:
/* 804D38B4  28 1D 00 00 */	cmplwi r29, 0
/* 804D38B8  41 82 00 1C */	beq lbl_804D38D4
/* 804D38BC  80 E1 00 08 */	lwz r7, 8(r1)
/* 804D38C0  7F C4 F3 78 */	mr r4, r30
/* 804D38C4  7F 85 E3 78 */	mr r5, r28
/* 804D38C8  7F 66 DB 78 */	mr r6, r27
/* 804D38CC  38 61 00 0C */	addi r3, r1, 0xc
/* 804D38D0  4B FF EF 21 */	bl mMkRm_EvaluateCompleteObstacle
lbl_804D38D4:
/* 804D38D4  57 40 06 31 */	rlwinm. r0, r26, 0, 0x18, 0x18
/* 804D38D8  41 82 00 14 */	beq lbl_804D38EC
/* 804D38DC  7F C4 F3 78 */	mr r4, r30
/* 804D38E0  7F 85 E3 78 */	mr r5, r28
/* 804D38E4  38 61 00 0C */	addi r3, r1, 0xc
/* 804D38E8  4B FF ED 29 */	bl mMkRm_EvaluateLetsClean
lbl_804D38EC:
/* 804D38EC  38 61 00 0C */	addi r3, r1, 0xc
/* 804D38F0  4B FF ED 09 */	bl mMkRm_ForbidMinusPoint
/* 804D38F4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804D38F8  39 61 00 40 */	addi r11, r1, 0x40
/* 804D38FC  4B BC 76 09 */	bl func_8009AF04
/* 804D3900  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D3904  7C 08 03 A6 */	mtlr r0
/* 804D3908  38 21 00 40 */	addi r1, r1, 0x40
/* 804D390C  4E 80 00 20 */	blr 
