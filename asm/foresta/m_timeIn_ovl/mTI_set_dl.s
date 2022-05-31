lbl_805FFF44:
/* 805FFF44  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805FFF48  7C 08 02 A6 */	mflr r0
/* 805FFF4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805FFF50  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805FFF54  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805FFF58  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805FFF5C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805FFF60  39 61 00 20 */	addi r11, r1, 0x20
/* 805FFF64  4B A9 AF 71 */	bl func_8009AED4
/* 805FFF68  C3 E5 00 18 */	lfs f31, 0x18(r5)
/* 805FFF6C  7C 9E 23 78 */	mr r30, r4
/* 805FFF70  C3 C5 00 1C */	lfs f30, 0x1c(r5)
/* 805FFF74  7C 7D 1B 78 */	mr r29, r3
/* 805FFF78  83 E4 00 00 */	lwz r31, 0(r4)
/* 805FFF7C  FC 20 F8 90 */	fmr f1, f31
/* 805FFF80  FC 40 F0 90 */	fmr f2, f30
/* 805FFF84  7F E4 FB 78 */	mr r4, r31
/* 805FFF88  4B FF F9 A9 */	bl mTI_set_frame_dl
/* 805FFF8C  FC 20 F8 90 */	fmr f1, f31
/* 805FFF90  7F A3 EB 78 */	mr r3, r29
/* 805FFF94  FC 40 F0 90 */	fmr f2, f30
/* 805FFF98  7F E4 FB 78 */	mr r4, r31
/* 805FFF9C  4B FF FB B5 */	bl mTI_set_clock
/* 805FFFA0  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805FFFA4  7F E3 FB 78 */	mr r3, r31
/* 805FFFA8  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805FFFAC  7D 89 03 A6 */	mtctr r12
/* 805FFFB0  4E 80 04 21 */	bctrl 
/* 805FFFB4  FC 20 F8 90 */	fmr f1, f31
/* 805FFFB8  7F A3 EB 78 */	mr r3, r29
/* 805FFFBC  FC 40 F0 90 */	fmr f2, f30
/* 805FFFC0  7F C4 F3 78 */	mr r4, r30
/* 805FFFC4  4B FF FD 85 */	bl mTI_set_character
/* 805FFFC8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805FFFCC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805FFFD0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805FFFD4  39 61 00 20 */	addi r11, r1, 0x20
/* 805FFFD8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805FFFDC  4B A9 AF 45 */	bl func_8009AF20
/* 805FFFE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805FFFE4  7C 08 03 A6 */	mtlr r0
/* 805FFFE8  38 21 00 40 */	addi r1, r1, 0x40
/* 805FFFEC  4E 80 00 20 */	blr 
