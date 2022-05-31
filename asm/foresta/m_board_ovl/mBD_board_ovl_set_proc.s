lbl_805C63A0:
/* 805C63A0  3C 80 80 5C */	lis r4, mBD_board_ovl_move@ha /* 0x805C5474@ha */
/* 805C63A4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C63A8  38 04 54 74 */	addi r0, r4, mBD_board_ovl_move@l /* 0x805C5474@l */
/* 805C63AC  3C 60 80 5C */	lis r3, mBD_board_ovl_draw@ha /* 0x805C6348@ha */
/* 805C63B0  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805C63B4  38 03 63 48 */	addi r0, r3, mBD_board_ovl_draw@l /* 0x805C6348@l */
/* 805C63B8  90 05 09 10 */	stw r0, 0x910(r5)
/* 805C63BC  4E 80 00 20 */	blr 
