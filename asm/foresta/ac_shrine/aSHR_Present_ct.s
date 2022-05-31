lbl_805BA874:
/* 805BA874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BA878  7C 08 02 A6 */	mflr r0
/* 805BA87C  38 80 00 18 */	li r4, 0x18
/* 805BA880  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BA884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BA888  7C 7F 1B 78 */	mr r31, r3
/* 805BA88C  4B AA 27 DD */	bl bzero
/* 805BA890  7F E3 FB 78 */	mr r3, r31
/* 805BA894  48 00 00 F1 */	bl aSHR_Present_move_wait_init
/* 805BA898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BA89C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BA8A0  7C 08 03 A6 */	mtlr r0
/* 805BA8A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805BA8A8  4E 80 00 20 */	blr 
