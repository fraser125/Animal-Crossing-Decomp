lbl_80461D18:
/* 80461D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80461D1C  7C 08 02 A6 */	mflr r0
/* 80461D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80461D24  A8 C3 00 6E */	lha r6, 0x6e(r3)
/* 80461D28  38 A6 FF FF */	addi r5, r6, -1
/* 80461D2C  7C C0 07 35 */	extsh. r0, r6
/* 80461D30  B0 A3 00 6E */	sth r5, 0x6e(r3)
/* 80461D34  40 80 00 08 */	bge lbl_80461D3C
/* 80461D38  48 00 00 15 */	bl minsect_batta_jump_process_init
lbl_80461D3C:
/* 80461D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80461D40  7C 08 03 A6 */	mtlr r0
/* 80461D44  38 21 00 10 */	addi r1, r1, 0x10
/* 80461D48  4E 80 00 20 */	blr 
