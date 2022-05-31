lbl_80381D64:
/* 80381D64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80381D68  7C 08 02 A6 */	mflr r0
/* 80381D6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80381D70  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80381D74  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80381D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80381D7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80381D80  7C 7E 1B 78 */	mr r30, r3
/* 80381D84  83 E3 1C 18 */	lwz r31, 0x1c18(r3)
/* 80381D88  38 9E 1C 00 */	addi r4, r30, 0x1c00
/* 80381D8C  C3 E3 1C 14 */	lfs f31, 0x1c14(r3)
/* 80381D90  7F E5 FB 78 */	mr r5, r31
/* 80381D94  4B FF F2 D5 */	bl Camera2_Lock_SetCenterPos
/* 80381D98  FC 20 F8 90 */	fmr f1, f31
/* 80381D9C  7F C3 F3 78 */	mr r3, r30
/* 80381DA0  7F E4 FB 78 */	mr r4, r31
/* 80381DA4  4B FF FE 21 */	bl Camera2_Simple_MorphDistance
/* 80381DA8  7F C3 F3 78 */	mr r3, r30
/* 80381DAC  7F E5 FB 78 */	mr r5, r31
/* 80381DB0  38 9E 1C 0C */	addi r4, r30, 0x1c0c
/* 80381DB4  4B FF FE 89 */	bl Camera2_Simple_AngleCalc
/* 80381DB8  7F C3 F3 78 */	mr r3, r30
/* 80381DBC  4B FF BE D9 */	bl Camera2_SetEyePos_fromCenterPos
/* 80381DC0  7F C3 F3 78 */	mr r3, r30
/* 80381DC4  4B FF C1 79 */	bl Camera2_SetView
/* 80381DC8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80381DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80381DD0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80381DD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80381DD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80381DDC  7C 08 03 A6 */	mtlr r0
/* 80381DE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80381DE4  4E 80 00 20 */	blr 
