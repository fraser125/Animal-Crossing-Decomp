lbl_803FA458:
/* 803FA458  2C 03 00 00 */	cmpwi r3, 0
/* 803FA45C  38 00 00 00 */	li r0, 0
/* 803FA460  41 80 00 20 */	blt lbl_803FA480
/* 803FA464  2C 03 00 08 */	cmpwi r3, 8
/* 803FA468  40 80 00 18 */	bge lbl_803FA480
/* 803FA46C  1C 03 00 0C */	mulli r0, r3, 0xc
/* 803FA470  3C 60 80 66 */	lis r3, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FA474  38 63 E7 08 */	addi r3, r3, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FA478  7C 63 02 14 */	add r3, r3, r0
/* 803FA47C  80 03 00 08 */	lwz r0, 8(r3)
lbl_803FA480:
/* 803FA480  7C 03 03 78 */	mr r3, r0
/* 803FA484  4E 80 00 20 */	blr 
