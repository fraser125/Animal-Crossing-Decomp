lbl_803B7D34:
/* 803B7D34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B7D38  7C 08 02 A6 */	mflr r0
/* 803B7D3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B7D40  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803B7D44  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 803B7D48  39 61 00 20 */	addi r11, r1, 0x20
/* 803B7D4C  4B CE 31 7D */	bl func_8009AEC8
/* 803B7D50  3D 00 81 17 */	lis r8, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B7D54  FF E0 08 90 */	fmr f31, f1
/* 803B7D58  3B E8 9B A0 */	addi r31, r8, data_81169BA0@l /* 0x81169BA0@l */
/* 803B7D5C  7C 7A 1B 78 */	mr r26, r3
/* 803B7D60  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 803B7D64  7C 9B 23 78 */	mr r27, r4
/* 803B7D68  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 803B7D6C  7C BC 2B 78 */	mr r28, r5
/* 803B7D70  7C DD 33 78 */	mr r29, r6
/* 803B7D74  EC 42 00 32 */	fmuls f2, f2, f0
/* 803B7D78  7C FE 3B 78 */	mr r30, r7
/* 803B7D7C  4B FF F6 4D */	bl mEnv_ChangeRGBLight
/* 803B7D80  7F 43 D3 78 */	mr r3, r26
/* 803B7D84  4B FF FE F1 */	bl mEnv_CalcSetLight_train
/* 803B7D88  FC 20 F8 90 */	fmr f1, f31
/* 803B7D8C  7F 43 D3 78 */	mr r3, r26
/* 803B7D90  7F 64 DB 78 */	mr r4, r27
/* 803B7D94  7F 85 E3 78 */	mr r5, r28
/* 803B7D98  7F A6 EB 78 */	mr r6, r29
/* 803B7D9C  7F C7 F3 78 */	mr r7, r30
/* 803B7DA0  4B FF F9 31 */	bl mEnv_ChangeDiffuseLight
/* 803B7DA4  FC 20 F8 90 */	fmr f1, f31
/* 803B7DA8  7F 43 D3 78 */	mr r3, r26
/* 803B7DAC  7F 64 DB 78 */	mr r4, r27
/* 803B7DB0  7F 85 E3 78 */	mr r5, r28
/* 803B7DB4  7F A6 EB 78 */	mr r6, r29
/* 803B7DB8  7F C7 F3 78 */	mr r7, r30
/* 803B7DBC  4B FF FC 85 */	bl mEnv_ChangeFogLight
/* 803B7DC0  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 803B7DC4  38 BE 00 16 */	addi r5, r30, 0x16
/* 803B7DC8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 803B7DCC  FC 20 F8 90 */	fmr f1, f31
/* 803B7DD0  7C A7 2B 78 */	mr r7, r5
/* 803B7DD4  38 7A 00 16 */	addi r3, r26, 0x16
/* 803B7DD8  EC 42 00 32 */	fmuls f2, f2, f0
/* 803B7DDC  38 9B 00 16 */	addi r4, r27, 0x16
/* 803B7DE0  38 DD 00 16 */	addi r6, r29, 0x16
/* 803B7DE4  4B FF F5 E5 */	bl mEnv_ChangeRGBLight
/* 803B7DE8  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 803B7DEC  FC 20 F8 90 */	fmr f1, f31
/* 803B7DF0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 803B7DF4  38 7A 00 19 */	addi r3, r26, 0x19
/* 803B7DF8  38 9B 00 19 */	addi r4, r27, 0x19
/* 803B7DFC  38 BC 00 19 */	addi r5, r28, 0x19
/* 803B7E00  EC 42 00 32 */	fmuls f2, f2, f0
/* 803B7E04  38 DD 00 19 */	addi r6, r29, 0x19
/* 803B7E08  38 FE 00 19 */	addi r7, r30, 0x19
/* 803B7E0C  4B FF F5 BD */	bl mEnv_ChangeRGBLight
/* 803B7E10  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 803B7E14  FC 20 F8 90 */	fmr f1, f31
/* 803B7E18  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 803B7E1C  38 7A 00 1C */	addi r3, r26, 0x1c
/* 803B7E20  38 9B 00 1C */	addi r4, r27, 0x1c
/* 803B7E24  38 BC 00 1C */	addi r5, r28, 0x1c
/* 803B7E28  EC 42 00 32 */	fmuls f2, f2, f0
/* 803B7E2C  38 DD 00 1C */	addi r6, r29, 0x1c
/* 803B7E30  38 FE 00 1C */	addi r7, r30, 0x1c
/* 803B7E34  4B FF F5 95 */	bl mEnv_ChangeRGBLight
/* 803B7E38  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 803B7E3C  FC 20 F8 90 */	fmr f1, f31
/* 803B7E40  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 803B7E44  38 7A 00 1F */	addi r3, r26, 0x1f
/* 803B7E48  38 9B 00 1F */	addi r4, r27, 0x1f
/* 803B7E4C  38 BC 00 1F */	addi r5, r28, 0x1f
/* 803B7E50  EC 42 00 32 */	fmuls f2, f2, f0
/* 803B7E54  38 DD 00 1F */	addi r6, r29, 0x1f
/* 803B7E58  38 FE 00 1F */	addi r7, r30, 0x1f
/* 803B7E5C  4B FF F5 6D */	bl mEnv_ChangeRGBLight
/* 803B7E60  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 803B7E64  FC 20 F8 90 */	fmr f1, f31
/* 803B7E68  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 803B7E6C  38 7A 00 22 */	addi r3, r26, 0x22
/* 803B7E70  38 9B 00 22 */	addi r4, r27, 0x22
/* 803B7E74  38 BC 00 22 */	addi r5, r28, 0x22
/* 803B7E78  EC 42 00 32 */	fmuls f2, f2, f0
/* 803B7E7C  38 DD 00 22 */	addi r6, r29, 0x22
/* 803B7E80  38 FE 00 22 */	addi r7, r30, 0x22
/* 803B7E84  4B FF F5 45 */	bl mEnv_ChangeRGBLight
/* 803B7E88  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 803B7E8C  39 61 00 20 */	addi r11, r1, 0x20
/* 803B7E90  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803B7E94  4B CE 30 81 */	bl func_8009AF14
/* 803B7E98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B7E9C  7C 08 03 A6 */	mtlr r0
/* 803B7EA0  38 21 00 30 */	addi r1, r1, 0x30
/* 803B7EA4  4E 80 00 20 */	blr 
