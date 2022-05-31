lbl_80428990:
/* 80428990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80428994  7C 08 02 A6 */	mflr r0
/* 80428998  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042899C  4B F9 6D 0D */	bl func_803BF6A8
/* 804289A0  4B F9 71 E9 */	bl mMsg_request_main_appear_wait_type1
/* 804289A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804289A8  7C 08 03 A6 */	mtlr r0
/* 804289AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804289B0  4E 80 00 20 */	blr 
