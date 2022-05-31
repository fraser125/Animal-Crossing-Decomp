lbl_8042896C:
/* 8042896C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80428970  7C 08 02 A6 */	mflr r0
/* 80428974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80428978  4B F9 6D 31 */	bl func_803BF6A8
/* 8042897C  4B F9 70 C9 */	bl mMsg_request_main_disappear_wait_type1
/* 80428980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80428984  7C 08 03 A6 */	mtlr r0
/* 80428988  38 21 00 10 */	addi r1, r1, 0x10
/* 8042898C  4E 80 00 20 */	blr 
