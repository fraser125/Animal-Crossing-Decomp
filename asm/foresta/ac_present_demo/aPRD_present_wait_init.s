lbl_80483EF0:
/* 80483EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483EF4  7C 08 02 A6 */	mflr r0
/* 80483EF8  7C 83 23 78 */	mr r3, r4
/* 80483EFC  38 80 00 00 */	li r4, 0
/* 80483F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483F04  38 A0 00 00 */	li r5, 0
/* 80483F08  4B F5 6E 7D */	bl mPlib_request_main_demo_wait_type1
/* 80483F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483F10  7C 08 03 A6 */	mtlr r0
/* 80483F14  38 21 00 10 */	addi r1, r1, 0x10
/* 80483F18  4E 80 00 20 */	blr 
