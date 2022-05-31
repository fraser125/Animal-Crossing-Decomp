lbl_803D98B8:
/* 803D98B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D98BC  7C 08 02 A6 */	mflr r0
/* 803D98C0  3C 60 81 17 */	lis r3, change_data_from_submenu@ha /* 0x8116EDE8@ha */
/* 803D98C4  38 80 00 50 */	li r4, 0x50
/* 803D98C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D98CC  38 63 ED E8 */	addi r3, r3, change_data_from_submenu@l /* 0x8116EDE8@l */
/* 803D98D0  4B C8 37 99 */	bl bzero
/* 803D98D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D98D8  7C 08 03 A6 */	mtlr r0
/* 803D98DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D98E0  4E 80 00 20 */	blr 
