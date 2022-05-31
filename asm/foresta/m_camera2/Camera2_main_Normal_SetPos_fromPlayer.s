lbl_80380578:
/* 80380578  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8038057C  7C 08 02 A6 */	mflr r0
/* 80380580  90 01 00 44 */	stw r0, 0x44(r1)
/* 80380584  39 61 00 40 */	addi r11, r1, 0x40
/* 80380588  4B D1 A9 4D */	bl func_8009AED4
/* 8038058C  7C 7D 1B 78 */	mr r29, r3
/* 80380590  7C 9E 23 78 */	mr r30, r4
/* 80380594  3B FD 1C 00 */	addi r31, r29, 0x1c00
/* 80380598  80 03 1B E0 */	lwz r0, 0x1be0(r3)
/* 8038059C  80 63 1C 04 */	lwz r3, 0x1c04(r3)
/* 803805A0  7C 03 00 00 */	cmpw r3, r0
/* 803805A4  40 82 00 14 */	bne lbl_803805B8
/* 803805A8  80 7F 00 08 */	lwz r3, 8(r31)
/* 803805AC  80 1D 1B E4 */	lwz r0, 0x1be4(r29)
/* 803805B0  7C 03 00 00 */	cmpw r3, r0
/* 803805B4  41 82 00 1C */	beq lbl_803805D0
lbl_803805B8:
/* 803805B8  38 00 00 50 */	li r0, 0x50
/* 803805BC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803805C0  80 1D 1B E0 */	lwz r0, 0x1be0(r29)
/* 803805C4  90 1F 00 04 */	stw r0, 4(r31)
/* 803805C8  80 1D 1B E4 */	lwz r0, 0x1be4(r29)
/* 803805CC  90 1F 00 08 */	stw r0, 8(r31)
lbl_803805D0:
/* 803805D0  7F A3 EB 78 */	mr r3, r29
/* 803805D4  38 81 00 08 */	addi r4, r1, 8
/* 803805D8  38 A1 00 0C */	addi r5, r1, 0xc
/* 803805DC  4B FF E1 CD */	bl Camera2_Get_GoalDistanceAndDirection
/* 803805E0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803805E4  2C 00 00 00 */	cmpwi r0, 0
/* 803805E8  41 81 00 28 */	bgt lbl_80380610
/* 803805EC  C0 21 00 08 */	lfs f1, 8(r1)
/* 803805F0  7F A3 EB 78 */	mr r3, r29
/* 803805F4  38 80 00 00 */	li r4, 0
/* 803805F8  4B FF DE F1 */	bl Camera2_MoveDistancePosAndSpeed
/* 803805FC  7F A3 EB 78 */	mr r3, r29
/* 80380600  7F C5 F3 78 */	mr r5, r30
/* 80380604  38 81 00 0C */	addi r4, r1, 0xc
/* 80380608  4B FF D7 CD */	bl Camera2_MoveDirectionAngleXYZ
/* 8038060C  48 00 00 1C */	b lbl_80380628
lbl_80380610:
/* 80380610  C0 21 00 08 */	lfs f1, 8(r1)
/* 80380614  7F A3 EB 78 */	mr r3, r29
/* 80380618  4B FF FE 6D */	bl Camera2_MoveDistancePosAndSpeedVParam
/* 8038061C  7F A3 EB 78 */	mr r3, r29
/* 80380620  38 81 00 0C */	addi r4, r1, 0xc
/* 80380624  4B FF FE 91 */	bl Camera2_MoveDirectionAngleXYZVParam
lbl_80380628:
/* 80380628  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8038062C  2C 00 00 00 */	cmpwi r0, 0
/* 80380630  41 81 00 2C */	bgt lbl_8038065C
/* 80380634  7F A3 EB 78 */	mr r3, r29
/* 80380638  38 81 00 20 */	addi r4, r1, 0x20
/* 8038063C  4B FF FA ED */	bl Camera2_main_Normal_SetEndCenterPos_fromPlayer
/* 80380640  7F A3 EB 78 */	mr r3, r29
/* 80380644  7F C5 F3 78 */	mr r5, r30
/* 80380648  38 81 00 20 */	addi r4, r1, 0x20
/* 8038064C  4B FF DC E5 */	bl Camera2_MoveCenterPosAndSpeed_fromEndCenterPos
/* 80380650  7F A3 EB 78 */	mr r3, r29
/* 80380654  4B FF D6 41 */	bl Camera2_SetEyePos_fromCenterPos
/* 80380658  48 00 00 30 */	b lbl_80380688
lbl_8038065C:
/* 8038065C  7F A3 EB 78 */	mr r3, r29
/* 80380660  38 81 00 14 */	addi r4, r1, 0x14
/* 80380664  4B FF FA C5 */	bl Camera2_main_Normal_SetEndCenterPos_fromPlayer
/* 80380668  7F A3 EB 78 */	mr r3, r29
/* 8038066C  38 81 00 14 */	addi r4, r1, 0x14
/* 80380670  4B FF FD 85 */	bl Camera2_MoveVparamCenter
/* 80380674  7F A3 EB 78 */	mr r3, r29
/* 80380678  4B FF D6 1D */	bl Camera2_SetEyePos_fromCenterPos
/* 8038067C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80380680  38 03 FF FF */	addi r0, r3, -1
/* 80380684  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80380688:
/* 80380688  7F A3 EB 78 */	mr r3, r29
/* 8038068C  4B FF D8 B1 */	bl Camera2_SetView
/* 80380690  39 61 00 40 */	addi r11, r1, 0x40
/* 80380694  4B D1 A8 8D */	bl func_8009AF20
/* 80380698  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8038069C  7C 08 03 A6 */	mtlr r0
/* 803806A0  38 21 00 40 */	addi r1, r1, 0x40
/* 803806A4  4E 80 00 20 */	blr 
