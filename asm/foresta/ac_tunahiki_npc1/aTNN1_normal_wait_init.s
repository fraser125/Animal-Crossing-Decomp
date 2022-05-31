lbl_8058FC7C:
/* 8058FC7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058FC80  7C 08 02 A6 */	mflr r0
/* 8058FC84  38 80 00 04 */	li r4, 4
/* 8058FC88  38 A0 00 00 */	li r5, 0
/* 8058FC8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058FC90  38 C0 00 00 */	li r6, 0
/* 8058FC94  38 E0 00 00 */	li r7, 0
/* 8058FC98  39 00 00 00 */	li r8, 0
/* 8058FC9C  39 20 00 00 */	li r9, 0
/* 8058FCA0  4B FF F4 C1 */	bl aTNN1_set_request_act
/* 8058FCA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058FCA8  7C 08 03 A6 */	mtlr r0
/* 8058FCAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058FCB0  4E 80 00 20 */	blr 
