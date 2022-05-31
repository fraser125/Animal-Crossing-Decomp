lbl_803AEE30:
/* 803AEE30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AEE34  7C 08 02 A6 */	mflr r0
/* 803AEE38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AEE3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AEE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AEE44  3C 63 00 02 */	addis r3, r3, 2
/* 803AEE48  88 63 0F 19 */	lbz r3, 0xf19(r3)
/* 803AEE4C  54 60 07 3E */	clrlwi r0, r3, 0x1c
/* 803AEE50  28 00 00 04 */	cmplwi r0, 4
/* 803AEE54  54 60 E7 3E */	rlwinm r0, r3, 0x1c, 0x1c, 0x1f
/* 803AEE58  40 80 00 0C */	bge lbl_803AEE64
/* 803AEE5C  28 00 00 04 */	cmplwi r0, 4
/* 803AEE60  41 80 00 28 */	blt lbl_803AEE88
lbl_803AEE64:
/* 803AEE64  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AEE68  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEE6C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEE70  38 80 00 8D */	li r4, 0x8d
/* 803AEE74  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEE78  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEE7C  4B FF D9 4D */	bl mFRm_set_errInfo
/* 803AEE80  38 60 00 01 */	li r3, 1
/* 803AEE84  48 00 00 08 */	b lbl_803AEE8C
lbl_803AEE88:
/* 803AEE88  38 60 00 00 */	li r3, 0
lbl_803AEE8C:
/* 803AEE8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AEE90  7C 08 03 A6 */	mtlr r0
/* 803AEE94  38 21 00 10 */	addi r1, r1, 0x10
/* 803AEE98  4E 80 00 20 */	blr 
