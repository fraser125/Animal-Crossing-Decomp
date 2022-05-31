lbl_803ACC2C:
/* 803ACC2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ACC30  7C 08 02 A6 */	mflr r0
/* 803ACC34  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ACC38  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803ACC3C  28 00 28 00 */	cmplwi r0, 0x2800
/* 803ACC40  38 60 00 00 */	li r3, 0
/* 803ACC44  41 80 00 0C */	blt lbl_803ACC50
/* 803ACC48  28 00 28 04 */	cmplwi r0, 0x2804
/* 803ACC4C  40 81 00 24 */	ble lbl_803ACC70
lbl_803ACC50:
/* 803ACC50  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACC54  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACC58  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACC5C  38 80 01 20 */	li r4, 0x120
/* 803ACC60  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACC64  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACC68  4B FF FB 61 */	bl mFRm_set_errInfo
/* 803ACC6C  38 60 00 01 */	li r3, 1
lbl_803ACC70:
/* 803ACC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ACC74  7C 08 03 A6 */	mtlr r0
/* 803ACC78  38 21 00 10 */	addi r1, r1, 0x10
/* 803ACC7C  4E 80 00 20 */	blr 
