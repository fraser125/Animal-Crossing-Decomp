lbl_804D4D84:
/* 804D4D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4D88  7C 08 02 A6 */	mflr r0
/* 804D4D8C  38 60 00 64 */	li r3, 0x64
/* 804D4D90  38 80 00 01 */	li r4, 1
/* 804D4D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4D98  38 A0 00 08 */	li r5, 8
/* 804D4D9C  38 C0 00 01 */	li r6, 1
/* 804D4DA0  38 E0 00 01 */	li r7, 1
/* 804D4DA4  39 00 00 3C */	li r8, 0x3c
/* 804D4DA8  39 20 00 00 */	li r9, 0
/* 804D4DAC  4B FF FF 75 */	bl func_804D4D20
/* 804D4DB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4DB4  7C 08 03 A6 */	mtlr r0
/* 804D4DB8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4DBC  4E 80 00 20 */	blr 