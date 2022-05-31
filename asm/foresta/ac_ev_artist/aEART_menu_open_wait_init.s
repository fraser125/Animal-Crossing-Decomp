lbl_8051993C:
/* 8051993C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519940  7C 08 02 A6 */	mflr r0
/* 80519944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519948  4B EA 5D 61 */	bl func_803BF6A8
/* 8051994C  4B EA 60 F9 */	bl mMsg_request_main_disappear_wait_type1
/* 80519950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519954  7C 08 03 A6 */	mtlr r0
/* 80519958  38 21 00 10 */	addi r1, r1, 0x10
/* 8051995C  4E 80 00 20 */	blr 
