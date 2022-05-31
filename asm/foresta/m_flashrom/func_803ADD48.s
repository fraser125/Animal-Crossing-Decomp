lbl_803ADD48:
/* 803ADD48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ADD4C  7C 08 02 A6 */	mflr r0
/* 803ADD50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ADD54  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ADD58  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ADD5C  3C 63 00 02 */	addis r3, r3, 2
/* 803ADD60  88 63 0F 19 */	lbz r3, 0xf19(r3)
/* 803ADD64  54 60 E7 3E */	rlwinm r0, r3, 0x1c, 0x1c, 0x1f
/* 803ADD68  54 63 07 3E */	clrlwi r3, r3, 0x1c
/* 803ADD6C  2C 00 00 04 */	cmpwi r0, 4
/* 803ADD70  41 80 00 28 */	blt lbl_803ADD98
/* 803ADD74  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ADD78  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ADD7C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ADD80  38 80 00 4E */	li r4, 0x4e
/* 803ADD84  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ADD88  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ADD8C  4B FF EA 3D */	bl mFRm_set_errInfo
/* 803ADD90  38 60 00 01 */	li r3, 1
/* 803ADD94  48 00 00 34 */	b lbl_803ADDC8
lbl_803ADD98:
/* 803ADD98  2C 03 00 04 */	cmpwi r3, 4
/* 803ADD9C  41 80 00 28 */	blt lbl_803ADDC4
/* 803ADDA0  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ADDA4  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ADDA8  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ADDAC  38 80 00 52 */	li r4, 0x52
/* 803ADDB0  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ADDB4  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ADDB8  4B FF EA 11 */	bl mFRm_set_errInfo
/* 803ADDBC  38 60 00 01 */	li r3, 1
/* 803ADDC0  48 00 00 08 */	b lbl_803ADDC8
lbl_803ADDC4:
/* 803ADDC4  38 60 00 00 */	li r3, 0
lbl_803ADDC8:
/* 803ADDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ADDCC  7C 08 03 A6 */	mtlr r0
/* 803ADDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 803ADDD4  4E 80 00 20 */	blr 
