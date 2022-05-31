lbl_805FEF74:
/* 805FEF74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805FEF78  7C 08 02 A6 */	mflr r0
/* 805FEF7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805FEF80  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805FEF84  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805FEF88  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805FEF8C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805FEF90  39 61 00 20 */	addi r11, r1, 0x20
/* 805FEF94  4B A9 BF 39 */	bl func_8009AECC
/* 805FEF98  7C 7B 1B 78 */	mr r27, r3
/* 805FEF9C  7C 9C 23 78 */	mr r28, r4
/* 805FEFA0  3B A5 02 F4 */	addi r29, r5, 0x2f4
/* 805FEFA4  3B C0 00 00 */	li r30, 0
lbl_805FEFA8:
/* 805FEFA8  83 FD 00 00 */	lwz r31, 0(r29)
/* 805FEFAC  C3 FD 00 04 */	lfs f31, 4(r29)
/* 805FEFB0  28 1F 00 00 */	cmplwi r31, 0
/* 805FEFB4  C3 DD 00 08 */	lfs f30, 8(r29)
/* 805FEFB8  41 82 00 2C */	beq lbl_805FEFE4
/* 805FEFBC  7F E3 FB 78 */	mr r3, r31
/* 805FEFC0  4B DB D7 E1 */	bl mMl_check_not_used_mail
/* 805FEFC4  2C 03 00 00 */	cmpwi r3, 0
/* 805FEFC8  40 82 00 1C */	bne lbl_805FEFE4
/* 805FEFCC  FC 20 F8 90 */	fmr f1, f31
/* 805FEFD0  7F 63 DB 78 */	mr r3, r27
/* 805FEFD4  FC 40 F0 90 */	fmr f2, f30
/* 805FEFD8  7F 84 E3 78 */	mr r4, r28
/* 805FEFDC  7F E5 FB 78 */	mr r5, r31
/* 805FEFE0  4B FF FE 75 */	bl mTG_draw_mail
lbl_805FEFE4:
/* 805FEFE4  3B DE 00 01 */	addi r30, r30, 1
/* 805FEFE8  3B BD 00 0C */	addi r29, r29, 0xc
/* 805FEFEC  2C 1E 00 04 */	cmpwi r30, 4
/* 805FEFF0  41 80 FF B8 */	blt lbl_805FEFA8
/* 805FEFF4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805FEFF8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805FEFFC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805FF000  39 61 00 20 */	addi r11, r1, 0x20
/* 805FF004  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805FF008  4B A9 BF 11 */	bl func_8009AF18
/* 805FF00C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805FF010  7C 08 03 A6 */	mtlr r0
/* 805FF014  38 21 00 40 */	addi r1, r1, 0x40
/* 805FF018  4E 80 00 20 */	blr 
