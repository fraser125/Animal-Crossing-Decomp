lbl_805CBCFC:
/* 805CBCFC  3C 80 80 5D */	lis r4, mCL_catalog_ovl_move@ha /* 0x805CA018@ha */
/* 805CBD00  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CBD04  38 04 A0 18 */	addi r0, r4, mCL_catalog_ovl_move@l /* 0x805CA018@l */
/* 805CBD08  3C 60 80 5D */	lis r3, mCL_catalog_ovl_draw@ha /* 0x805CBCA4@ha */
/* 805CBD0C  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805CBD10  38 03 BC A4 */	addi r0, r3, mCL_catalog_ovl_draw@l /* 0x805CBCA4@l */
/* 805CBD14  90 05 09 10 */	stw r0, 0x910(r5)
/* 805CBD18  4E 80 00 20 */	blr 
