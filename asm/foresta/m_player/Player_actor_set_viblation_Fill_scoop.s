lbl_804D4DC0:
/* 804D4DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4DC4  7C 08 02 A6 */	mflr r0
/* 804D4DC8  38 60 00 50 */	li r3, 0x50
/* 804D4DCC  38 80 00 01 */	li r4, 1
/* 804D4DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4DD4  38 A0 00 08 */	li r5, 8
/* 804D4DD8  38 C0 00 01 */	li r6, 1
/* 804D4DDC  38 E0 00 06 */	li r7, 6
/* 804D4DE0  39 00 00 3C */	li r8, 0x3c
/* 804D4DE4  39 20 00 00 */	li r9, 0
/* 804D4DE8  4B FF FF 39 */	bl func_804D4D20
/* 804D4DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4DF0  7C 08 03 A6 */	mtlr r0
/* 804D4DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4DF8  4E 80 00 20 */	blr 
