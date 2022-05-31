lbl_803AF064:
/* 803AF064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AF068  7C 08 02 A6 */	mflr r0
/* 803AF06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AF070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AF074  3B E0 00 00 */	li r31, 0
/* 803AF078  93 C1 00 08 */	stw r30, 8(r1)
/* 803AF07C  7C 7E 1B 78 */	mr r30, r3
/* 803AF080  4B FF FF 49 */	bl sCCk_Check_ItemName
/* 803AF084  2C 03 00 00 */	cmpwi r3, 0
/* 803AF088  40 82 00 58 */	bne lbl_803AF0E0
/* 803AF08C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 803AF090  28 00 22 24 */	cmplwi r0, 0x2224
/* 803AF094  41 80 00 0C */	blt lbl_803AF0A0
/* 803AF098  28 00 22 2B */	cmplwi r0, 0x222b
/* 803AF09C  40 81 00 44 */	ble lbl_803AF0E0
lbl_803AF0A0:
/* 803AF0A0  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 803AF0A4  28 00 22 2D */	cmplwi r0, 0x222d
/* 803AF0A8  41 80 00 0C */	blt lbl_803AF0B4
/* 803AF0AC  28 00 22 38 */	cmplwi r0, 0x2238
/* 803AF0B0  40 81 00 30 */	ble lbl_803AF0E0
lbl_803AF0B4:
/* 803AF0B4  38 1E DA E4 */	addi r0, r30, -9500
/* 803AF0B8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803AF0BC  28 00 00 01 */	cmplwi r0, 1
/* 803AF0C0  40 81 00 20 */	ble lbl_803AF0E0
/* 803AF0C4  38 1E DA E1 */	addi r0, r30, -9503
/* 803AF0C8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803AF0CC  28 00 00 02 */	cmplwi r0, 2
/* 803AF0D0  40 81 00 10 */	ble lbl_803AF0E0
/* 803AF0D4  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 803AF0D8  28 00 25 22 */	cmplwi r0, 0x2522
/* 803AF0DC  40 82 00 24 */	bne lbl_803AF100
lbl_803AF0E0:
/* 803AF0E0  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AF0E4  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AF0E8  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AF0EC  38 80 00 8D */	li r4, 0x8d
/* 803AF0F0  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AF0F4  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AF0F8  4B FF D6 D1 */	bl mFRm_set_errInfo
/* 803AF0FC  3B E0 00 01 */	li r31, 1
lbl_803AF100:
/* 803AF100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AF104  7F E3 FB 78 */	mr r3, r31
/* 803AF108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AF10C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803AF110  7C 08 03 A6 */	mtlr r0
/* 803AF114  38 21 00 10 */	addi r1, r1, 0x10
/* 803AF118  4E 80 00 20 */	blr 
