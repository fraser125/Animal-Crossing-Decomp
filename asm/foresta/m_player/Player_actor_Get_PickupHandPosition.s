lbl_804DD6AC:
/* 804DD6AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804DD6B0  7C 08 02 A6 */	mflr r0
/* 804DD6B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DD6B8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804DD6BC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804DD6C0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804DD6C4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804DD6C8  39 61 00 20 */	addi r11, r1, 0x20
/* 804DD6CC  4B BB D8 09 */	bl func_8009AED4
/* 804DD6D0  7C 7D 1B 78 */	mr r29, r3
/* 804DD6D4  FF C0 08 90 */	fmr f30, f1
/* 804DD6D8  AB E3 00 DE */	lha r31, 0xde(r3)
/* 804DD6DC  7C 9E 23 78 */	mr r30, r4
/* 804DD6E0  7F E3 FB 78 */	mr r3, r31
/* 804DD6E4  4B ED D4 0D */	bl sin_s
/* 804DD6E8  EF FE 00 72 */	fmuls f31, f30, f1
/* 804DD6EC  7F E3 FB 78 */	mr r3, r31
/* 804DD6F0  4B ED D3 AD */	bl cos_s
/* 804DD6F4  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804DD6F8  EC 3E 00 72 */	fmuls f1, f30, f1
/* 804DD6FC  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 804DD700  90 7E 00 00 */	stw r3, 0(r30)
/* 804DD704  90 1E 00 04 */	stw r0, 4(r30)
/* 804DD708  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 804DD70C  90 1E 00 08 */	stw r0, 8(r30)
/* 804DD710  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804DD714  EC 00 F8 2A */	fadds f0, f0, f31
/* 804DD718  D0 1E 00 00 */	stfs f0, 0(r30)
/* 804DD71C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804DD720  EC 00 08 2A */	fadds f0, f0, f1
/* 804DD724  D0 1E 00 08 */	stfs f0, 8(r30)
/* 804DD728  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804DD72C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804DD730  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804DD734  39 61 00 20 */	addi r11, r1, 0x20
/* 804DD738  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804DD73C  4B BB D7 E5 */	bl func_8009AF20
/* 804DD740  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804DD744  7C 08 03 A6 */	mtlr r0
/* 804DD748  38 21 00 40 */	addi r1, r1, 0x40
/* 804DD74C  4E 80 00 20 */	blr 
