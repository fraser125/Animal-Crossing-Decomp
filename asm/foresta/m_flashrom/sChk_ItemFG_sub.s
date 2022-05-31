lbl_803ACB54:
/* 803ACB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ACB58  7C 08 02 A6 */	mflr r0
/* 803ACB5C  38 80 00 00 */	li r4, 0
/* 803ACB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ACB64  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803ACB68  41 82 00 38 */	beq lbl_803ACBA0
/* 803ACB6C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803ACB70  2C 00 00 04 */	cmpwi r0, 4
/* 803ACB74  40 80 00 0C */	bge lbl_803ACB80
/* 803ACB78  2C 00 00 01 */	cmpwi r0, 1
/* 803ACB7C  40 80 00 24 */	bge lbl_803ACBA0
lbl_803ACB80:
/* 803ACB80  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACB84  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACB88  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACB8C  38 80 00 C9 */	li r4, 0xc9
/* 803ACB90  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACB94  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACB98  4B FF FC 31 */	bl mFRm_set_errInfo
/* 803ACB9C  38 80 00 01 */	li r4, 1
lbl_803ACBA0:
/* 803ACBA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ACBA4  7C 83 23 78 */	mr r3, r4
/* 803ACBA8  7C 08 03 A6 */	mtlr r0
/* 803ACBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 803ACBB0  4E 80 00 20 */	blr 
