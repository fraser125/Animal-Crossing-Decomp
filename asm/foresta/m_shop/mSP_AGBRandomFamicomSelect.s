lbl_803EB5E4:
/* 803EB5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB5E8  7C 08 02 A6 */	mflr r0
/* 803EB5EC  38 60 00 00 */	li r3, 0
/* 803EB5F0  38 A0 00 01 */	li r5, 1
/* 803EB5F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB5F8  38 00 00 00 */	li r0, 0
/* 803EB5FC  38 81 00 08 */	addi r4, r1, 8
/* 803EB600  38 C0 00 00 */	li r6, 0
/* 803EB604  B0 01 00 08 */	sth r0, 8(r1)
/* 803EB608  38 E0 00 00 */	li r7, 0
/* 803EB60C  39 00 00 00 */	li r8, 0
/* 803EB610  39 20 00 14 */	li r9, 0x14
/* 803EB614  39 40 00 00 */	li r10, 0
/* 803EB618  4B FF CD C5 */	bl mSP_SelectRandomItem_New
/* 803EB61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB620  A0 61 00 08 */	lhz r3, 8(r1)
/* 803EB624  7C 08 03 A6 */	mtlr r0
/* 803EB628  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB62C  4E 80 00 20 */	blr 
