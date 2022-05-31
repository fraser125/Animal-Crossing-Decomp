lbl_803A5DCC:
/* 803A5DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A5DD0  7C 08 02 A6 */	mflr r0
/* 803A5DD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A5DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A5DDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A5DE0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803A5DE4  4B FF FF 85 */	bl mFI_GetPlayerHouseFloorNo
/* 803A5DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A5DEC  7C 08 03 A6 */	mtlr r0
/* 803A5DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A5DF4  4E 80 00 20 */	blr 
