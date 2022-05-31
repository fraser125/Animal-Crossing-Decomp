lbl_803AE6E4:
/* 803AE6E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE6E8  7C 08 02 A6 */	mflr r0
/* 803AE6EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE6F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AE6F4  3B E3 23 BE */	addi r31, r3, 0x23be
/* 803AE6F8  7F E3 FB 78 */	mr r3, r31
/* 803AE6FC  4B FF FE FD */	bl func_803AE5F8
/* 803AE700  2C 03 00 00 */	cmpwi r3, 0
/* 803AE704  41 82 00 28 */	beq lbl_803AE72C
/* 803AE708  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE70C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE710  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE714  38 80 00 70 */	li r4, 0x70
/* 803AE718  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE71C  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE720  4B FF E0 A9 */	bl mFRm_set_errInfo
/* 803AE724  38 60 00 01 */	li r3, 1
/* 803AE728  48 00 00 38 */	b lbl_803AE760
lbl_803AE72C:
/* 803AE72C  88 1F 00 04 */	lbz r0, 4(r31)
/* 803AE730  28 00 00 0D */	cmplwi r0, 0xd
/* 803AE734  40 81 00 28 */	ble lbl_803AE75C
/* 803AE738  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE73C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE740  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE744  38 80 00 79 */	li r4, 0x79
/* 803AE748  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE74C  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE750  4B FF E0 79 */	bl mFRm_set_errInfo
/* 803AE754  38 60 00 01 */	li r3, 1
/* 803AE758  48 00 00 08 */	b lbl_803AE760
lbl_803AE75C:
/* 803AE75C  38 60 00 00 */	li r3, 0
lbl_803AE760:
/* 803AE760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AE764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AE768  7C 08 03 A6 */	mtlr r0
/* 803AE76C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AE770  4E 80 00 20 */	blr 
