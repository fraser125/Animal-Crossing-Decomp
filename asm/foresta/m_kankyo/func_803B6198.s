lbl_803B6198:
/* 803B6198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B619C  7C 08 02 A6 */	mflr r0
/* 803B61A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B61A4  48 03 0F 09 */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803B61A8  2C 03 FF FF */	cmpwi r3, -1
/* 803B61AC  41 82 00 40 */	beq lbl_803B61EC
/* 803B61B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B61B4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B61B8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803B61BC  2C 03 00 2A */	cmpwi r3, 0x2a
/* 803B61C0  41 82 00 2C */	beq lbl_803B61EC
/* 803B61C4  38 03 FF D5 */	addi r0, r3, -43
/* 803B61C8  28 00 00 02 */	cmplwi r0, 2
/* 803B61CC  40 81 00 20 */	ble lbl_803B61EC
/* 803B61D0  2C 03 00 32 */	cmpwi r3, 0x32
/* 803B61D4  41 82 00 18 */	beq lbl_803B61EC
/* 803B61D8  2C 03 00 33 */	cmpwi r3, 0x33
/* 803B61DC  41 82 00 10 */	beq lbl_803B61EC
/* 803B61E0  3C 60 80 64 */	lis r3, data_806423D4@ha /* 0x806423D4@ha */
/* 803B61E4  C0 23 23 D4 */	lfs f1, data_806423D4@l(r3)  /* 0x806423D4@l */
/* 803B61E8  48 00 00 10 */	b lbl_803B61F8
lbl_803B61EC:
/* 803B61EC  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B61F0  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B61F4  C0 23 00 94 */	lfs f1, 0x94(r3)
lbl_803B61F8:
/* 803B61F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B61FC  7C 08 03 A6 */	mtlr r0
/* 803B6200  38 21 00 10 */	addi r1, r1, 0x10
/* 803B6204  4E 80 00 20 */	blr 
