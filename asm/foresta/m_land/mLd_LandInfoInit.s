lbl_803B3B6C:
/* 803B3B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3B70  7C 08 02 A6 */	mflr r0
/* 803B3B74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B3B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3B7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B3B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B3B84  3F E3 00 01 */	addis r31, r3, 1
/* 803B3B88  4B FF FF 29 */	bl mLd_MakeLandId
/* 803B3B8C  38 00 00 01 */	li r0, 1
/* 803B3B90  B0 7F 91 2A */	sth r3, -0x6ed6(r31)
/* 803B3B94  98 1F 91 28 */	stb r0, -0x6ed8(r31)
/* 803B3B98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B3B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3BA0  7C 08 03 A6 */	mtlr r0
/* 803B3BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3BA8  4E 80 00 20 */	blr 
