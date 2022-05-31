lbl_803AE598:
/* 803AE598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE59C  7C 08 02 A6 */	mflr r0
/* 803AE5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AE5A8  4B FF F7 A1 */	bl func_803ADD48
/* 803AE5AC  7C 7F 1B 78 */	mr r31, r3
/* 803AE5B0  4B FF F8 29 */	bl sSC_CheckSaveData_Shop
/* 803AE5B4  7F FF 1B 78 */	or r31, r31, r3
/* 803AE5B8  4B FF F9 D1 */	bl sSC_CheckSaveData_House
/* 803AE5BC  7F FF 1B 78 */	or r31, r31, r3
/* 803AE5C0  4B FF FA F5 */	bl sSC_CheckSaveData_Cattage
/* 803AE5C4  7F FF 1B 78 */	or r31, r31, r3
/* 803AE5C8  4B FF FC 05 */	bl sSC_CheckSaveData_MuseumDisplay
/* 803AE5CC  7F FF 1B 78 */	or r31, r31, r3
/* 803AE5D0  4B FF FD 7D */	bl sSC_CheckSaveData_Needlework
/* 803AE5D4  7F FF 1B 78 */	or r31, r31, r3
/* 803AE5D8  4B FF FF 3D */	bl sSC_CheckSaveData_Map
/* 803AE5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AE5E0  7F FF 1B 78 */	or r31, r31, r3
/* 803AE5E4  7F E3 FB 78 */	mr r3, r31
/* 803AE5E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AE5EC  7C 08 03 A6 */	mtlr r0
/* 803AE5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803AE5F4  4E 80 00 20 */	blr 
