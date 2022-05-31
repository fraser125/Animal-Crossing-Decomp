lbl_803BDF84:
/* 803BDF84  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803BDF88  7C 08 02 A6 */	mflr r0
/* 803BDF8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 803BDF90  39 61 00 50 */	addi r11, r1, 0x50
/* 803BDF94  4B CD CF 2D */	bl func_8009AEC0
/* 803BDF98  7C 78 1B 78 */	mr r24, r3
/* 803BDF9C  7C 99 23 78 */	mr r25, r4
/* 803BDFA0  7C BA 2B 78 */	mr r26, r5
/* 803BDFA4  7C DB 33 78 */	mr r27, r6
/* 803BDFA8  7C FC 3B 78 */	mr r28, r7
/* 803BDFAC  7D 1D 43 78 */	mr r29, r8
/* 803BDFB0  7D 3E 4B 78 */	mr r30, r9
/* 803BDFB4  7D 5F 53 78 */	mr r31, r10
/* 803BDFB8  38 61 00 08 */	addi r3, r1, 8
/* 803BDFBC  38 80 00 1C */	li r4, 0x1c
/* 803BDFC0  4B C9 F0 A9 */	bl bzero
/* 803BDFC4  7F 24 CB 78 */	mr r4, r25
/* 803BDFC8  7F 45 D3 78 */	mr r5, r26
/* 803BDFCC  7F 66 DB 78 */	mr r6, r27
/* 803BDFD0  7F 87 E3 78 */	mr r7, r28
/* 803BDFD4  7F A8 EB 78 */	mr r8, r29
/* 803BDFD8  7F C9 F3 78 */	mr r9, r30
/* 803BDFDC  7F EA FB 78 */	mr r10, r31
/* 803BDFE0  38 61 00 08 */	addi r3, r1, 8
/* 803BDFE4  4B FF F5 41 */	bl mMpswd_make_passcode
/* 803BDFE8  38 61 00 08 */	addi r3, r1, 8
/* 803BDFEC  4B FF FB 0D */	bl mMpswd_substitution_cipher
/* 803BDFF0  38 61 00 08 */	addi r3, r1, 8
/* 803BDFF4  38 80 00 01 */	li r4, 1
/* 803BDFF8  38 A0 00 00 */	li r5, 0
/* 803BDFFC  4B FF FB 79 */	bl mMpswd_transposition_cipher
/* 803BE000  38 61 00 08 */	addi r3, r1, 8
/* 803BE004  38 80 00 00 */	li r4, 0
/* 803BE008  4B FF FB FD */	bl mMpswd_bit_shuffle
/* 803BE00C  38 61 00 08 */	addi r3, r1, 8
/* 803BE010  4B FF F7 ED */	bl mMpswd_chg_RSA_cipher
/* 803BE014  38 61 00 08 */	addi r3, r1, 8
/* 803BE018  4B FF F9 89 */	bl mMpswd_bit_mix_code
/* 803BE01C  38 61 00 08 */	addi r3, r1, 8
/* 803BE020  38 80 00 01 */	li r4, 1
/* 803BE024  4B FF FB E1 */	bl mMpswd_bit_shuffle
/* 803BE028  38 61 00 08 */	addi r3, r1, 8
/* 803BE02C  38 80 00 00 */	li r4, 0
/* 803BE030  38 A0 00 01 */	li r5, 1
/* 803BE034  4B FF FB 41 */	bl mMpswd_transposition_cipher
/* 803BE038  7F 03 C3 78 */	mr r3, r24
/* 803BE03C  38 81 00 08 */	addi r4, r1, 8
/* 803BE040  4B FF F6 2D */	bl mMpswd_chg_6bits_code
/* 803BE044  7F 03 C3 78 */	mr r3, r24
/* 803BE048  4B FF FE 15 */	bl mMpswd_chg_common_font_code
/* 803BE04C  39 61 00 50 */	addi r11, r1, 0x50
/* 803BE050  4B CD CE BD */	bl func_8009AF0C
/* 803BE054  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803BE058  7C 08 03 A6 */	mtlr r0
/* 803BE05C  38 21 00 50 */	addi r1, r1, 0x50
/* 803BE060  4E 80 00 20 */	blr 
