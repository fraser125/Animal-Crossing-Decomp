lbl_803ACC80:
/* 803ACC80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ACC84  7C 08 02 A6 */	mflr r0
/* 803ACC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ACC8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ACC90  3B E0 00 00 */	li r31, 0
/* 803ACC94  A0 03 00 06 */	lhz r0, 6(r3)
/* 803ACC98  28 00 07 D0 */	cmplwi r0, 0x7d0
/* 803ACC9C  41 80 00 0C */	blt lbl_803ACCA8
/* 803ACCA0  28 00 07 F0 */	cmplwi r0, 0x7f0
/* 803ACCA4  40 81 00 08 */	ble lbl_803ACCAC
lbl_803ACCA8:
/* 803ACCA8  3B E0 00 01 */	li r31, 1
lbl_803ACCAC:
/* 803ACCAC  88 83 00 05 */	lbz r4, 5(r3)
/* 803ACCB0  28 04 00 00 */	cmplwi r4, 0
/* 803ACCB4  41 82 00 0C */	beq lbl_803ACCC0
/* 803ACCB8  28 04 00 0C */	cmplwi r4, 0xc
/* 803ACCBC  40 81 00 08 */	ble lbl_803ACCC4
lbl_803ACCC0:
/* 803ACCC0  3B E0 00 01 */	li r31, 1
lbl_803ACCC4:
/* 803ACCC4  88 A3 00 03 */	lbz r5, 3(r3)
/* 803ACCC8  28 05 00 00 */	cmplwi r5, 0
/* 803ACCCC  41 82 00 0C */	beq lbl_803ACCD8
/* 803ACCD0  28 05 00 1F */	cmplwi r5, 0x1f
/* 803ACCD4  40 81 00 08 */	ble lbl_803ACCDC
lbl_803ACCD8:
/* 803ACCD8  3B E0 00 01 */	li r31, 1
lbl_803ACCDC:
/* 803ACCDC  88 C3 00 04 */	lbz r6, 4(r3)
/* 803ACCE0  28 06 00 06 */	cmplwi r6, 6
/* 803ACCE4  40 81 00 08 */	ble lbl_803ACCEC
/* 803ACCE8  3B E0 00 01 */	li r31, 1
lbl_803ACCEC:
/* 803ACCEC  88 E3 00 02 */	lbz r7, 2(r3)
/* 803ACCF0  28 07 00 17 */	cmplwi r7, 0x17
/* 803ACCF4  40 81 00 08 */	ble lbl_803ACCFC
/* 803ACCF8  3B E0 00 01 */	li r31, 1
lbl_803ACCFC:
/* 803ACCFC  89 03 00 01 */	lbz r8, 1(r3)
/* 803ACD00  28 08 00 3B */	cmplwi r8, 0x3b
/* 803ACD04  40 81 00 08 */	ble lbl_803ACD0C
/* 803ACD08  3B E0 00 01 */	li r31, 1
lbl_803ACD0C:
/* 803ACD0C  89 23 00 00 */	lbz r9, 0(r3)
/* 803ACD10  28 09 00 3B */	cmplwi r9, 0x3b
/* 803ACD14  40 81 00 08 */	ble lbl_803ACD1C
/* 803ACD18  3B E0 00 01 */	li r31, 1
lbl_803ACD1C:
/* 803ACD1C  2C 1F 00 01 */	cmpwi r31, 1
/* 803ACD20  40 82 00 80 */	bne lbl_803ACDA0
/* 803ACD24  28 00 00 00 */	cmplwi r0, 0
/* 803ACD28  40 82 00 3C */	bne lbl_803ACD64
/* 803ACD2C  28 04 00 00 */	cmplwi r4, 0
/* 803ACD30  40 82 00 34 */	bne lbl_803ACD64
/* 803ACD34  28 05 00 00 */	cmplwi r5, 0
/* 803ACD38  40 82 00 2C */	bne lbl_803ACD64
/* 803ACD3C  28 06 00 00 */	cmplwi r6, 0
/* 803ACD40  40 82 00 24 */	bne lbl_803ACD64
/* 803ACD44  28 07 00 00 */	cmplwi r7, 0
/* 803ACD48  40 82 00 1C */	bne lbl_803ACD64
/* 803ACD4C  28 08 00 00 */	cmplwi r8, 0
/* 803ACD50  40 82 00 14 */	bne lbl_803ACD64
/* 803ACD54  28 09 00 00 */	cmplwi r9, 0
/* 803ACD58  40 82 00 0C */	bne lbl_803ACD64
/* 803ACD5C  3B E0 00 00 */	li r31, 0
/* 803ACD60  48 00 00 40 */	b lbl_803ACDA0
lbl_803ACD64:
/* 803ACD64  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803ACD68  38 A0 00 7F */	li r5, 0x7f
/* 803ACD6C  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803ACD70  48 05 9A C9 */	bl lbRTC_IsEqualTime
/* 803ACD74  2C 03 00 01 */	cmpwi r3, 1
/* 803ACD78  40 82 00 0C */	bne lbl_803ACD84
/* 803ACD7C  3B E0 00 00 */	li r31, 0
/* 803ACD80  48 00 00 20 */	b lbl_803ACDA0
lbl_803ACD84:
/* 803ACD84  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACD88  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACD8C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACD90  38 80 01 7B */	li r4, 0x17b
/* 803ACD94  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACD98  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACD9C  4B FF FA 2D */	bl mFRm_set_errInfo
lbl_803ACDA0:
/* 803ACDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ACDA4  7F E3 FB 78 */	mr r3, r31
/* 803ACDA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ACDAC  7C 08 03 A6 */	mtlr r0
/* 803ACDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 803ACDB4  4E 80 00 20 */	blr 
