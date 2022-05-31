lbl_8050C990:
/* 8050C990  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050C994  7C 08 02 A6 */	mflr r0
/* 8050C998  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050C99C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8050C9A0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8050C9A4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8050C9A8  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8050C9AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050C9B0  FF E0 10 90 */	fmr f31, f2
/* 8050C9B4  7C 7F 1B 78 */	mr r31, r3
/* 8050C9B8  FF C0 08 90 */	fmr f30, f1
/* 8050C9BC  C0 23 04 20 */	lfs f1, 0x420(r3)
/* 8050C9C0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8050C9C4  FC 60 F8 90 */	fmr f3, f31
/* 8050C9C8  FC 40 F0 90 */	fmr f2, f30
/* 8050C9CC  4B FF FF 01 */	bl aBEE_calc_scale_sub
/* 8050C9D0  FC 40 F0 90 */	fmr f2, f30
/* 8050C9D4  C0 3F 04 24 */	lfs f1, 0x424(r31)
/* 8050C9D8  FC 60 F8 90 */	fmr f3, f31
/* 8050C9DC  38 7F 00 60 */	addi r3, r31, 0x60
/* 8050C9E0  4B FF FE ED */	bl aBEE_calc_scale_sub
/* 8050C9E4  FC 40 F0 90 */	fmr f2, f30
/* 8050C9E8  C0 3F 04 28 */	lfs f1, 0x428(r31)
/* 8050C9EC  FC 60 F8 90 */	fmr f3, f31
/* 8050C9F0  38 7F 00 64 */	addi r3, r31, 0x64
/* 8050C9F4  4B FF FE D9 */	bl aBEE_calc_scale_sub
/* 8050C9F8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8050C9FC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8050CA00  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8050CA04  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8050CA08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050CA0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050CA10  7C 08 03 A6 */	mtlr r0
/* 8050CA14  38 21 00 30 */	addi r1, r1, 0x30
/* 8050CA18  4E 80 00 20 */	blr 
