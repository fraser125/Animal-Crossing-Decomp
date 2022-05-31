lbl_805ECE68:
/* 805ECE68  3C 80 80 5F */	lis r4, mRP_repay_ovl_move@ha /* 0x805EC7DC@ha */
/* 805ECE6C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805ECE70  38 04 C7 DC */	addi r0, r4, mRP_repay_ovl_move@l /* 0x805EC7DC@l */
/* 805ECE74  3C 60 80 5F */	lis r3, mRP_repay_ovl_draw@ha /* 0x805ECE10@ha */
/* 805ECE78  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805ECE7C  38 03 CE 10 */	addi r0, r3, mRP_repay_ovl_draw@l /* 0x805ECE10@l */
/* 805ECE80  90 05 09 10 */	stw r0, 0x910(r5)
/* 805ECE84  4E 80 00 20 */	blr 
