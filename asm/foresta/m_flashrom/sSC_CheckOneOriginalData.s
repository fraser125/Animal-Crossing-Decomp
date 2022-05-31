lbl_803AE2FC:
/* 803AE2FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE300  7C 08 02 A6 */	mflr r0
/* 803AE304  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE308  88 03 00 10 */	lbz r0, 0x10(r3)
/* 803AE30C  28 00 00 10 */	cmplwi r0, 0x10
/* 803AE310  41 80 00 28 */	blt lbl_803AE338
/* 803AE314  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE318  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE31C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE320  38 80 01 4D */	li r4, 0x14d
/* 803AE324  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE328  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE32C  4B FF E4 9D */	bl mFRm_set_errInfo
/* 803AE330  38 60 00 00 */	li r3, 0
/* 803AE334  48 00 00 08 */	b lbl_803AE33C
lbl_803AE338:
/* 803AE338  38 60 00 01 */	li r3, 1
lbl_803AE33C:
/* 803AE33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AE340  7C 08 03 A6 */	mtlr r0
/* 803AE344  38 21 00 10 */	addi r1, r1, 0x10
/* 803AE348  4E 80 00 20 */	blr 
