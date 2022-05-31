lbl_8051C5DC:
/* 8051C5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C5E0  7C 08 02 A6 */	mflr r0
/* 8051C5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C5E8  4B EA 30 C1 */	bl func_803BF6A8
/* 8051C5EC  4B EA 35 9D */	bl mMsg_request_main_appear_wait_type1
/* 8051C5F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C5F4  7C 08 03 A6 */	mtlr r0
/* 8051C5F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C5FC  4E 80 00 20 */	blr 
