lbl_803ACFA8:
/* 803ACFA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ACFAC  7C 08 02 A6 */	mflr r0
/* 803ACFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ACFB4  88 03 00 00 */	lbz r0, 0(r3)
/* 803ACFB8  38 60 00 00 */	li r3, 0
/* 803ACFBC  28 00 00 18 */	cmplwi r0, 0x18
/* 803ACFC0  40 81 00 24 */	ble lbl_803ACFE4
/* 803ACFC4  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACFC8  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACFCC  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACFD0  38 80 02 91 */	li r4, 0x291
/* 803ACFD4  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACFD8  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACFDC  4B FF F7 ED */	bl mFRm_set_errInfo
/* 803ACFE0  38 60 00 01 */	li r3, 1
lbl_803ACFE4:
/* 803ACFE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ACFE8  7C 08 03 A6 */	mtlr r0
/* 803ACFEC  38 21 00 10 */	addi r1, r1, 0x10
/* 803ACFF0  4E 80 00 20 */	blr 
