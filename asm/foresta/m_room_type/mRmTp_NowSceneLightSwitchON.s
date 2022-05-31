lbl_803E71A4:
/* 803E71A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E71A8  7C 08 02 A6 */	mflr r0
/* 803E71AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E71B0  4B FF FE FD */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803E71B4  2C 03 00 00 */	cmpwi r3, 0
/* 803E71B8  41 80 00 30 */	blt lbl_803E71E8
/* 803E71BC  2C 03 00 0D */	cmpwi r3, 0xd
/* 803E71C0  40 80 00 28 */	bge lbl_803E71E8
/* 803E71C4  3C 80 81 17 */	lis r4, l_mRmTp_switch_data@ha /* 0x8117143C@ha */
/* 803E71C8  38 00 00 01 */	li r0, 1
/* 803E71CC  38 A4 14 3C */	addi r5, r4, l_mRmTp_switch_data@l /* 0x8117143C@l */
/* 803E71D0  80 85 00 00 */	lwz r4, 0(r5)
/* 803E71D4  7C 00 18 30 */	slw r0, r0, r3
/* 803E71D8  38 60 00 01 */	li r3, 1
/* 803E71DC  7C 80 03 78 */	or r0, r4, r0
/* 803E71E0  90 05 00 00 */	stw r0, 0(r5)
/* 803E71E4  48 00 00 08 */	b lbl_803E71EC
lbl_803E71E8:
/* 803E71E8  38 60 00 00 */	li r3, 0
lbl_803E71EC:
/* 803E71EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E71F0  7C 08 03 A6 */	mtlr r0
/* 803E71F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803E71F8  4E 80 00 20 */	blr 
