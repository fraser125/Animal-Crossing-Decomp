lbl_80403EC0:
/* 80403EC0  3C 80 81 1C */	lis r4, padmgr_class@ha /* 0x811C7178@ha */
/* 80403EC4  3C 60 80 40 */	lis r3, mVibctl_callback@ha /* 0x80403E28@ha */
/* 80403EC8  38 A4 71 78 */	addi r5, r4, padmgr_class@l /* 0x811C7178@l */
/* 80403ECC  80 85 00 04 */	lwz r4, 4(r5)
/* 80403ED0  38 03 3E 28 */	addi r0, r3, mVibctl_callback@l /* 0x80403E28@l */
/* 80403ED4  7C 04 00 40 */	cmplw r4, r0
/* 80403ED8  4C 82 00 20 */	bnelr 
/* 80403EDC  80 05 00 08 */	lwz r0, 8(r5)
/* 80403EE0  28 00 00 00 */	cmplwi r0, 0
/* 80403EE4  4C 82 00 20 */	bnelr 
/* 80403EE8  38 00 00 00 */	li r0, 0
/* 80403EEC  90 05 00 04 */	stw r0, 4(r5)
/* 80403EF0  90 05 00 08 */	stw r0, 8(r5)
/* 80403EF4  4E 80 00 20 */	blr 
