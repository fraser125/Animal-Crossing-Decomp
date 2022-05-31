lbl_803E252C:
/* 803E252C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E2530  7C 08 02 A6 */	mflr r0
/* 803E2534  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E2538  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803E253C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E2540  3C A5 00 01 */	addis r5, r5, 1
/* 803E2544  38 A5 91 20 */	addi r5, r5, -28384
/* 803E2548  4B FF FF 5D */	bl mPr_GetLandMapIdx
/* 803E254C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2550  7C 08 03 A6 */	mtlr r0
/* 803E2554  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2558  4E 80 00 20 */	blr 
