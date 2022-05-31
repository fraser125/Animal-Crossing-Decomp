lbl_803ACF48:
/* 803ACF48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ACF4C  7C 08 02 A6 */	mflr r0
/* 803ACF50  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ACF54  88 03 00 00 */	lbz r0, 0(r3)
/* 803ACF58  38 60 00 00 */	li r3, 0
/* 803ACF5C  2C 00 00 FF */	cmpwi r0, 0xff
/* 803ACF60  41 82 00 38 */	beq lbl_803ACF98
/* 803ACF64  40 80 00 14 */	bge lbl_803ACF78
/* 803ACF68  2C 00 00 05 */	cmpwi r0, 5
/* 803ACF6C  40 80 00 0C */	bge lbl_803ACF78
/* 803ACF70  2C 00 00 00 */	cmpwi r0, 0
/* 803ACF74  40 80 00 24 */	bge lbl_803ACF98
lbl_803ACF78:
/* 803ACF78  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACF7C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACF80  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACF84  38 80 02 64 */	li r4, 0x264
/* 803ACF88  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACF8C  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACF90  4B FF F8 39 */	bl mFRm_set_errInfo
/* 803ACF94  38 60 00 01 */	li r3, 1
lbl_803ACF98:
/* 803ACF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ACF9C  7C 08 03 A6 */	mtlr r0
/* 803ACFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 803ACFA4  4E 80 00 20 */	blr 
