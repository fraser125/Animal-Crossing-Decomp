lbl_803EF704:
/* 803EF704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF708  7C 08 02 A6 */	mflr r0
/* 803EF70C  39 00 00 00 */	li r8, 0
/* 803EF710  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF714  48 00 00 15 */	bl mSM_open_submenu_new2
/* 803EF718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF71C  7C 08 03 A6 */	mtlr r0
/* 803EF720  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF724  4E 80 00 20 */	blr 
