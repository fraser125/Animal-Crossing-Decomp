lbl_803CEDF0:
/* 803CEDF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CEDF4  7C 08 02 A6 */	mflr r0
/* 803CEDF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CEDFC  38 80 1C B0 */	li r4, 0x1cb0
/* 803CEE00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CEE04  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CEE08  3C 63 00 02 */	addis r3, r3, 2
/* 803CEE0C  38 63 68 78 */	addi r3, r3, 0x6878
/* 803CEE10  4B C8 E2 59 */	bl bzero
/* 803CEE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CEE18  7C 08 03 A6 */	mtlr r0
/* 803CEE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803CEE20  4E 80 00 20 */	blr 
