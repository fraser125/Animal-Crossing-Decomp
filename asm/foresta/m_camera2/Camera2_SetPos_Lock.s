lbl_80381224:
/* 80381224  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80381228  7C 08 02 A6 */	mflr r0
/* 8038122C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80381230  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80381234  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80381238  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8038123C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80381240  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 80381244  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 80381248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038124C  93 C1 00 08 */	stw r30, 8(r1)
/* 80381250  7C 7E 1B 78 */	mr r30, r3
/* 80381254  83 E3 1C 1C */	lwz r31, 0x1c1c(r3)
/* 80381258  38 9E 1C 00 */	addi r4, r30, 0x1c00
/* 8038125C  C3 E3 1C 18 */	lfs f31, 0x1c18(r3)
/* 80381260  C3 C3 1C 20 */	lfs f30, 0x1c20(r3)
/* 80381264  7F E5 FB 78 */	mr r5, r31
/* 80381268  C3 A3 1C 24 */	lfs f29, 0x1c24(r3)
/* 8038126C  4B FF FD FD */	bl Camera2_Lock_SetCenterPos
/* 80381270  7F C3 F3 78 */	mr r3, r30
/* 80381274  7F E5 FB 78 */	mr r5, r31
/* 80381278  38 9E 1C 0C */	addi r4, r30, 0x1c0c
/* 8038127C  4B FF FE A1 */	bl Camera2_Lock_SetEyePos
/* 80381280  FC 20 F8 90 */	fmr f1, f31
/* 80381284  7F C3 F3 78 */	mr r3, r30
/* 80381288  7F E4 FB 78 */	mr r4, r31
/* 8038128C  4B FF FE F9 */	bl Camera2_Lock_SetFovy
/* 80381290  FC 20 F0 90 */	fmr f1, f30
/* 80381294  7F C3 F3 78 */	mr r3, r30
/* 80381298  FC 40 E8 90 */	fmr f2, f29
/* 8038129C  7F E4 FB 78 */	mr r4, r31
/* 803812A0  4B FF FF 09 */	bl Camera2_Lock_SetNearFar
/* 803812A4  7F C3 F3 78 */	mr r3, r30
/* 803812A8  4B FF FF 59 */	bl Camera2_Lock_MorphCounterProc
/* 803812AC  7F C3 F3 78 */	mr r3, r30
/* 803812B0  4B FF C6 BD */	bl func_8037D96C
/* 803812B4  7F C3 F3 78 */	mr r3, r30
/* 803812B8  4B FF CC 85 */	bl Camera2_SetView
/* 803812BC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803812C0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803812C4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803812C8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803812CC  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 803812D0  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 803812D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803812D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803812DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803812E0  7C 08 03 A6 */	mtlr r0
/* 803812E4  38 21 00 40 */	addi r1, r1, 0x40
/* 803812E8  4E 80 00 20 */	blr 
