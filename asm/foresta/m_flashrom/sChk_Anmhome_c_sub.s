lbl_803AD508:
/* 803AD508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AD50C  7C 08 02 A6 */	mflr r0
/* 803AD510  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AD514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AD518  3B E0 00 00 */	li r31, 0
/* 803AD51C  93 C1 00 08 */	stw r30, 8(r1)
/* 803AD520  7C 7E 1B 78 */	mr r30, r3
/* 803AD524  88 03 00 00 */	lbz r0, 0(r3)
/* 803AD528  28 00 00 05 */	cmplwi r0, 5
/* 803AD52C  40 81 00 24 */	ble lbl_803AD550
/* 803AD530  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD534  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD538  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD53C  38 80 05 55 */	li r4, 0x555
/* 803AD540  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD544  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD548  4B FF F2 81 */	bl mFRm_set_errInfo
/* 803AD54C  3B E0 00 01 */	li r31, 1
lbl_803AD550:
/* 803AD550  88 7E 00 01 */	lbz r3, 1(r30)
/* 803AD554  88 9E 00 02 */	lbz r4, 2(r30)
/* 803AD558  4B FF F4 B9 */	bl func_803ACA10
/* 803AD55C  7F FF 1B 78 */	or r31, r31, r3
/* 803AD560  88 7E 00 03 */	lbz r3, 3(r30)
/* 803AD564  88 9E 00 04 */	lbz r4, 4(r30)
/* 803AD568  4B FF F5 5D */	bl sChk_ut_num_sub
/* 803AD56C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AD570  7F FF 1B 78 */	or r31, r31, r3
/* 803AD574  7F E3 FB 78 */	mr r3, r31
/* 803AD578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AD57C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803AD580  7C 08 03 A6 */	mtlr r0
/* 803AD584  38 21 00 10 */	addi r1, r1, 0x10
/* 803AD588  4E 80 00 20 */	blr 
