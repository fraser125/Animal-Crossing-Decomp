lbl_80540C7C:
/* 80540C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540C80  7C 08 02 A6 */	mflr r0
/* 80540C84  38 80 00 00 */	li r4, 0
/* 80540C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540C8C  38 00 03 EB */	li r0, 0x3eb
/* 80540C90  90 03 08 40 */	stw r0, 0x840(r3)
/* 80540C94  4B FF FD 1D */	bl func_805409B0
/* 80540C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540C9C  7C 08 03 A6 */	mtlr r0
/* 80540CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80540CA4  4E 80 00 20 */	blr 