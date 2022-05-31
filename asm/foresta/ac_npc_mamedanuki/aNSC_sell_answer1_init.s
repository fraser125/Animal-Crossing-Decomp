lbl_8055E9B0:
/* 8055E9B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E9B4  7C 08 02 A6 */	mflr r0
/* 8055E9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E9BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055E9C0  7C 7F 1B 78 */	mr r31, r3
/* 8055E9C4  4B FF FE D5 */	bl aNSC_sell_answer0_init
/* 8055E9C8  38 00 00 00 */	li r0, 0
/* 8055E9CC  B0 1F 09 B4 */	sth r0, 0x9b4(r31)
/* 8055E9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E9D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055E9D8  7C 08 03 A6 */	mtlr r0
/* 8055E9DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E9E0  4E 80 00 20 */	blr 
