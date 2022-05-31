lbl_80416D2C:
/* 80416D2C  3C 80 80 41 */	lis r4, Cottage_move_wait_pl_out@ha /* 0x80416D3C@ha */
/* 80416D30  38 04 6D 3C */	addi r0, r4, Cottage_move_wait_pl_out@l /* 0x80416D3C@l */
/* 80416D34  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 80416D38  4E 80 00 20 */	blr 
