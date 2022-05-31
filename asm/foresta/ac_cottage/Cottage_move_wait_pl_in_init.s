lbl_80416CB4:
/* 80416CB4  3C 80 80 41 */	lis r4, Cottage_move_wait_pl_in@ha /* 0x80416CC4@ha */
/* 80416CB8  38 04 6C C4 */	addi r0, r4, Cottage_move_wait_pl_in@l /* 0x80416CC4@l */
/* 80416CBC  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 80416CC0  4E 80 00 20 */	blr 
