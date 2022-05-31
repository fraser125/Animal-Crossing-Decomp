lbl_803AE150:
/* 803AE150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE154  7C 08 02 A6 */	mflr r0
/* 803AE158  38 A0 00 00 */	li r5, 0
/* 803AE15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE160  7C 89 03 A6 */	mtctr r4
/* 803AE164  2C 04 00 00 */	cmpwi r4, 0
/* 803AE168  40 81 00 50 */	ble lbl_803AE1B8
lbl_803AE16C:
/* 803AE16C  7C A4 0E 70 */	srawi r4, r5, 1
/* 803AE170  54 A0 17 7A */	rlwinm r0, r5, 2, 0x1d, 0x1d
/* 803AE174  7C 83 20 AE */	lbzx r4, r3, r4
/* 803AE178  7C 80 06 30 */	sraw r0, r4, r0
/* 803AE17C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 803AE180  41 80 00 0C */	blt lbl_803AE18C
/* 803AE184  2C 00 00 06 */	cmpwi r0, 6
/* 803AE188  41 80 00 28 */	blt lbl_803AE1B0
lbl_803AE18C:
/* 803AE18C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE190  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE194  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE198  38 80 01 21 */	li r4, 0x121
/* 803AE19C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE1A0  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE1A4  4B FF E6 25 */	bl mFRm_set_errInfo
/* 803AE1A8  38 60 00 00 */	li r3, 0
/* 803AE1AC  48 00 00 10 */	b lbl_803AE1BC
lbl_803AE1B0:
/* 803AE1B0  38 A5 00 01 */	addi r5, r5, 1
/* 803AE1B4  42 00 FF B8 */	bdnz lbl_803AE16C
lbl_803AE1B8:
/* 803AE1B8  38 60 00 01 */	li r3, 1
lbl_803AE1BC:
/* 803AE1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AE1C0  7C 08 03 A6 */	mtlr r0
/* 803AE1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803AE1C8  4E 80 00 20 */	blr 
