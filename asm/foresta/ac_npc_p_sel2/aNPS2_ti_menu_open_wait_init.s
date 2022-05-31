lbl_80569B08:
/* 80569B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80569B0C  7C 08 02 A6 */	mflr r0
/* 80569B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80569B14  4B E5 5B 95 */	bl func_803BF6A8
/* 80569B18  4B E5 5F 2D */	bl mMsg_request_main_disappear_wait_type1
/* 80569B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80569B20  7C 08 03 A6 */	mtlr r0
/* 80569B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80569B28  4E 80 00 20 */	blr 
