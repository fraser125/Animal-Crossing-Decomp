lbl_80403EA0:
/* 80403EA0  3C 80 80 40 */	lis r4, mVibctl_callback@ha /* 0x80403E28@ha */
/* 80403EA4  3C 60 81 1C */	lis r3, padmgr_class@ha /* 0x811C7178@ha */
/* 80403EA8  38 84 3E 28 */	addi r4, r4, mVibctl_callback@l /* 0x80403E28@l */
/* 80403EAC  38 00 00 00 */	li r0, 0
/* 80403EB0  38 63 71 78 */	addi r3, r3, padmgr_class@l /* 0x811C7178@l */
/* 80403EB4  90 83 00 04 */	stw r4, 4(r3)
/* 80403EB8  90 03 00 08 */	stw r0, 8(r3)
/* 80403EBC  4E 80 00 20 */	blr 
