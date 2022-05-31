lbl_804D593C:
/* 804D593C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D5940  7C 08 02 A6 */	mflr r0
/* 804D5944  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D5948  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804D594C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804D5950  C3 E3 00 74 */	lfs f31, 0x74(r3)
/* 804D5954  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D5958  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804D595C  EF FF 08 28 */	fsubs f31, f31, f1
/* 804D5960  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804D5964  40 80 00 08 */	bge lbl_804D596C
/* 804D5968  FF E0 00 90 */	fmr f31, f0
lbl_804D596C:
/* 804D596C  D3 E3 00 74 */	stfs f31, 0x74(r3)
/* 804D5970  4B FF FF AD */	bl Player_actor_Movement_Base
/* 804D5974  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D5978  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804D597C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 804D5980  7C 00 00 26 */	mfcr r0
/* 804D5984  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 804D5988  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 804D598C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D5990  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804D5994  7C 08 03 A6 */	mtlr r0
/* 804D5998  38 21 00 20 */	addi r1, r1, 0x20
/* 804D599C  4E 80 00 20 */	blr 
