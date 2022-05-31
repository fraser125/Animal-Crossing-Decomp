lbl_8037EDE0:
/* 8037EDE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037EDE4  7C 08 02 A6 */	mflr r0
/* 8037EDE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037EDEC  39 61 00 18 */	addi r11, r1, 0x18
/* 8037EDF0  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8037EDF4  4B D1 C0 E1 */	bl func_8009AED4
/* 8037EDF8  FF E0 08 90 */	fmr f31, f1
/* 8037EDFC  7C DF 33 78 */	mr r31, r6
/* 8037EE00  7C BE 2B 78 */	mr r30, r5
/* 8037EE04  7C 7D 1B 78 */	mr r29, r3
/* 8037EE08  7F E5 FB 78 */	mr r5, r31
/* 8037EE0C  4B FF F6 3D */	bl Camera2_SetCenterPosAndSpeed
/* 8037EE10  FC 20 F8 90 */	fmr f1, f31
/* 8037EE14  7F A3 EB 78 */	mr r3, r29
/* 8037EE18  7F E4 FB 78 */	mr r4, r31
/* 8037EE1C  4B FF F6 99 */	bl Camera2_SetDistancePosAndSpeed
/* 8037EE20  7F A3 EB 78 */	mr r3, r29
/* 8037EE24  7F C4 F3 78 */	mr r4, r30
/* 8037EE28  7F E5 FB 78 */	mr r5, r31
/* 8037EE2C  4B FF F0 A5 */	bl Camera2_SetDirectionAngleXYZ
/* 8037EE30  7F A3 EB 78 */	mr r3, r29
/* 8037EE34  4B FF EE 61 */	bl Camera2_SetEyePos_fromCenterPos
/* 8037EE38  39 61 00 18 */	addi r11, r1, 0x18
/* 8037EE3C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8037EE40  4B D1 C0 E1 */	bl func_8009AF20
/* 8037EE44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037EE48  7C 08 03 A6 */	mtlr r0
/* 8037EE4C  38 21 00 20 */	addi r1, r1, 0x20
/* 8037EE50  4E 80 00 20 */	blr 
