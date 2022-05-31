lbl_803D9E44:
/* 803D9E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9E48  7C 08 02 A6 */	mflr r0
/* 803D9E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D9E50  4B FF FA 5D */	bl mPlib_Get_change_data_from_submenu_p
/* 803D9E54  38 80 00 07 */	li r4, 7
/* 803D9E58  38 00 00 01 */	li r0, 1
/* 803D9E5C  90 83 00 00 */	stw r4, 0(r3)
/* 803D9E60  90 03 00 04 */	stw r0, 4(r3)
/* 803D9E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D9E68  7C 08 03 A6 */	mtlr r0
/* 803D9E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D9E70  4E 80 00 20 */	blr 
