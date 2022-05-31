lbl_803B9370:
/* 803B9370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9374  7C 08 02 A6 */	mflr r0
/* 803B9378  3C A0 80 64 */	lis r5, lit_545@ha /* 0x8064244C@ha */
/* 803B937C  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9380  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9384  38 84 9B A0 */	addi r4, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B9388  C0 25 24 4C */	lfs f1, lit_545@l(r5)  /* 0x8064244C@l */
/* 803B938C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B9390  7C 7F 1B 78 */	mr r31, r3
/* 803B9394  D0 24 00 28 */	stfs f1, 0x28(r4)
/* 803B9398  4B FF FE D5 */	bl mEnv_PointLightSet
/* 803B939C  7F E3 FB 78 */	mr r3, r31
/* 803B93A0  38 9F 1D 90 */	addi r4, r31, 0x1d90
/* 803B93A4  38 BF 1C E0 */	addi r5, r31, 0x1ce0
/* 803B93A8  48 00 2D D5 */	bl Global_light_list_new
/* 803B93AC  3C 80 81 17 */	lis r4, S_get_light_list@ha /* 0x81169C48@ha */
/* 803B93B0  90 64 9C 48 */	stw r3, S_get_light_list@l(r4)  /* 0x81169C48@l */
/* 803B93B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B93B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B93BC  7C 08 03 A6 */	mtlr r0
/* 803B93C0  38 21 00 10 */	addi r1, r1, 0x10
/* 803B93C4  4E 80 00 20 */	blr 
