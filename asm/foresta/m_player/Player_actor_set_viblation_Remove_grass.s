lbl_804D4FA4:
/* 804D4FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4FA8  7C 08 02 A6 */	mflr r0
/* 804D4FAC  38 60 00 5A */	li r3, 0x5a
/* 804D4FB0  38 80 00 01 */	li r4, 1
/* 804D4FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4FB8  38 A0 00 01 */	li r5, 1
/* 804D4FBC  38 C0 00 01 */	li r6, 1
/* 804D4FC0  38 E0 00 00 */	li r7, 0
/* 804D4FC4  39 00 00 01 */	li r8, 1
/* 804D4FC8  39 20 00 0A */	li r9, 0xa
/* 804D4FCC  4B FF FD 55 */	bl func_804D4D20
/* 804D4FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4FD4  7C 08 03 A6 */	mtlr r0
/* 804D4FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4FDC  4E 80 00 20 */	blr 
