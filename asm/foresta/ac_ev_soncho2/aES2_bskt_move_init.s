lbl_80525490:
/* 80525490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525494  7C 08 02 A6 */	mflr r0
/* 80525498  38 80 00 04 */	li r4, 4
/* 8052549C  38 A0 00 01 */	li r5, 1
/* 805254A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805254A4  38 00 01 2C */	li r0, 0x12c
/* 805254A8  38 C0 00 03 */	li r6, 3
/* 805254AC  38 E0 00 00 */	li r7, 0
/* 805254B0  B0 03 09 9E */	sth r0, 0x99e(r3)
/* 805254B4  A9 03 09 A4 */	lha r8, 0x9a4(r3)
/* 805254B8  A9 23 09 A6 */	lha r9, 0x9a6(r3)
/* 805254BC  4B FF F3 7D */	bl aES2_set_request_act
/* 805254C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805254C4  7C 08 03 A6 */	mtlr r0
/* 805254C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805254CC  4E 80 00 20 */	blr 
