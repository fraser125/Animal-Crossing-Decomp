lbl_803AEE9C:
/* 803AEE9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AEEA0  7C 08 02 A6 */	mflr r0
/* 803AEEA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AEEA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AEEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AEEB0  3C A3 00 02 */	addis r5, r3, 2
/* 803AEEB4  88 05 13 8F */	lbz r0, 0x138f(r5)
/* 803AEEB8  88 65 13 90 */	lbz r3, 0x1390(r5)
/* 803AEEBC  2C 00 07 EF */	cmpwi r0, 0x7ef
/* 803AEEC0  88 05 13 91 */	lbz r0, 0x1391(r5)
/* 803AEEC4  88 85 13 92 */	lbz r4, 0x1392(r5)
/* 803AEEC8  38 A5 0E F8 */	addi r5, r5, 0xef8
/* 803AEECC  41 81 00 1C */	bgt lbl_803AEEE8
/* 803AEED0  28 03 00 0C */	cmplwi r3, 0xc
/* 803AEED4  41 81 00 14 */	bgt lbl_803AEEE8
/* 803AEED8  28 00 00 1F */	cmplwi r0, 0x1f
/* 803AEEDC  41 81 00 0C */	bgt lbl_803AEEE8
/* 803AEEE0  28 04 00 18 */	cmplwi r4, 0x18
/* 803AEEE4  41 80 00 28 */	blt lbl_803AEF0C
lbl_803AEEE8:
/* 803AEEE8  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AEEEC  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEEF0  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEEF4  38 80 00 A8 */	li r4, 0xa8
/* 803AEEF8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEEFC  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEF00  4B FF D8 C9 */	bl mFRm_set_errInfo
/* 803AEF04  38 60 00 01 */	li r3, 1
/* 803AEF08  48 00 00 5C */	b lbl_803AEF64
lbl_803AEF0C:
/* 803AEF0C  38 00 00 03 */	li r0, 3
/* 803AEF10  38 60 00 00 */	li r3, 0
/* 803AEF14  7C 09 03 A6 */	mtctr r0
lbl_803AEF18:
/* 803AEF18  7C 85 1A 14 */	add r4, r5, r3
/* 803AEF1C  88 04 00 03 */	lbz r0, 3(r4)
/* 803AEF20  28 00 00 04 */	cmplwi r0, 4
/* 803AEF24  40 80 00 10 */	bge lbl_803AEF34
/* 803AEF28  88 04 00 00 */	lbz r0, 0(r4)
/* 803AEF2C  28 00 00 01 */	cmplwi r0, 1
/* 803AEF30  40 81 00 28 */	ble lbl_803AEF58
lbl_803AEF34:
/* 803AEF34  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AEF38  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEF3C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEF40  38 80 00 B3 */	li r4, 0xb3
/* 803AEF44  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEF48  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEF4C  4B FF D8 7D */	bl mFRm_set_errInfo
/* 803AEF50  38 60 00 01 */	li r3, 1
/* 803AEF54  48 00 00 10 */	b lbl_803AEF64
lbl_803AEF58:
/* 803AEF58  38 63 00 04 */	addi r3, r3, 4
/* 803AEF5C  42 00 FF BC */	bdnz lbl_803AEF18
/* 803AEF60  38 60 00 00 */	li r3, 0
lbl_803AEF64:
/* 803AEF64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AEF68  7C 08 03 A6 */	mtlr r0
/* 803AEF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AEF70  4E 80 00 20 */	blr 
