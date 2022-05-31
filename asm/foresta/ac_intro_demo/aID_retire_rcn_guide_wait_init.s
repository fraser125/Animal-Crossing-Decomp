lbl_8042B404:
/* 8042B404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B408  7C 08 02 A6 */	mflr r0
/* 8042B40C  38 A0 00 00 */	li r5, 0
/* 8042B410  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042B418  7C 7F 1B 78 */	mr r31, r3
/* 8042B41C  7C 83 23 78 */	mr r3, r4
/* 8042B420  38 80 00 00 */	li r4, 0
/* 8042B424  4B FA F9 61 */	bl mPlib_request_main_demo_wait_type1
/* 8042B428  38 60 00 32 */	li r3, 0x32
/* 8042B42C  38 80 01 68 */	li r4, 0x168
/* 8042B430  4B F5 0E F5 */	bl mBGMPsComp_delete_ps_demo
/* 8042B434  38 60 02 D0 */	li r3, 0x2d0
/* 8042B438  4B F5 08 49 */	bl mBGMPsComp_make_ps_fc_quiet
/* 8042B43C  38 00 00 01 */	li r0, 1
/* 8042B440  98 1F 01 9C */	stb r0, 0x19c(r31)
/* 8042B444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042B44C  7C 08 03 A6 */	mtlr r0
/* 8042B450  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B454  4E 80 00 20 */	blr 
