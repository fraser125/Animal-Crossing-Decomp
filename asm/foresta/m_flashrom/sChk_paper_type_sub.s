lbl_803ACFF4:
/* 803ACFF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ACFF8  7C 08 02 A6 */	mflr r0
/* 803ACFFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AD000  88 03 00 00 */	lbz r0, 0(r3)
/* 803AD004  38 60 00 00 */	li r3, 0
/* 803AD008  28 00 00 3F */	cmplwi r0, 0x3f
/* 803AD00C  40 81 00 24 */	ble lbl_803AD030
/* 803AD010  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD014  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD018  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD01C  38 80 02 BD */	li r4, 0x2bd
/* 803AD020  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD024  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD028  4B FF F7 A1 */	bl mFRm_set_errInfo
/* 803AD02C  38 60 00 01 */	li r3, 1
lbl_803AD030:
/* 803AD030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AD034  7C 08 03 A6 */	mtlr r0
/* 803AD038  38 21 00 10 */	addi r1, r1, 0x10
/* 803AD03C  4E 80 00 20 */	blr 
