lbl_805E11C4:
/* 805E11C4  3C 80 80 5E */	lis r4, mHB_hboard_ovl_move@ha /* 0x805E0B34@ha */
/* 805E11C8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E11CC  38 04 0B 34 */	addi r0, r4, mHB_hboard_ovl_move@l /* 0x805E0B34@l */
/* 805E11D0  3C 60 80 5E */	lis r3, mHB_hboard_ovl_draw@ha /* 0x805E1164@ha */
/* 805E11D4  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805E11D8  38 03 11 64 */	addi r0, r3, mHB_hboard_ovl_draw@l /* 0x805E1164@l */
/* 805E11DC  90 05 09 10 */	stw r0, 0x910(r5)
/* 805E11E0  4E 80 00 20 */	blr 
