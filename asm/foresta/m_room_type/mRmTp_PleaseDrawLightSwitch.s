lbl_803E7160:
/* 803E7160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E7164  7C 08 02 A6 */	mflr r0
/* 803E7168  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E716C  4B FF FF 41 */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803E7170  2C 03 00 00 */	cmpwi r3, 0
/* 803E7174  41 80 00 1C */	blt lbl_803E7190
/* 803E7178  2C 03 00 0D */	cmpwi r3, 0xd
/* 803E717C  40 80 00 14 */	bge lbl_803E7190
/* 803E7180  3C 80 80 66 */	lis r4, z_bottun_data@ha /* 0x8065D514@ha */
/* 803E7184  38 84 D5 14 */	addi r4, r4, z_bottun_data@l /* 0x8065D514@l */
/* 803E7188  7C 64 18 AE */	lbzx r3, r4, r3
/* 803E718C  48 00 00 08 */	b lbl_803E7194
lbl_803E7190:
/* 803E7190  38 60 00 00 */	li r3, 0
lbl_803E7194:
/* 803E7194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7198  7C 08 03 A6 */	mtlr r0
/* 803E719C  38 21 00 10 */	addi r1, r1, 0x10
/* 803E71A0  4E 80 00 20 */	blr 
