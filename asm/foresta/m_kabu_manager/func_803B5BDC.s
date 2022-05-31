lbl_803B5BDC:
/* 803B5BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5BE0  7C 08 02 A6 */	mflr r0
/* 803B5BE4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B5BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5BEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B5BF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B5BF4  3F E3 00 02 */	addis r31, r3, 2
/* 803B5BF8  7F E4 FB 78 */	mr r4, r31
/* 803B5BFC  3B FF 04 90 */	addi r31, r31, 0x490
/* 803B5C00  7F E3 FB 78 */	mr r3, r31
/* 803B5C04  38 84 61 20 */	addi r4, r4, 0x6120
/* 803B5C08  48 05 16 2D */	bl lbRTC_TimeCopy
/* 803B5C0C  38 00 00 00 */	li r0, 0
/* 803B5C10  88 9F 00 04 */	lbz r4, 4(r31)
/* 803B5C14  98 1F 00 02 */	stb r0, 2(r31)
/* 803B5C18  7F E3 FB 78 */	mr r3, r31
/* 803B5C1C  98 1F 00 01 */	stb r0, 1(r31)
/* 803B5C20  98 1F 00 00 */	stb r0, 0(r31)
/* 803B5C24  48 05 13 99 */	bl lbRTC_Sub_DD
/* 803B5C28  38 00 00 00 */	li r0, 0
/* 803B5C2C  98 1F 00 04 */	stb r0, 4(r31)
/* 803B5C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B5C38  7C 08 03 A6 */	mtlr r0
/* 803B5C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5C40  4E 80 00 20 */	blr 
