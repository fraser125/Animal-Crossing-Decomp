lbl_803B8434:
/* 803B8434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B8438  7C 08 02 A6 */	mflr r0
/* 803B843C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B8440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B8444  7C 7F 1B 78 */	mr r31, r3
/* 803B8448  38 7F 00 05 */	addi r3, r31, 5
/* 803B844C  38 9F 00 9A */	addi r4, r31, 0x9a
/* 803B8450  38 BF 00 7E */	addi r5, r31, 0x7e
/* 803B8454  4B FF FF 79 */	bl mEnv_AddAndSetRGBColor
/* 803B8458  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B845C  38 7F 00 13 */	addi r3, r31, 0x13
/* 803B8460  38 A4 9B A0 */	addi r5, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8464  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 803B8468  38 A5 00 3C */	addi r5, r5, 0x3c
/* 803B846C  4B FF FF 61 */	bl mEnv_AddAndSetRGBColor
/* 803B8470  88 1F 00 97 */	lbz r0, 0x97(r31)
/* 803B8474  98 1F 00 02 */	stb r0, 2(r31)
/* 803B8478  88 1F 00 98 */	lbz r0, 0x98(r31)
/* 803B847C  98 1F 00 03 */	stb r0, 3(r31)
/* 803B8480  88 1F 00 99 */	lbz r0, 0x99(r31)
/* 803B8484  98 1F 00 04 */	stb r0, 4(r31)
/* 803B8488  88 1F 00 9D */	lbz r0, 0x9d(r31)
/* 803B848C  98 1F 00 10 */	stb r0, 0x10(r31)
/* 803B8490  88 1F 00 9E */	lbz r0, 0x9e(r31)
/* 803B8494  98 1F 00 11 */	stb r0, 0x11(r31)
/* 803B8498  88 1F 00 9F */	lbz r0, 0x9f(r31)
/* 803B849C  98 1F 00 12 */	stb r0, 0x12(r31)
/* 803B84A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B84A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B84A8  7C 08 03 A6 */	mtlr r0
/* 803B84AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B84B0  4E 80 00 20 */	blr 
