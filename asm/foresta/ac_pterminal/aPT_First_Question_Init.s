lbl_80484B9C:
/* 80484B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484BA0  7C 08 02 A6 */	mflr r0
/* 80484BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484BA8  4B EF E9 99 */	bl func_80383540
/* 80484BAC  4B EF EF C9 */	bl mChoice_Clear_ChoseNum
/* 80484BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484BB4  7C 08 03 A6 */	mtlr r0
/* 80484BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80484BBC  4E 80 00 20 */	blr 
