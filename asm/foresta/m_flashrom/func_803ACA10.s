lbl_803ACA10:
/* 803ACA10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ACA14  7C 08 02 A6 */	mflr r0
/* 803ACA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ACA1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ACA20  7C 9F 23 78 */	mr r31, r4
/* 803ACA24  93 C1 00 08 */	stw r30, 8(r1)
/* 803ACA28  7C 7E 1B 78 */	mr r30, r3
/* 803ACA2C  28 1E 00 05 */	cmplwi r30, 5
/* 803ACA30  38 60 00 00 */	li r3, 0
/* 803ACA34  40 81 00 2C */	ble lbl_803ACA60
/* 803ACA38  28 1E 00 FF */	cmplwi r30, 0xff
/* 803ACA3C  41 82 00 24 */	beq lbl_803ACA60
/* 803ACA40  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACA44  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACA48  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACA4C  38 80 00 4F */	li r4, 0x4f
/* 803ACA50  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACA54  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACA58  4B FF FD 71 */	bl mFRm_set_errInfo
/* 803ACA5C  38 60 00 01 */	li r3, 1
lbl_803ACA60:
/* 803ACA60  28 1F 00 06 */	cmplwi r31, 6
/* 803ACA64  40 81 00 2C */	ble lbl_803ACA90
/* 803ACA68  28 1F 00 FF */	cmplwi r31, 0xff
/* 803ACA6C  41 82 00 24 */	beq lbl_803ACA90
/* 803ACA70  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACA74  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACA78  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACA7C  38 80 00 5A */	li r4, 0x5a
/* 803ACA80  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACA84  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACA88  4B FF FD 41 */	bl mFRm_set_errInfo
/* 803ACA8C  38 60 00 01 */	li r3, 1
lbl_803ACA90:
/* 803ACA90  28 1F 00 08 */	cmplwi r31, 8
/* 803ACA94  40 82 00 18 */	bne lbl_803ACAAC
/* 803ACA98  28 1E 00 04 */	cmplwi r30, 4
/* 803ACA9C  41 82 00 0C */	beq lbl_803ACAA8
/* 803ACAA0  28 1E 00 05 */	cmplwi r30, 5
/* 803ACAA4  40 82 00 08 */	bne lbl_803ACAAC
lbl_803ACAA8:
/* 803ACAA8  38 60 00 00 */	li r3, 0
lbl_803ACAAC:
/* 803ACAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ACAB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ACAB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803ACAB8  7C 08 03 A6 */	mtlr r0
/* 803ACABC  38 21 00 10 */	addi r1, r1, 0x10
/* 803ACAC0  4E 80 00 20 */	blr 
