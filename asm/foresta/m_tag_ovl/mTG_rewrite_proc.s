lbl_805F4688:
/* 805F4688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F468C  7C 08 02 A6 */	mflr r0
/* 805F4690  38 A0 FF FF */	li r5, -1
/* 805F4694  38 C0 00 02 */	li r6, 2
/* 805F4698  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F469C  38 E0 FF FF */	li r7, -1
/* 805F46A0  4B FF E9 C5 */	bl mTG_open_board_init
/* 805F46A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F46A8  7C 08 03 A6 */	mtlr r0
/* 805F46AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805F46B0  4E 80 00 20 */	blr 
