lbl_8054A758:
/* 8054A758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A75C  7C 08 02 A6 */	mflr r0
/* 8054A760  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A764  4B E7 4F 45 */	bl func_803BF6A8
/* 8054A768  4B E7 52 DD */	bl mMsg_request_main_disappear_wait_type1
/* 8054A76C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A770  7C 08 03 A6 */	mtlr r0
/* 8054A774  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A778  4E 80 00 20 */	blr 
