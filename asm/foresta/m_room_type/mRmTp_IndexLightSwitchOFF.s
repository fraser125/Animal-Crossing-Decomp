lbl_803E7290:
/* 803E7290  2C 03 00 00 */	cmpwi r3, 0
/* 803E7294  41 80 00 30 */	blt lbl_803E72C4
/* 803E7298  2C 03 00 0D */	cmpwi r3, 0xd
/* 803E729C  40 80 00 28 */	bge lbl_803E72C4
/* 803E72A0  3C 80 81 17 */	lis r4, l_mRmTp_switch_data@ha /* 0x8117143C@ha */
/* 803E72A4  38 00 00 01 */	li r0, 1
/* 803E72A8  38 A4 14 3C */	addi r5, r4, l_mRmTp_switch_data@l /* 0x8117143C@l */
/* 803E72AC  80 85 00 00 */	lwz r4, 0(r5)
/* 803E72B0  7C 00 18 30 */	slw r0, r0, r3
/* 803E72B4  38 60 00 01 */	li r3, 1
/* 803E72B8  7C 80 00 78 */	andc r0, r4, r0
/* 803E72BC  90 05 00 00 */	stw r0, 0(r5)
/* 803E72C0  4E 80 00 20 */	blr 
lbl_803E72C4:
/* 803E72C4  38 60 00 00 */	li r3, 0
/* 803E72C8  4E 80 00 20 */	blr 
