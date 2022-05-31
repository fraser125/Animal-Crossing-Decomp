lbl_805DC2E4:
/* 805DC2E4  3C 60 81 21 */	lis r3, gb_ovl_change_flg@ha /* 0x81211738@ha */
/* 805DC2E8  38 63 17 38 */	addi r3, r3, gb_ovl_change_flg@l /* 0x81211738@l */
/* 805DC2EC  88 63 00 00 */	lbz r3, 0(r3)
/* 805DC2F0  4E 80 00 20 */	blr 
