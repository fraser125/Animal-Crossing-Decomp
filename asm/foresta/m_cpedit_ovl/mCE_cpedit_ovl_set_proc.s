lbl_805CC224:
/* 805CC224  3C 80 80 5D */	lis r4, mCE_cpedit_ovl_move@ha /* 0x805CC170@ha */
/* 805CC228  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CC22C  38 04 C1 70 */	addi r0, r4, mCE_cpedit_ovl_move@l /* 0x805CC170@l */
/* 805CC230  3C 60 80 5D */	lis r3, mCE_cpedit_ovl_draw@ha /* 0x805CC1F8@ha */
/* 805CC234  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805CC238  38 03 C1 F8 */	addi r0, r3, mCE_cpedit_ovl_draw@l /* 0x805CC1F8@l */
/* 805CC23C  90 05 09 10 */	stw r0, 0x910(r5)
/* 805CC240  4E 80 00 20 */	blr 
