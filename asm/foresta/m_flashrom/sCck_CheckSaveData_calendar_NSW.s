lbl_803AE774:
/* 803AE774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE778  7C 08 02 A6 */	mflr r0
/* 803AE77C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE780  88 03 23 AE */	lbz r0, 0x23ae(r3)
/* 803AE784  28 00 00 01 */	cmplwi r0, 1
/* 803AE788  40 81 00 28 */	ble lbl_803AE7B0
/* 803AE78C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE790  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE794  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE798  38 80 00 8F */	li r4, 0x8f
/* 803AE79C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE7A0  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE7A4  4B FF E0 25 */	bl mFRm_set_errInfo
/* 803AE7A8  38 60 00 01 */	li r3, 1
/* 803AE7AC  48 00 00 98 */	b lbl_803AE844
lbl_803AE7B0:
/* 803AE7B0  88 03 23 AF */	lbz r0, 0x23af(r3)
/* 803AE7B4  28 00 00 00 */	cmplwi r0, 0
/* 803AE7B8  41 82 00 28 */	beq lbl_803AE7E0
/* 803AE7BC  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE7C0  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE7C4  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE7C8  38 80 00 97 */	li r4, 0x97
/* 803AE7CC  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE7D0  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE7D4  4B FF DF F5 */	bl mFRm_set_errInfo
/* 803AE7D8  38 60 00 01 */	li r3, 1
/* 803AE7DC  48 00 00 68 */	b lbl_803AE844
lbl_803AE7E0:
/* 803AE7E0  A0 03 23 B0 */	lhz r0, 0x23b0(r3)
/* 803AE7E4  28 00 07 D1 */	cmplwi r0, 0x7d1
/* 803AE7E8  41 80 00 20 */	blt lbl_803AE808
/* 803AE7EC  28 00 07 EF */	cmplwi r0, 0x7ef
/* 803AE7F0  41 81 00 18 */	bgt lbl_803AE808
/* 803AE7F4  88 83 23 B2 */	lbz r4, 0x23b2(r3)
/* 803AE7F8  28 04 00 00 */	cmplwi r4, 0
/* 803AE7FC  41 82 00 0C */	beq lbl_803AE808
/* 803AE800  28 04 00 0C */	cmplwi r4, 0xc
/* 803AE804  40 81 00 3C */	ble lbl_803AE840
lbl_803AE808:
/* 803AE808  28 00 00 00 */	cmplwi r0, 0
/* 803AE80C  40 82 00 10 */	bne lbl_803AE81C
/* 803AE810  88 03 23 B2 */	lbz r0, 0x23b2(r3)
/* 803AE814  28 00 00 00 */	cmplwi r0, 0
/* 803AE818  41 82 00 28 */	beq lbl_803AE840
lbl_803AE81C:
/* 803AE81C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE820  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE824  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE828  38 80 00 A4 */	li r4, 0xa4
/* 803AE82C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE830  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE834  4B FF DF 95 */	bl mFRm_set_errInfo
/* 803AE838  38 60 00 01 */	li r3, 1
/* 803AE83C  48 00 00 08 */	b lbl_803AE844
lbl_803AE840:
/* 803AE840  38 60 00 00 */	li r3, 0
lbl_803AE844:
/* 803AE844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AE848  7C 08 03 A6 */	mtlr r0
/* 803AE84C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AE850  4E 80 00 20 */	blr 
