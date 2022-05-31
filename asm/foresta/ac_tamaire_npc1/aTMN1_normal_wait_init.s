lbl_8058AEDC:
/* 8058AEDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AEE0  7C 08 02 A6 */	mflr r0
/* 8058AEE4  38 80 00 04 */	li r4, 4
/* 8058AEE8  38 A0 00 00 */	li r5, 0
/* 8058AEEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AEF0  38 C0 00 00 */	li r6, 0
/* 8058AEF4  38 E0 00 00 */	li r7, 0
/* 8058AEF8  39 00 00 00 */	li r8, 0
/* 8058AEFC  39 20 00 00 */	li r9, 0
/* 8058AF00  4B FF F3 B9 */	bl aTMN1_set_request_act
/* 8058AF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AF08  7C 08 03 A6 */	mtlr r0
/* 8058AF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AF10  4E 80 00 20 */	blr 
