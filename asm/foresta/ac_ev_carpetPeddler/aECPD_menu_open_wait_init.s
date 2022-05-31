lbl_8051C710:
/* 8051C710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C714  7C 08 02 A6 */	mflr r0
/* 8051C718  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C71C  4B EA 2F 8D */	bl func_803BF6A8
/* 8051C720  4B EA 33 25 */	bl mMsg_request_main_disappear_wait_type1
/* 8051C724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C728  7C 08 03 A6 */	mtlr r0
/* 8051C72C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C730  4E 80 00 20 */	blr 
