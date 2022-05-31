lbl_803853BC:
/* 803853BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803853C0  7C 08 02 A6 */	mflr r0
/* 803853C4  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 803853C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803853CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803853D0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803853D4  7C 60 22 14 */	add r3, r0, r4
/* 803853D8  3C 63 00 01 */	addis r3, r3, 1
/* 803853DC  38 63 9C E8 */	addi r3, r3, -25368
/* 803853E0  48 00 00 15 */	bl mCkRh_InitGokiSaveData_1Room_ByHomeData
/* 803853E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803853E8  7C 08 03 A6 */	mtlr r0
/* 803853EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803853F0  4E 80 00 20 */	blr 
