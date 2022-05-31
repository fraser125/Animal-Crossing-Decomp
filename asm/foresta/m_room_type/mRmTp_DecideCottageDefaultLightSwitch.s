lbl_803E75B0:
/* 803E75B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E75B4  7C 08 02 A6 */	mflr r0
/* 803E75B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E75BC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 803E75C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E75C4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E75C8  3C 84 00 02 */	addis r4, r4, 2
/* 803E75CC  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 803E75D0  80 64 61 1C */	lwz r3, 0x611c(r4)
/* 803E75D4  7C 03 00 00 */	cmpw r3, r0
/* 803E75D8  40 80 00 0C */	bge lbl_803E75E4
/* 803E75DC  2C 03 46 50 */	cmpwi r3, 0x4650
/* 803E75E0  40 80 00 10 */	bge lbl_803E75F0
lbl_803E75E4:
/* 803E75E4  38 60 00 08 */	li r3, 8
/* 803E75E8  4B FF FC 15 */	bl mRmTp_IndexLightSwitchON
/* 803E75EC  48 00 00 0C */	b lbl_803E75F8
lbl_803E75F0:
/* 803E75F0  38 60 00 08 */	li r3, 8
/* 803E75F4  4B FF FC 9D */	bl mRmTp_IndexLightSwitchOFF
lbl_803E75F8:
/* 803E75F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E75FC  7C 08 03 A6 */	mtlr r0
/* 803E7600  38 21 00 10 */	addi r1, r1, 0x10
/* 803E7604  4E 80 00 20 */	blr 
