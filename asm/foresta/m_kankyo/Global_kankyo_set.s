lbl_803B9004:
/* 803B9004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B9008  7C 08 02 A6 */	mflr r0
/* 803B900C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B9010  39 61 00 20 */	addi r11, r1, 0x20
/* 803B9014  4B CE 1E C1 */	bl func_8009AED4
/* 803B9018  7C 7D 1B 78 */	mr r29, r3
/* 803B901C  7C 9E 23 78 */	mr r30, r4
/* 803B9020  7C BF 2B 78 */	mr r31, r5
/* 803B9024  4B FF FE 29 */	bl mEnv_JudgeSwitchStatus
/* 803B9028  4B FF FD 69 */	bl mEnv_ManageChangeWeatherEnvRate
/* 803B902C  7F C3 F3 78 */	mr r3, r30
/* 803B9030  4B FF E1 E5 */	bl mEnv_set_time
/* 803B9034  7F C3 F3 78 */	mr r3, r30
/* 803B9038  4B FF EE BD */	bl mEnv_SetBaseLight
/* 803B903C  38 7F 00 04 */	addi r3, r31, 4
/* 803B9040  38 9E 00 94 */	addi r4, r30, 0x94
/* 803B9044  38 BE 00 78 */	addi r5, r30, 0x78
/* 803B9048  4B FF F3 85 */	bl mEnv_AddAndSetRGBColor
/* 803B904C  7F C3 F3 78 */	mr r3, r30
/* 803B9050  4B FF F3 E5 */	bl mEnv_SetDiffuseLight
/* 803B9054  7F C3 F3 78 */	mr r3, r30
/* 803B9058  7F E4 FB 78 */	mr r4, r31
/* 803B905C  4B FF F4 59 */	bl mEnv_SetFog
/* 803B9060  7F C3 F3 78 */	mr r3, r30
/* 803B9064  4B FF F4 F9 */	bl mEnv_PermitCheckDiffuseLight
/* 803B9068  7F A3 EB 78 */	mr r3, r29
/* 803B906C  48 00 01 41 */	bl mEnv_TaimatuPointLightWaveMoveProc
/* 803B9070  7F A3 EB 78 */	mr r3, r29
/* 803B9074  48 00 01 F5 */	bl mEnv_CheckNpcLight_ToSwitchON
/* 803B9078  7F A3 EB 78 */	mr r3, r29
/* 803B907C  4B FF F8 5D */	bl mEnv_countdown_proc
/* 803B9080  38 60 00 01 */	li r3, 1
/* 803B9084  48 00 05 B5 */	bl mEnv_MakeWindowLightAlpha
/* 803B9088  4B FF FE 69 */	bl mEnv_rainbow_power_calc
/* 803B908C  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9090  38 83 9B A0 */	addi r4, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B9094  A8 64 00 98 */	lha r3, 0x98(r4)
/* 803B9098  2C 03 00 0A */	cmpwi r3, 0xa
/* 803B909C  40 80 00 0C */	bge lbl_803B90A8
/* 803B90A0  38 03 00 01 */	addi r0, r3, 1
/* 803B90A4  B0 04 00 98 */	sth r0, 0x98(r4)
lbl_803B90A8:
/* 803B90A8  39 61 00 20 */	addi r11, r1, 0x20
/* 803B90AC  4B CE 1E 75 */	bl func_8009AF20
/* 803B90B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B90B4  7C 08 03 A6 */	mtlr r0
/* 803B90B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803B90BC  4E 80 00 20 */	blr 
