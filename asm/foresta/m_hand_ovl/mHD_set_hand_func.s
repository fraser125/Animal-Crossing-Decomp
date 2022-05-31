lbl_805DF6D8:
/* 805DF6D8  3C 80 80 5E */	lis r4, mHD_hand_ovl_move@ha /* 0x805DEC60@ha */
/* 805DF6DC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DF6E0  38 04 EC 60 */	addi r0, r4, mHD_hand_ovl_move@l /* 0x805DEC60@l */
/* 805DF6E4  3C 80 80 5E */	lis r4, mHD_hand_ovl_draw@ha /* 0x805DF2E4@ha */
/* 805DF6E8  90 05 09 14 */	stw r0, 0x914(r5)
/* 805DF6EC  38 04 F2 E4 */	addi r0, r4, mHD_hand_ovl_draw@l /* 0x805DF2E4@l */
/* 805DF6F0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DF6F4  90 03 09 18 */	stw r0, 0x918(r3)
/* 805DF6F8  4E 80 00 20 */	blr 
