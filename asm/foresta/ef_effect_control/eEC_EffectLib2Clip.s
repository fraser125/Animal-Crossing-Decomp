lbl_804CD6B0:
/* 804CD6B0  3C A0 80 4D */	lis r5, func_804CD38C@ha /* 0x804CD38C@ha */
/* 804CD6B4  3C 80 80 4D */	lis r4, eEC_Name2EffectKill@ha /* 0x804CD4D4@ha */
/* 804CD6B8  38 05 D3 8C */	addi r0, r5, func_804CD38C@l /* 0x804CD38C@l */
/* 804CD6BC  3C A0 80 4D */	lis r5, eEC_Name2EffectKillAll@ha /* 0x804CD5C8@ha */
/* 804CD6C0  90 03 01 74 */	stw r0, 0x174(r3)
/* 804CD6C4  38 04 D4 D4 */	addi r0, r4, eEC_Name2EffectKill@l /* 0x804CD4D4@l */
/* 804CD6C8  3C 80 80 4D */	lis r4, eEL_VectorRoteteY@ha /* 0x804CDEA8@ha */
/* 804CD6CC  3C E0 80 4D */	lis r7, eEL_RandomFirstSpeed@ha /* 0x804CDF48@ha */
/* 804CD6D0  90 03 01 78 */	stw r0, 0x178(r3)
/* 804CD6D4  38 05 D5 C8 */	addi r0, r5, eEC_Name2EffectKillAll@l /* 0x804CD5C8@l */
/* 804CD6D8  3C C0 80 4D */	lis r6, eEL_SetContiniousEnv@ha /* 0x804CE08C@ha */
/* 804CD6DC  3C A0 80 4D */	lis r5, eEL_CalcAdjust@ha /* 0x804CE0D8@ha */
/* 804CD6E0  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 804CD6E4  38 04 DE A8 */	addi r0, r4, eEL_VectorRoteteY@l /* 0x804CDEA8@l */
/* 804CD6E8  3C 80 80 4D */	lis r4, eEL_AutoMatrixXlu@ha /* 0x804CE164@ha */
/* 804CD6EC  3D 80 80 4D */	lis r12, eEL_AutoMatrixXlu_Offset@ha /* 0x804CE268@ha */
/* 804CD6F0  90 03 01 7C */	stw r0, 0x17c(r3)
/* 804CD6F4  38 07 DF 48 */	addi r0, r7, eEL_RandomFirstSpeed@l /* 0x804CDF48@l */
/* 804CD6F8  3D 60 80 4D */	lis r11, eEC_MakeEffect@ha /* 0x804CDD44@ha */
/* 804CD6FC  3D 40 80 4D */	lis r10, eEC_MorphCombine@ha /* 0x804CE3E0@ha */
/* 804CD700  90 03 01 80 */	stw r0, 0x180(r3)
/* 804CD704  38 06 E0 8C */	addi r0, r6, eEL_SetContiniousEnv@l /* 0x804CE08C@l */
/* 804CD708  3D 20 80 4D */	lis r9, eEL_RegistEffectLight@ha /* 0x804CE8FC@ha */
/* 804CD70C  3D 00 80 4D */	lis r8, eEL_DecideLightPower@ha /* 0x804CE944@ha */
/* 804CD710  90 03 01 84 */	stw r0, 0x184(r3)
/* 804CD714  38 05 E0 D8 */	addi r0, r5, eEL_CalcAdjust@l /* 0x804CE0D8@l */
/* 804CD718  3C E0 80 4D */	lis r7, mEL_CheckLookAtBlock@ha /* 0x804CEAB0@ha */
/* 804CD71C  3C C0 80 4D */	lis r6, eEL_EffectLightStatus@ha /* 0x804CE540@ha */
/* 804CD720  90 03 01 88 */	stw r0, 0x188(r3)
/* 804CD724  38 04 E1 64 */	addi r0, r4, eEL_AutoMatrixXlu@l /* 0x804CE164@l */
/* 804CD728  3C A0 80 4D */	lis r5, eEL_SpecialBlockCenterPos@ha /* 0x804CE494@ha */
/* 804CD72C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CD730  90 03 01 8C */	stw r0, 0x18c(r3)
/* 804CD734  39 8C E2 68 */	addi r12, r12, eEL_AutoMatrixXlu_Offset@l /* 0x804CE268@l */
/* 804CD738  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804CD73C  38 00 00 00 */	li r0, 0
/* 804CD740  91 83 01 90 */	stw r12, 0x190(r3)
/* 804CD744  39 6B DD 44 */	addi r11, r11, eEC_MakeEffect@l /* 0x804CDD44@l */
/* 804CD748  39 4A E3 E0 */	addi r10, r10, eEC_MorphCombine@l /* 0x804CE3E0@l */
/* 804CD74C  39 29 E8 FC */	addi r9, r9, eEL_RegistEffectLight@l /* 0x804CE8FC@l */
/* 804CD750  90 03 01 94 */	stw r0, 0x194(r3)
/* 804CD754  39 08 E9 44 */	addi r8, r8, eEL_DecideLightPower@l /* 0x804CE944@l */
/* 804CD758  38 E7 EA B0 */	addi r7, r7, mEL_CheckLookAtBlock@l /* 0x804CEAB0@l */
/* 804CD75C  38 C6 E5 40 */	addi r6, r6, eEL_EffectLightStatus@l /* 0x804CE540@l */
/* 804CD760  90 03 01 98 */	stw r0, 0x198(r3)
/* 804CD764  38 A5 E4 94 */	addi r5, r5, eEL_SpecialBlockCenterPos@l /* 0x804CE494@l */
/* 804CD768  38 03 01 74 */	addi r0, r3, 0x174
/* 804CD76C  3C 84 00 02 */	addis r4, r4, 2
/* 804CD770  91 63 01 9C */	stw r11, 0x19c(r3)
/* 804CD774  91 43 01 A0 */	stw r10, 0x1a0(r3)
/* 804CD778  91 23 01 A4 */	stw r9, 0x1a4(r3)
/* 804CD77C  91 03 01 A8 */	stw r8, 0x1a8(r3)
/* 804CD780  90 E3 01 AC */	stw r7, 0x1ac(r3)
/* 804CD784  90 C3 01 B0 */	stw r6, 0x1b0(r3)
/* 804CD788  90 A3 01 B4 */	stw r5, 0x1b4(r3)
/* 804CD78C  90 04 60 9C */	stw r0, 0x609c(r4)
/* 804CD790  4E 80 00 20 */	blr 
