lbl_805253BC:
/* 805253BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805253C0  7C 08 02 A6 */	mflr r0
/* 805253C4  38 80 00 04 */	li r4, 4
/* 805253C8  38 A0 00 00 */	li r5, 0
/* 805253CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805253D0  38 C0 00 00 */	li r6, 0
/* 805253D4  38 E0 00 00 */	li r7, 0
/* 805253D8  39 00 00 00 */	li r8, 0
/* 805253DC  39 20 00 00 */	li r9, 0
/* 805253E0  4B FF F4 59 */	bl aES2_set_request_act
/* 805253E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805253E8  7C 08 03 A6 */	mtlr r0
/* 805253EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805253F0  4E 80 00 20 */	blr 