lbl_803D5D84:
/* 803D5D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5D88  7C 08 02 A6 */	mflr r0
/* 803D5D8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D5D90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D5D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5D98  3C 63 00 02 */	addis r3, r3, 2
/* 803D5D9C  A0 63 34 40 */	lhz r3, 0x3440(r3)
/* 803D5DA0  4B FF FF 91 */	bl mNpc_GetMDIdx
/* 803D5DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5DA8  7C 08 03 A6 */	mtlr r0
/* 803D5DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5DB0  4E 80 00 20 */	blr 
