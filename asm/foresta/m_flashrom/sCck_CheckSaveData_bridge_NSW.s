lbl_803AE9BC:
/* 803AE9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE9C0  7C 08 02 A6 */	mflr r0
/* 803AE9C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AE9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE9CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AE9D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AE9D4  3F E3 00 02 */	addis r31, r3, 2
/* 803AE9D8  38 7F 13 F4 */	addi r3, r31, 0x13f4
/* 803AE9DC  4B FF FC 1D */	bl func_803AE5F8
/* 803AE9E0  2C 03 00 00 */	cmpwi r3, 0
/* 803AE9E4  41 82 00 28 */	beq lbl_803AEA0C
/* 803AE9E8  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE9EC  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE9F0  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE9F4  38 80 01 03 */	li r4, 0x103
/* 803AE9F8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE9FC  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEA00  4B FF DD C9 */	bl mFRm_set_errInfo
/* 803AEA04  38 60 00 01 */	li r3, 1
/* 803AEA08  48 00 00 A4 */	b lbl_803AEAAC
lbl_803AEA0C:
/* 803AEA0C  88 7F 13 F2 */	lbz r3, 0x13f2(r31)
/* 803AEA10  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 803AEA14  40 82 00 0C */	bne lbl_803AEA20
/* 803AEA18  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 803AEA1C  41 82 00 50 */	beq lbl_803AEA6C
lbl_803AEA20:
/* 803AEA20  88 1F 13 F0 */	lbz r0, 0x13f0(r31)
/* 803AEA24  28 00 00 00 */	cmplwi r0, 0
/* 803AEA28  41 82 00 20 */	beq lbl_803AEA48
/* 803AEA2C  28 00 00 05 */	cmplwi r0, 5
/* 803AEA30  41 81 00 18 */	bgt lbl_803AEA48
/* 803AEA34  88 1F 13 F1 */	lbz r0, 0x13f1(r31)
/* 803AEA38  28 00 00 00 */	cmplwi r0, 0
/* 803AEA3C  41 82 00 0C */	beq lbl_803AEA48
/* 803AEA40  28 00 00 06 */	cmplwi r0, 6
/* 803AEA44  40 81 00 64 */	ble lbl_803AEAA8
lbl_803AEA48:
/* 803AEA48  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AEA4C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEA50  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEA54  38 80 01 0F */	li r4, 0x10f
/* 803AEA58  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEA5C  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEA60  4B FF DD 69 */	bl mFRm_set_errInfo
/* 803AEA64  38 60 00 01 */	li r3, 1
/* 803AEA68  48 00 00 44 */	b lbl_803AEAAC
lbl_803AEA6C:
/* 803AEA6C  88 1F 13 F0 */	lbz r0, 0x13f0(r31)
/* 803AEA70  28 00 00 00 */	cmplwi r0, 0
/* 803AEA74  40 82 00 10 */	bne lbl_803AEA84
/* 803AEA78  88 1F 13 F1 */	lbz r0, 0x13f1(r31)
/* 803AEA7C  28 00 00 00 */	cmplwi r0, 0
/* 803AEA80  41 82 00 28 */	beq lbl_803AEAA8
lbl_803AEA84:
/* 803AEA84  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AEA88  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEA8C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEA90  38 80 01 18 */	li r4, 0x118
/* 803AEA94  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEA98  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEA9C  4B FF DD 2D */	bl mFRm_set_errInfo
/* 803AEAA0  38 60 00 01 */	li r3, 1
/* 803AEAA4  48 00 00 08 */	b lbl_803AEAAC
lbl_803AEAA8:
/* 803AEAA8  38 60 00 00 */	li r3, 0
lbl_803AEAAC:
/* 803AEAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AEAB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AEAB4  7C 08 03 A6 */	mtlr r0
/* 803AEAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 803AEABC  4E 80 00 20 */	blr 
