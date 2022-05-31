lbl_803AD90C:
/* 803AD90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AD910  7C 08 02 A6 */	mflr r0
/* 803AD914  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AD918  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AD91C  7C 7F 1B 78 */	mr r31, r3
/* 803AD920  38 60 00 00 */	li r3, 0
/* 803AD924  88 1F 00 00 */	lbz r0, 0(r31)
/* 803AD928  28 00 00 03 */	cmplwi r0, 3
/* 803AD92C  40 81 00 24 */	ble lbl_803AD950
/* 803AD930  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD934  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD938  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD93C  38 80 06 EF */	li r4, 0x6ef
/* 803AD940  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD944  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD948  4B FF EE 81 */	bl mFRm_set_errInfo
/* 803AD94C  38 60 00 01 */	li r3, 1
lbl_803AD950:
/* 803AD950  88 1F 00 01 */	lbz r0, 1(r31)
/* 803AD954  28 00 00 03 */	cmplwi r0, 3
/* 803AD958  40 81 00 24 */	ble lbl_803AD97C
/* 803AD95C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD960  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD964  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD968  38 80 06 FD */	li r4, 0x6fd
/* 803AD96C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD970  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD974  4B FF EE 55 */	bl mFRm_set_errInfo
/* 803AD978  38 60 00 01 */	li r3, 1
lbl_803AD97C:
/* 803AD97C  88 1F 00 02 */	lbz r0, 2(r31)
/* 803AD980  54 00 00 3D */	rlwinm. r0, r0, 0, 0, 0x1e
/* 803AD984  41 82 00 24 */	beq lbl_803AD9A8
/* 803AD988  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD98C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD990  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD994  38 80 07 0B */	li r4, 0x70b
/* 803AD998  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD99C  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD9A0  4B FF EE 29 */	bl mFRm_set_errInfo
/* 803AD9A4  38 60 00 01 */	li r3, 1
lbl_803AD9A8:
/* 803AD9A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AD9AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AD9B0  7C 08 03 A6 */	mtlr r0
/* 803AD9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803AD9B8  4E 80 00 20 */	blr 
