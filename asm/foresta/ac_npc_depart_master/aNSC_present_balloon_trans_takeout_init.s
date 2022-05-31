lbl_80551F94:
/* 80551F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551F98  7C 08 02 A6 */	mflr r0
/* 80551F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80551FA4  7C 7F 1B 78 */	mr r31, r3
/* 80551FA8  88 03 09 A2 */	lbz r0, 0x9a2(r3)
/* 80551FAC  98 03 09 A3 */	stb r0, 0x9a3(r3)
/* 80551FB0  4B FF B7 61 */	bl aNSC_set_stop_spd
/* 80551FB4  38 9F 00 28 */	addi r4, r31, 0x28
/* 80551FB8  38 60 00 69 */	li r3, 0x69
/* 80551FBC  48 0D BF ED */	bl sAdo_OngenTrgStart
/* 80551FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80551FC8  7C 08 03 A6 */	mtlr r0
/* 80551FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80551FD0  4E 80 00 20 */	blr 
