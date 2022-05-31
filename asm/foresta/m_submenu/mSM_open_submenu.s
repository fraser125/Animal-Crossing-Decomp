lbl_803EF6DC:
/* 803EF6DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF6E0  7C 08 02 A6 */	mflr r0
/* 803EF6E4  38 E0 00 00 */	li r7, 0
/* 803EF6E8  39 00 00 00 */	li r8, 0
/* 803EF6EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF6F0  48 00 00 39 */	bl mSM_open_submenu_new2
/* 803EF6F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF6F8  7C 08 03 A6 */	mtlr r0
/* 803EF6FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF700  4E 80 00 20 */	blr 
