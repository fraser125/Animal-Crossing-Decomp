lbl_80585864:
/* 80585864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585868  7C 08 02 A6 */	mflr r0
/* 8058586C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585870  4B E3 9E 39 */	bl func_803BF6A8
/* 80585874  4B E3 A3 15 */	bl mMsg_request_main_appear_wait_type1
/* 80585878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058587C  7C 08 03 A6 */	mtlr r0
/* 80585880  38 21 00 10 */	addi r1, r1, 0x10
/* 80585884  4E 80 00 20 */	blr 
