lbl_805C3618:
/* 805C3618  3C 80 80 5C */	lis r4, mAD_address_ovl_move@ha /* 0x805C2C38@ha */
/* 805C361C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C3620  38 04 2C 38 */	addi r0, r4, mAD_address_ovl_move@l /* 0x805C2C38@l */
/* 805C3624  3C 60 80 5C */	lis r3, mAD_address_ovl_draw@ha /* 0x805C3538@ha */
/* 805C3628  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805C362C  38 03 35 38 */	addi r0, r3, mAD_address_ovl_draw@l /* 0x805C3538@l */
/* 805C3630  90 05 09 10 */	stw r0, 0x910(r5)
/* 805C3634  4E 80 00 20 */	blr 
