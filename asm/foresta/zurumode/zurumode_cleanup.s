lbl_8040EEDC:
/* 8040EEDC  3C 80 81 1C */	lis r4, padmgr_class@ha /* 0x811C7178@ha */
/* 8040EEE0  3C 60 80 41 */	lis r3, zurumode_callback@ha /* 0x8040ED8C@ha */
/* 8040EEE4  38 A4 71 78 */	addi r5, r4, padmgr_class@l /* 0x811C7178@l */
/* 8040EEE8  80 85 00 0C */	lwz r4, 0xc(r5)
/* 8040EEEC  38 03 ED 8C */	addi r0, r3, zurumode_callback@l /* 0x8040ED8C@l */
/* 8040EEF0  7C 04 00 40 */	cmplw r4, r0
/* 8040EEF4  40 82 00 1C */	bne lbl_8040EF10
/* 8040EEF8  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8040EEFC  7C 00 28 40 */	cmplw r0, r5
/* 8040EF00  40 82 00 10 */	bne lbl_8040EF10
/* 8040EF04  38 00 00 00 */	li r0, 0
/* 8040EF08  90 05 00 0C */	stw r0, 0xc(r5)
/* 8040EF0C  90 05 00 10 */	stw r0, 0x10(r5)
lbl_8040EF10:
/* 8040EF10  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 8040EF14  38 00 00 00 */	li r0, 0
/* 8040EF18  90 03 B7 A8 */	stw r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 8040EF1C  4E 80 00 20 */	blr 
