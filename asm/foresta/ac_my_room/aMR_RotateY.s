lbl_80478410:
/* 80478410  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80478414  7C 08 02 A6 */	mflr r0
/* 80478418  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047841C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80478420  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80478424  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80478428  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8047842C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80478430  7C 7F 1B 78 */	mr r31, r3
/* 80478434  FF C0 08 90 */	fmr f30, f1
/* 80478438  4B F9 04 B5 */	bl cosf_table
/* 8047843C  FF E0 08 90 */	fmr f31, f1
/* 80478440  FC 20 F0 90 */	fmr f1, f30
/* 80478444  4B F9 04 39 */	bl sinf_table
/* 80478448  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8047844C  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80478450  FC 00 10 50 */	fneg f0, f2
/* 80478454  EC 62 07 F2 */	fmuls f3, f2, f31
/* 80478458  EC 44 00 72 */	fmuls f2, f4, f1
/* 8047845C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80478460  EC 04 07 F2 */	fmuls f0, f4, f31
/* 80478464  EC 43 10 2A */	fadds f2, f3, f2
/* 80478468  EC 01 00 2A */	fadds f0, f1, f0
/* 8047846C  D0 5F 00 00 */	stfs f2, 0(r31)
/* 80478470  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80478474  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80478478  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8047847C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80478480  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80478484  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80478488  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047848C  7C 08 03 A6 */	mtlr r0
/* 80478490  38 21 00 30 */	addi r1, r1, 0x30
/* 80478494  4E 80 00 20 */	blr 
