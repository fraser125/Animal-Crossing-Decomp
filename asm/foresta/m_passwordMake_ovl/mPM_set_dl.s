lbl_80600F88:
/* 80600F88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80600F8C  7C 08 02 A6 */	mflr r0
/* 80600F90  90 01 00 44 */	stw r0, 0x44(r1)
/* 80600F94  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80600F98  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80600F9C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80600FA0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80600FA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80600FA8  4B A9 9F 29 */	bl func_8009AED0
/* 80600FAC  7C 7C 1B 78 */	mr r28, r3
/* 80600FB0  C3 E5 00 18 */	lfs f31, 0x18(r5)
/* 80600FB4  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 80600FB8  7C 9D 23 78 */	mr r29, r4
/* 80600FBC  C3 C5 00 1C */	lfs f30, 0x1c(r5)
/* 80600FC0  FC 20 F8 90 */	fmr f1, f31
/* 80600FC4  80 86 09 F0 */	lwz r4, 0x9f0(r6)
/* 80600FC8  83 FD 00 00 */	lwz r31, 0(r29)
/* 80600FCC  FC 40 F0 90 */	fmr f2, f30
/* 80600FD0  83 C4 00 00 */	lwz r30, 0(r4)
/* 80600FD4  7F E4 FB 78 */	mr r4, r31
/* 80600FD8  7F C6 F3 78 */	mr r6, r30
/* 80600FDC  4B FF FB 89 */	bl mPM_set_frame_dl
/* 80600FE0  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 80600FE4  7F E3 FB 78 */	mr r3, r31
/* 80600FE8  81 84 09 50 */	lwz r12, 0x950(r4)
/* 80600FEC  7D 89 03 A6 */	mtctr r12
/* 80600FF0  4E 80 04 21 */	bctrl 
/* 80600FF4  FC 20 F8 90 */	fmr f1, f31
/* 80600FF8  7F 83 E3 78 */	mr r3, r28
/* 80600FFC  FC 40 F0 90 */	fmr f2, f30
/* 80601000  7F A4 EB 78 */	mr r4, r29
/* 80601004  7F C5 F3 78 */	mr r5, r30
/* 80601008  4B FF FD 69 */	bl mPM_set_character
/* 8060100C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80601010  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80601014  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80601018  39 61 00 20 */	addi r11, r1, 0x20
/* 8060101C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80601020  4B A9 9E FD */	bl func_8009AF1C
/* 80601024  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80601028  7C 08 03 A6 */	mtlr r0
/* 8060102C  38 21 00 40 */	addi r1, r1, 0x40
/* 80601030  4E 80 00 20 */	blr 
