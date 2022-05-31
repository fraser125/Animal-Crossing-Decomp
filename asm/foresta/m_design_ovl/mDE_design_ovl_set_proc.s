lbl_805D768C:
/* 805D768C  3C 80 80 5D */	lis r4, mDE_design_ovl_move@ha /* 0x805D5598@ha */
/* 805D7690  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D7694  38 04 55 98 */	addi r0, r4, mDE_design_ovl_move@l /* 0x805D5598@l */
/* 805D7698  3C 60 80 5D */	lis r3, mDE_design_ovl_draw@ha /* 0x805D7634@ha */
/* 805D769C  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805D76A0  38 03 76 34 */	addi r0, r3, mDE_design_ovl_draw@l /* 0x805D7634@l */
/* 805D76A4  90 05 09 10 */	stw r0, 0x910(r5)
/* 805D76A8  4E 80 00 20 */	blr 
