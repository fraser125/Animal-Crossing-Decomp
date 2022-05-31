lbl_8054CAA0:
/* 8054CAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CAA4  7C 08 02 A6 */	mflr r0
/* 8054CAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CAAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054CAB0  4B E7 2B F9 */	bl func_803BF6A8
/* 8054CAB4  7C 7F 1B 78 */	mr r31, r3
/* 8054CAB8  4B E7 30 D1 */	bl mMsg_request_main_appear_wait_type1
/* 8054CABC  7F E3 FB 78 */	mr r3, r31
/* 8054CAC0  4B E7 42 8D */	bl mMsg_Unset_LockContinue
/* 8054CAC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CAC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054CACC  7C 08 03 A6 */	mtlr r0
/* 8054CAD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CAD4  4E 80 00 20 */	blr 
