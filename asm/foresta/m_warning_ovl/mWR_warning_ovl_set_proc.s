lbl_80600944:
/* 80600944  3C 80 80 60 */	lis r4, mWR_warning_ovl_move@ha /* 0x8060040C@ha */
/* 80600948  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 8060094C  38 04 04 0C */	addi r0, r4, mWR_warning_ovl_move@l /* 0x8060040C@l */
/* 80600950  3C 60 80 60 */	lis r3, mWR_warning_ovl_draw@ha /* 0x806008EC@ha */
/* 80600954  90 05 09 0C */	stw r0, 0x90c(r5)
/* 80600958  38 03 08 EC */	addi r0, r3, mWR_warning_ovl_draw@l /* 0x806008EC@l */
/* 8060095C  90 05 09 10 */	stw r0, 0x910(r5)
/* 80600960  4E 80 00 20 */	blr 
