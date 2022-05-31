lbl_8058FD98:
/* 8058FD98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058FD9C  7C 08 02 A6 */	mflr r0
/* 8058FDA0  38 A0 00 6E */	li r5, 0x6e
/* 8058FDA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058FDA8  4B FF FF 0D */	bl aTNN1_common_init
/* 8058FDAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058FDB0  7C 08 03 A6 */	mtlr r0
/* 8058FDB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058FDB8  4E 80 00 20 */	blr 
