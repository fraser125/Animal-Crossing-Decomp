lbl_8042B354:
/* 8042B354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B358  7C 08 02 A6 */	mflr r0
/* 8042B35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042B364  7C 9F 23 78 */	mr r31, r4
/* 8042B368  7F E3 FB 78 */	mr r3, r31
/* 8042B36C  4B FA EE 65 */	bl mPlib_request_main_wait_type3
/* 8042B370  7F E3 FB 78 */	mr r3, r31
/* 8042B374  38 80 00 00 */	li r4, 0
/* 8042B378  38 A0 00 09 */	li r5, 9
/* 8042B37C  4B F5 53 5D */	bl Camera2_request_main_normal
/* 8042B380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B384  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042B388  7C 08 03 A6 */	mtlr r0
/* 8042B38C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B390  4E 80 00 20 */	blr 
