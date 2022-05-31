lbl_803D9EA4:
/* 803D9EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9EA8  7C 08 02 A6 */	mflr r0
/* 803D9EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D9EB0  4B FF F9 FD */	bl mPlib_Get_change_data_from_submenu_p
/* 803D9EB4  38 80 00 5B */	li r4, 0x5b
/* 803D9EB8  38 00 00 01 */	li r0, 1
/* 803D9EBC  90 83 00 00 */	stw r4, 0(r3)
/* 803D9EC0  90 03 00 04 */	stw r0, 4(r3)
/* 803D9EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D9EC8  7C 08 03 A6 */	mtlr r0
/* 803D9ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D9ED0  4E 80 00 20 */	blr 
