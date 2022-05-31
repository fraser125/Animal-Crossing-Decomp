lbl_803EDA94:
/* 803EDA94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EDA98  7C 08 02 A6 */	mflr r0
/* 803EDA9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EDAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EDAA4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EDAA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EDAAC  3F E3 00 02 */	addis r31, r3, 2
/* 803EDAB0  3B FF 41 6C */	addi r31, r31, 0x416c
/* 803EDAB4  4B FF FE F1 */	bl mSC_LightHouse_clear_data
/* 803EDAB8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EDABC  7F E3 FB 78 */	mr r3, r31
/* 803EDAC0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EDAC4  3C 84 00 02 */	addis r4, r4, 2
/* 803EDAC8  38 84 61 20 */	addi r4, r4, 0x6120
/* 803EDACC  48 00 59 95 */	bl mTM_set_renew_time
/* 803EDAD0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EDAD4  38 80 00 01 */	li r4, 1
/* 803EDAD8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EDADC  88 BF 00 05 */	lbz r5, 5(r31)
/* 803EDAE0  3C 63 00 02 */	addis r3, r3, 2
/* 803EDAE4  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 803EDAE8  7C 80 00 30 */	slw r0, r4, r0
/* 803EDAEC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803EDAF0  7C A0 03 78 */	or r0, r5, r0
/* 803EDAF4  98 1F 00 05 */	stb r0, 5(r31)
/* 803EDAF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EDAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EDB00  7C 08 03 A6 */	mtlr r0
/* 803EDB04  38 21 00 10 */	addi r1, r1, 0x10
/* 803EDB08  4E 80 00 20 */	blr 
