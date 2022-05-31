lbl_803B66E4:
/* 803B66E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B66E8  7C 08 02 A6 */	mflr r0
/* 803B66EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B66F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B66F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B66F8  7C 7F 1B 78 */	mr r31, r3
/* 803B66FC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803B6700  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803B6704  2C 00 00 21 */	cmpwi r0, 0x21
/* 803B6708  40 82 00 18 */	bne lbl_803B6720
/* 803B670C  38 60 00 00 */	li r3, 0
/* 803B6710  48 03 0C CD */	bl mRmTp_SetDefaultLightSwitchData
/* 803B6714  38 60 00 09 */	li r3, 9
/* 803B6718  48 03 0B 79 */	bl mRmTp_IndexLightSwitchOFF
/* 803B671C  48 00 00 34 */	b lbl_803B6750
lbl_803B6720:
/* 803B6720  2C 00 00 06 */	cmpwi r0, 6
/* 803B6724  41 82 00 0C */	beq lbl_803B6730
/* 803B6728  2C 00 00 30 */	cmpwi r0, 0x30
/* 803B672C  40 82 00 24 */	bne lbl_803B6750
lbl_803B6730:
/* 803B6730  48 00 29 91 */	bl mEnv_CheckNpcRoomPointLightNiceStatus
/* 803B6734  2C 03 00 00 */	cmpwi r3, 0
/* 803B6738  40 82 00 10 */	bne lbl_803B6748
/* 803B673C  38 60 00 0A */	li r3, 0xa
/* 803B6740  48 03 0B 51 */	bl mRmTp_IndexLightSwitchOFF
/* 803B6744  48 00 00 0C */	b lbl_803B6750
lbl_803B6748:
/* 803B6748  38 60 00 0A */	li r3, 0xa
/* 803B674C  48 03 0A B1 */	bl mRmTp_IndexLightSwitchON
lbl_803B6750:
/* 803B6750  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803B6754  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6758  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803B675C  38 C4 9B A0 */	addi r6, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6760  38 00 00 00 */	li r0, 0
/* 803B6764  7F E3 FB 78 */	mr r3, r31
/* 803B6768  B0 06 00 24 */	sth r0, 0x24(r6)
/* 803B676C  38 E6 00 24 */	addi r7, r6, 0x24
/* 803B6770  38 81 00 10 */	addi r4, r1, 0x10
/* 803B6774  38 A1 00 0C */	addi r5, r1, 0xc
/* 803B6778  D0 06 00 00 */	stfs f0, 0(r6)
/* 803B677C  38 C1 00 08 */	addi r6, r1, 8
/* 803B6780  4B FF FA D9 */	bl mEnv_GetNowRoomPointLightInfo
/* 803B6784  2C 03 00 01 */	cmpwi r3, 1
/* 803B6788  40 82 00 B0 */	bne lbl_803B6838
/* 803B678C  A8 81 00 10 */	lha r4, 0x10(r1)
/* 803B6790  38 7F 1C E0 */	addi r3, r31, 0x1ce0
/* 803B6794  A8 A1 00 12 */	lha r5, 0x12(r1)
/* 803B6798  A8 C1 00 14 */	lha r6, 0x14(r1)
/* 803B679C  88 E1 00 0C */	lbz r7, 0xc(r1)
/* 803B67A0  89 01 00 0D */	lbz r8, 0xd(r1)
/* 803B67A4  89 21 00 0E */	lbz r9, 0xe(r1)
/* 803B67A8  A9 41 00 08 */	lha r10, 8(r1)
/* 803B67AC  48 00 51 15 */	bl Light_point_ct
/* 803B67B0  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B67B4  88 81 00 0C */	lbz r4, 0xc(r1)
/* 803B67B8  38 E3 9B A0 */	addi r7, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B67BC  88 C1 00 0D */	lbz r6, 0xd(r1)
/* 803B67C0  88 01 00 0E */	lbz r0, 0xe(r1)
/* 803B67C4  7F E3 FB 78 */	mr r3, r31
/* 803B67C8  98 87 00 04 */	stb r4, 4(r7)
/* 803B67CC  38 9F 1D 90 */	addi r4, r31, 0x1d90
/* 803B67D0  38 BF 1C E0 */	addi r5, r31, 0x1ce0
/* 803B67D4  98 C7 00 05 */	stb r6, 5(r7)
/* 803B67D8  98 07 00 06 */	stb r0, 6(r7)
/* 803B67DC  48 00 59 A1 */	bl Global_light_list_new
/* 803B67E0  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B67E4  38 84 9B A0 */	addi r4, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B67E8  90 64 00 38 */	stw r3, 0x38(r4)
/* 803B67EC  48 03 08 C1 */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803B67F0  2C 03 FF FF */	cmpwi r3, -1
/* 803B67F4  41 82 00 34 */	beq lbl_803B6828
/* 803B67F8  48 03 0A D5 */	bl mRmTp_Index2LightSwitchStatus
/* 803B67FC  2C 03 00 00 */	cmpwi r3, 0
/* 803B6800  41 82 00 10 */	beq lbl_803B6810
/* 803B6804  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B6808  C0 03 24 4C */	lfs f0, lit_545@l(r3)  /* 0x8064244C@l */
/* 803B680C  48 00 00 10 */	b lbl_803B681C
lbl_803B6810:
/* 803B6810  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6814  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6818  C0 03 00 90 */	lfs f0, 0x90(r3)
lbl_803B681C:
/* 803B681C  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6820  D0 03 9B A0 */	stfs f0, data_81169BA0@l(r3)  /* 0x81169BA0@l */
/* 803B6824  48 00 00 14 */	b lbl_803B6838
lbl_803B6828:
/* 803B6828  3C 80 80 64 */	lis r4, lit_545@ha /* 0x8064244C@ha */
/* 803B682C  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6830  C0 04 24 4C */	lfs f0, lit_545@l(r4)  /* 0x8064244C@l */
/* 803B6834  D0 03 9B A0 */	stfs f0, data_81169BA0@l(r3)  /* 0x81169BA0@l */
lbl_803B6838:
/* 803B6838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B683C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B6840  7C 08 03 A6 */	mtlr r0
/* 803B6844  38 21 00 20 */	addi r1, r1, 0x20
/* 803B6848  4E 80 00 20 */	blr 
