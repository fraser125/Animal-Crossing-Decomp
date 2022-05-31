lbl_803EA188:
/* 803EA188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EA18C  7C 08 02 A6 */	mflr r0
/* 803EA190  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EA194  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EA198  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EA19C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EA1A0  3F E3 00 02 */	addis r31, r3, 2
/* 803EA1A4  3B FF 03 40 */	addi r31, r31, 0x340
/* 803EA1A8  7F E3 FB 78 */	mr r3, r31
/* 803EA1AC  4B FF FF 89 */	bl mSP_DecideUniqueCommonList
/* 803EA1B0  38 7F 00 01 */	addi r3, r31, 1
/* 803EA1B4  4B FF FF 81 */	bl mSP_DecideUniqueCommonList
/* 803EA1B8  38 7F 00 02 */	addi r3, r31, 2
/* 803EA1BC  4B FF FF 79 */	bl mSP_DecideUniqueCommonList
/* 803EA1C0  38 7F 00 03 */	addi r3, r31, 3
/* 803EA1C4  4B FF FF 71 */	bl mSP_DecideUniqueCommonList
/* 803EA1C8  38 7F 00 04 */	addi r3, r31, 4
/* 803EA1CC  4B FF FF 69 */	bl mSP_DecideUniqueCommonList
/* 803EA1D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EA1D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EA1D8  7C 08 03 A6 */	mtlr r0
/* 803EA1DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EA1E0  4E 80 00 20 */	blr 
