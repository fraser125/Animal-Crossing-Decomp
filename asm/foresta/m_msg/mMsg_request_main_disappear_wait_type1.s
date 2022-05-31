lbl_803BFA44:
/* 803BFA44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFA48  7C 08 02 A6 */	mflr r0
/* 803BFA4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFA50  80 83 04 34 */	lwz r4, 0x434(r3)
/* 803BFA54  4B FF FF 95 */	bl mMsg_request_main_disappear_wait_sub
/* 803BFA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFA5C  7C 08 03 A6 */	mtlr r0
/* 803BFA60  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFA64  4E 80 00 20 */	blr 
