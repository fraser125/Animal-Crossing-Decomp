lbl_806292E4:
/* 806292E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806292E8  7C 08 02 A6 */	mflr r0
/* 806292EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806292F0  4B FF FF AD */	bl select_print_step_sub2
/* 806292F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806292F8  7C 08 03 A6 */	mtlr r0
/* 806292FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80629300  4E 80 00 20 */	blr 
