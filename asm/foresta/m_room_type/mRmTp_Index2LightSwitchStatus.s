lbl_803E72CC:
/* 803E72CC  2C 03 00 00 */	cmpwi r3, 0
/* 803E72D0  38 00 00 00 */	li r0, 0
/* 803E72D4  41 80 00 10 */	blt lbl_803E72E4
/* 803E72D8  2C 03 00 0D */	cmpwi r3, 0xd
/* 803E72DC  40 80 00 08 */	bge lbl_803E72E4
/* 803E72E0  38 00 00 01 */	li r0, 1
lbl_803E72E4:
/* 803E72E4  2C 00 00 00 */	cmpwi r0, 0
/* 803E72E8  38 00 00 01 */	li r0, 1
/* 803E72EC  41 82 00 14 */	beq lbl_803E7300
/* 803E72F0  3C 80 81 17 */	lis r4, l_mRmTp_switch_data@ha /* 0x8117143C@ha */
/* 803E72F4  80 04 14 3C */	lwz r0, l_mRmTp_switch_data@l(r4)  /* 0x8117143C@l */
/* 803E72F8  7C 00 1E 30 */	sraw r0, r0, r3
/* 803E72FC  54 00 07 FE */	clrlwi r0, r0, 0x1f
lbl_803E7300:
/* 803E7300  7C 03 03 78 */	mr r3, r0
/* 803E7304  4E 80 00 20 */	blr 
