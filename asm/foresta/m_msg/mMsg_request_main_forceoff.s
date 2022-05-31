lbl_803BF8D4:
/* 803BF8D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF8D8  7C 08 02 A6 */	mflr r0
/* 803BF8DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF8E0  4B FF FD C9 */	bl func_803BF6A8
/* 803BF8E4  38 80 00 00 */	li r4, 0
/* 803BF8E8  38 A0 00 09 */	li r5, 9
/* 803BF8EC  4B FF FD E5 */	bl mMsg_Change_request_main_index
/* 803BF8F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF8F4  7C 08 03 A6 */	mtlr r0
/* 803BF8F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF8FC  4E 80 00 20 */	blr 
