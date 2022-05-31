lbl_803DB5B8:
/* 803DB5B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB5BC  7C 08 02 A6 */	mflr r0
/* 803DB5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB5C4  4B FF E2 E9 */	bl mPlib_Get_change_data_from_submenu_p
/* 803DB5C8  80 63 00 04 */	lwz r3, 4(r3)
/* 803DB5CC  30 03 FF FF */	addic r0, r3, -1
/* 803DB5D0  7C 60 19 10 */	subfe r3, r0, r3
/* 803DB5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB5D8  7C 08 03 A6 */	mtlr r0
/* 803DB5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB5E0  4E 80 00 20 */	blr 
