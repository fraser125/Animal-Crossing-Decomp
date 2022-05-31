lbl_805857FC:
/* 805857FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585800  7C 08 02 A6 */	mflr r0
/* 80585804  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585808  4B E3 9E A1 */	bl func_803BF6A8
/* 8058580C  4B E3 A2 39 */	bl mMsg_request_main_disappear_wait_type1
/* 80585810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585814  7C 08 03 A6 */	mtlr r0
/* 80585818  38 21 00 10 */	addi r1, r1, 0x10
/* 8058581C  4E 80 00 20 */	blr 
