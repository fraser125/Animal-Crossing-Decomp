lbl_8041700C:
/* 8041700C  3C 80 80 41 */	lis r4, Cottage_move_next@ha /* 0x8041701C@ha */
/* 80417010  38 04 70 1C */	addi r0, r4, Cottage_move_next@l /* 0x8041701C@l */
/* 80417014  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 80417018  4E 80 00 20 */	blr 
