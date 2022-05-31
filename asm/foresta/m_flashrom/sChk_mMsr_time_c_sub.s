lbl_803AD9BC:
/* 803AD9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AD9C0  7C 08 02 A6 */	mflr r0
/* 803AD9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AD9C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AD9CC  3B E0 00 00 */	li r31, 0
/* 803AD9D0  A0 03 00 00 */	lhz r0, 0(r3)
/* 803AD9D4  54 04 E5 3E */	rlwinm r4, r0, 0x1c, 0x14, 0x1f
/* 803AD9D8  28 04 07 D0 */	cmplwi r4, 0x7d0
/* 803AD9DC  40 80 00 10 */	bge lbl_803AD9EC
/* 803AD9E0  28 04 07 F0 */	cmplwi r4, 0x7f0
/* 803AD9E4  40 81 00 08 */	ble lbl_803AD9EC
/* 803AD9E8  3B E0 00 01 */	li r31, 1
lbl_803AD9EC:
/* 803AD9EC  88 03 00 01 */	lbz r0, 1(r3)
/* 803AD9F0  54 05 07 3F */	clrlwi. r5, r0, 0x1c
/* 803AD9F4  41 82 00 0C */	beq lbl_803ADA00
/* 803AD9F8  28 05 00 0C */	cmplwi r5, 0xc
/* 803AD9FC  40 81 00 08 */	ble lbl_803ADA04
lbl_803ADA00:
/* 803ADA00  3B E0 00 01 */	li r31, 1
lbl_803ADA04:
/* 803ADA04  88 03 00 02 */	lbz r0, 2(r3)
/* 803ADA08  54 06 EE FF */	rlwinm. r6, r0, 0x1d, 0x1b, 0x1f
/* 803ADA0C  41 82 00 0C */	beq lbl_803ADA18
/* 803ADA10  28 06 00 1F */	cmplwi r6, 0x1f
/* 803ADA14  40 81 00 08 */	ble lbl_803ADA1C
lbl_803ADA18:
/* 803ADA18  3B E0 00 01 */	li r31, 1
lbl_803ADA1C:
/* 803ADA1C  88 03 00 03 */	lbz r0, 3(r3)
/* 803ADA20  54 00 EE FE */	rlwinm r0, r0, 0x1d, 0x1b, 0x1f
/* 803ADA24  28 00 00 17 */	cmplwi r0, 0x17
/* 803ADA28  40 81 00 08 */	ble lbl_803ADA30
/* 803ADA2C  3B E0 00 01 */	li r31, 1
lbl_803ADA30:
/* 803ADA30  2C 1F 00 01 */	cmpwi r31, 1
/* 803ADA34  40 82 00 54 */	bne lbl_803ADA88
/* 803ADA38  28 04 00 00 */	cmplwi r4, 0
/* 803ADA3C  40 82 00 30 */	bne lbl_803ADA6C
/* 803ADA40  28 05 00 00 */	cmplwi r5, 0
/* 803ADA44  40 82 00 28 */	bne lbl_803ADA6C
/* 803ADA48  28 06 00 00 */	cmplwi r6, 0
/* 803ADA4C  40 82 00 20 */	bne lbl_803ADA6C
/* 803ADA50  28 00 00 00 */	cmplwi r0, 0
/* 803ADA54  40 82 00 18 */	bne lbl_803ADA6C
/* 803ADA58  88 03 00 04 */	lbz r0, 4(r3)
/* 803ADA5C  54 00 E7 3F */	rlwinm. r0, r0, 0x1c, 0x1c, 0x1f
/* 803ADA60  40 82 00 0C */	bne lbl_803ADA6C
/* 803ADA64  3B E0 00 00 */	li r31, 0
/* 803ADA68  48 00 00 20 */	b lbl_803ADA88
lbl_803ADA6C:
/* 803ADA6C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ADA70  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ADA74  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ADA78  38 80 07 54 */	li r4, 0x754
/* 803ADA7C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ADA80  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ADA84  4B FF ED 45 */	bl mFRm_set_errInfo
lbl_803ADA88:
/* 803ADA88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ADA8C  7F E3 FB 78 */	mr r3, r31
/* 803ADA90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ADA94  7C 08 03 A6 */	mtlr r0
/* 803ADA98  38 21 00 10 */	addi r1, r1, 0x10
/* 803ADA9C  4E 80 00 20 */	blr 
