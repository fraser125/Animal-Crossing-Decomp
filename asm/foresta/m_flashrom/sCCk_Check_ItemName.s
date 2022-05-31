lbl_803AEFC8:
/* 803AEFC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AEFCC  7C 08 02 A6 */	mflr r0
/* 803AEFD0  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803AEFD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AEFD8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803AEFDC  2C 00 00 02 */	cmpwi r0, 2
/* 803AEFE0  38 60 00 00 */	li r3, 0
/* 803AEFE4  40 82 00 38 */	bne lbl_803AF01C
/* 803AEFE8  54 A6 06 3F */	clrlwi. r6, r5, 0x18
/* 803AEFEC  54 A0 C7 3E */	rlwinm r0, r5, 0x18, 0x1c, 0x1f
/* 803AEFF0  41 80 00 24 */	blt lbl_803AF014
/* 803AEFF4  3C 80 80 65 */	lis r4, item1_kinds@ha /* 0x80654150@ha */
/* 803AEFF8  54 00 08 3C */	slwi r0, r0, 1
/* 803AEFFC  38 84 41 50 */	addi r4, r4, item1_kinds@l /* 0x80654150@l */
/* 803AF000  7C 04 02 AE */	lhax r0, r4, r0
/* 803AF004  7C 06 00 00 */	cmpw r6, r0
/* 803AF008  41 81 00 0C */	bgt lbl_803AF014
/* 803AF00C  28 05 22 2C */	cmplwi r5, 0x222c
/* 803AF010  40 82 00 44 */	bne lbl_803AF054
lbl_803AF014:
/* 803AF014  38 60 00 01 */	li r3, 1
/* 803AF018  48 00 00 3C */	b lbl_803AF054
lbl_803AF01C:
/* 803AF01C  28 05 00 00 */	cmplwi r5, 0
/* 803AF020  41 82 00 34 */	beq lbl_803AF054
/* 803AF024  2C 00 00 01 */	cmpwi r0, 1
/* 803AF028  41 82 00 2C */	beq lbl_803AF054
/* 803AF02C  2C 00 00 03 */	cmpwi r0, 3
/* 803AF030  41 82 00 24 */	beq lbl_803AF054
/* 803AF034  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AF038  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AF03C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AF040  38 80 00 6E */	li r4, 0x6e
/* 803AF044  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AF048  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AF04C  4B FF D7 7D */	bl mFRm_set_errInfo
/* 803AF050  38 60 00 01 */	li r3, 1
lbl_803AF054:
/* 803AF054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AF058  7C 08 03 A6 */	mtlr r0
/* 803AF05C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AF060  4E 80 00 20 */	blr 
