lbl_803ADDD8:
/* 803ADDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ADDDC  7C 08 02 A6 */	mflr r0
/* 803ADDE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ADDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ADDE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ADDEC  38 00 00 05 */	li r0, 5
/* 803ADDF0  3C 83 00 02 */	addis r4, r3, 2
/* 803ADDF4  7C 09 03 A6 */	mtctr r0
/* 803ADDF8  38 84 03 40 */	addi r4, r4, 0x340
lbl_803ADDFC:
/* 803ADDFC  88 64 00 00 */	lbz r3, 0(r4)
/* 803ADE00  54 60 D7 BE */	rlwinm r0, r3, 0x1a, 0x1e, 0x1f
/* 803ADE04  28 00 00 03 */	cmplwi r0, 3
/* 803ADE08  41 80 00 28 */	blt lbl_803ADE30
/* 803ADE0C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ADE10  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ADE14  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ADE18  38 80 00 65 */	li r4, 0x65
/* 803ADE1C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ADE20  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ADE24  4B FF E9 A5 */	bl mFRm_set_errInfo
/* 803ADE28  38 60 00 02 */	li r3, 2
/* 803ADE2C  48 00 00 9C */	b lbl_803ADEC8
lbl_803ADE30:
/* 803ADE30  54 60 E7 BE */	rlwinm r0, r3, 0x1c, 0x1e, 0x1f
/* 803ADE34  28 00 00 03 */	cmplwi r0, 3
/* 803ADE38  41 80 00 28 */	blt lbl_803ADE60
/* 803ADE3C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ADE40  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ADE44  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ADE48  38 80 00 69 */	li r4, 0x69
/* 803ADE4C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ADE50  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ADE54  4B FF E9 75 */	bl mFRm_set_errInfo
/* 803ADE58  38 60 00 02 */	li r3, 2
/* 803ADE5C  48 00 00 6C */	b lbl_803ADEC8
lbl_803ADE60:
/* 803ADE60  54 60 F7 BE */	rlwinm r0, r3, 0x1e, 0x1e, 0x1f
/* 803ADE64  28 00 00 03 */	cmplwi r0, 3
/* 803ADE68  41 80 00 28 */	blt lbl_803ADE90
/* 803ADE6C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ADE70  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ADE74  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ADE78  38 80 00 6D */	li r4, 0x6d
/* 803ADE7C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ADE80  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ADE84  4B FF E9 45 */	bl mFRm_set_errInfo
/* 803ADE88  38 60 00 02 */	li r3, 2
/* 803ADE8C  48 00 00 3C */	b lbl_803ADEC8
lbl_803ADE90:
/* 803ADE90  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 803ADE94  41 82 00 28 */	beq lbl_803ADEBC
/* 803ADE98  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ADE9C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ADEA0  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ADEA4  38 80 00 71 */	li r4, 0x71
/* 803ADEA8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ADEAC  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ADEB0  4B FF E9 19 */	bl mFRm_set_errInfo
/* 803ADEB4  38 60 00 02 */	li r3, 2
/* 803ADEB8  48 00 00 10 */	b lbl_803ADEC8
lbl_803ADEBC:
/* 803ADEBC  38 84 00 01 */	addi r4, r4, 1
/* 803ADEC0  42 00 FF 3C */	bdnz lbl_803ADDFC
/* 803ADEC4  38 60 00 00 */	li r3, 0
lbl_803ADEC8:
/* 803ADEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ADECC  7C 08 03 A6 */	mtlr r0
/* 803ADED0  38 21 00 10 */	addi r1, r1, 0x10
/* 803ADED4  4E 80 00 20 */	blr 
