lbl_803D91CC:
/* 803D91CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D91D0  7C 08 02 A6 */	mflr r0
/* 803D91D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D91D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D91DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D91E0  3C 63 00 02 */	addis r3, r3, 2
/* 803D91E4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803D91E8  A0 63 10 88 */	lhz r3, 0x1088(r3)
/* 803D91EC  4B FF FF 61 */	bl mPlib_Get_PlayerPalletRom_p
/* 803D91F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D91F4  7C 08 03 A6 */	mtlr r0
/* 803D91F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D91FC  4E 80 00 20 */	blr 
