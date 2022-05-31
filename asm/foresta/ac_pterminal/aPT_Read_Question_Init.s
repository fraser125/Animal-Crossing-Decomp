lbl_80484FAC:
/* 80484FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484FB0  7C 08 02 A6 */	mflr r0
/* 80484FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484FB8  4B EF E5 89 */	bl func_80383540
/* 80484FBC  4B EF EB B9 */	bl mChoice_Clear_ChoseNum
/* 80484FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484FC4  7C 08 03 A6 */	mtlr r0
/* 80484FC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80484FCC  4E 80 00 20 */	blr 
