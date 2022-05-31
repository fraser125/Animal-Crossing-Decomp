lbl_8054CA08:
/* 8054CA08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CA0C  7C 08 02 A6 */	mflr r0
/* 8054CA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CA14  4B E7 2C 95 */	bl func_803BF6A8
/* 8054CA18  4B E7 30 2D */	bl mMsg_request_main_disappear_wait_type1
/* 8054CA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CA20  7C 08 03 A6 */	mtlr r0
/* 8054CA24  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CA28  4E 80 00 20 */	blr 
