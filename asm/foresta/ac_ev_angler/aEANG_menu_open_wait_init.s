lbl_80518F0C:
/* 80518F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80518F10  7C 08 02 A6 */	mflr r0
/* 80518F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80518F18  4B EA 67 91 */	bl func_803BF6A8
/* 80518F1C  4B EA 6B 29 */	bl mMsg_request_main_disappear_wait_type1
/* 80518F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80518F24  7C 08 03 A6 */	mtlr r0
/* 80518F28  38 21 00 10 */	addi r1, r1, 0x10
/* 80518F2C  4E 80 00 20 */	blr 
