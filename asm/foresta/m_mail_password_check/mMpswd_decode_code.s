lbl_803BE064:
/* 803BE064  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BE068  7C 08 02 A6 */	mflr r0
/* 803BE06C  38 A0 00 1C */	li r5, 0x1c
/* 803BE070  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BE074  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803BE078  3B E0 00 00 */	li r31, 0
/* 803BE07C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803BE080  7C 7E 1B 78 */	mr r30, r3
/* 803BE084  38 61 00 08 */	addi r3, r1, 8
/* 803BE088  4B C4 54 09 */	bl memcpy
/* 803BE08C  38 61 00 08 */	addi r3, r1, 8
/* 803BE090  4B FF F4 51 */	bl mMpswd_adjust_letter
/* 803BE094  38 61 00 08 */	addi r3, r1, 8
/* 803BE098  4B FF FE 5D */	bl mMpswd_chg_password_font_code
/* 803BE09C  2C 03 00 01 */	cmpwi r3, 1
/* 803BE0A0  40 82 00 64 */	bne lbl_803BE104
/* 803BE0A4  7F C3 F3 78 */	mr r3, r30
/* 803BE0A8  38 81 00 08 */	addi r4, r1, 8
/* 803BE0AC  4B FF F6 2D */	bl mMpswd_chg_8bits_code
/* 803BE0B0  7F C3 F3 78 */	mr r3, r30
/* 803BE0B4  38 80 00 01 */	li r4, 1
/* 803BE0B8  38 A0 00 01 */	li r5, 1
/* 803BE0BC  4B FF FA B9 */	bl mMpswd_transposition_cipher
/* 803BE0C0  7F C3 F3 78 */	mr r3, r30
/* 803BE0C4  38 80 00 01 */	li r4, 1
/* 803BE0C8  4B FF FC 69 */	bl mMpswd_decode_bit_shuffle
/* 803BE0CC  7F C3 F3 78 */	mr r3, r30
/* 803BE0D0  4B FF F9 7D */	bl mMpswd_decode_bit_code
/* 803BE0D4  7F C3 F3 78 */	mr r3, r30
/* 803BE0D8  4B FF F7 DD */	bl mMpswd_decode_RSA_cipher
/* 803BE0DC  7F C3 F3 78 */	mr r3, r30
/* 803BE0E0  38 80 00 00 */	li r4, 0
/* 803BE0E4  4B FF FC 4D */	bl mMpswd_decode_bit_shuffle
/* 803BE0E8  7F C3 F3 78 */	mr r3, r30
/* 803BE0EC  38 80 00 00 */	li r4, 0
/* 803BE0F0  38 A0 00 00 */	li r5, 0
/* 803BE0F4  4B FF FA 81 */	bl mMpswd_transposition_cipher
/* 803BE0F8  7F C3 F3 78 */	mr r3, r30
/* 803BE0FC  4B FF FA 25 */	bl mMpswd_decode_substitution_cipher
/* 803BE100  3B E0 00 01 */	li r31, 1
lbl_803BE104:
/* 803BE104  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BE108  7F E3 FB 78 */	mr r3, r31
/* 803BE10C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803BE110  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803BE114  7C 08 03 A6 */	mtlr r0
/* 803BE118  38 21 00 30 */	addi r1, r1, 0x30
/* 803BE11C  4E 80 00 20 */	blr 
