lbl_80529DA0:
/* 80529DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529DA4  7C 08 02 A6 */	mflr r0
/* 80529DA8  3C 80 80 53 */	lis r4, aHM0_act_proc@ha /* 0x80529CD0@ha */
/* 80529DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529DB0  38 00 00 00 */	li r0, 0
/* 80529DB4  90 03 07 D8 */	stw r0, 0x7d8(r3)
/* 80529DB8  38 04 9C D0 */	addi r0, r4, aHM0_act_proc@l /* 0x80529CD0@l */
/* 80529DBC  90 03 08 04 */	stw r0, 0x804(r3)
/* 80529DC0  4B FF FC BD */	bl func_80529A7C
/* 80529DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529DC8  7C 08 03 A6 */	mtlr r0
/* 80529DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80529DD0  4E 80 00 20 */	blr 
