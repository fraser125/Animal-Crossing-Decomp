lbl_805D0FF8:
/* 805D0FF8  3C 80 80 5D */	lis r4, mDI_diary_ovl_move@ha /* 0x805D0578@ha */
/* 805D0FFC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D1000  38 04 05 78 */	addi r0, r4, mDI_diary_ovl_move@l /* 0x805D0578@l */
/* 805D1004  3C 60 80 5D */	lis r3, mDI_diary_ovl_draw@ha /* 0x805D0FA0@ha */
/* 805D1008  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805D100C  38 03 0F A0 */	addi r0, r3, mDI_diary_ovl_draw@l /* 0x805D0FA0@l */
/* 805D1010  90 05 09 10 */	stw r0, 0x910(r5)
/* 805D1014  4E 80 00 20 */	blr 
