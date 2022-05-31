lbl_803D9E74:
/* 803D9E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9E78  7C 08 02 A6 */	mflr r0
/* 803D9E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D9E80  4B FF FA 2D */	bl mPlib_Get_change_data_from_submenu_p
/* 803D9E84  38 80 00 76 */	li r4, 0x76
/* 803D9E88  38 00 00 01 */	li r0, 1
/* 803D9E8C  90 83 00 00 */	stw r4, 0(r3)
/* 803D9E90  90 03 00 04 */	stw r0, 4(r3)
/* 803D9E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D9E98  7C 08 03 A6 */	mtlr r0
/* 803D9E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D9EA0  4E 80 00 20 */	blr 
