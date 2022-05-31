lbl_8038367C:
/* 8038367C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383680  7C 08 02 A6 */	mflr r0
/* 80383684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383688  4B FF FF ED */	bl mChoice_check_main_index
/* 8038368C  20 03 00 02 */	subfic r0, r3, 2
/* 80383690  7C 00 00 34 */	cntlzw r0, r0
/* 80383694  54 03 D9 7E */	srwi r3, r0, 5
/* 80383698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038369C  7C 08 03 A6 */	mtlr r0
/* 803836A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803836A4  4E 80 00 20 */	blr 
