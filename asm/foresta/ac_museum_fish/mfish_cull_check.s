lbl_80430F50:
/* 80430F50  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80430F54  7C 08 02 A6 */	mflr r0
/* 80430F58  90 01 00 54 */	stw r0, 0x54(r1)
/* 80430F5C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80430F60  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80430F64  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80430F68  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80430F6C  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80430F70  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 80430F74  FF A0 08 90 */	fmr f29, f1
/* 80430F78  38 A1 00 08 */	addi r5, r1, 8
/* 80430F7C  FF C0 10 90 */	fmr f30, f2
/* 80430F80  FF E0 18 90 */	fmr f31, f3
/* 80430F84  4B F8 A7 A1 */	bl Game_play_Projection_Trans
/* 80430F88  FC 00 E8 50 */	fneg f0, f29
/* 80430F8C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80430F90  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80430F94  40 80 00 44 */	bge lbl_80430FD8
/* 80430F98  3C 60 80 64 */	lis r3, lit_9693@ha /* 0x80644548@ha */
/* 80430F9C  C0 03 45 48 */	lfs f0, lit_9693@l(r3)  /* 0x80644548@l */
/* 80430FA0  EC 00 E8 2A */	fadds f0, f0, f29
/* 80430FA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80430FA8  40 80 00 30 */	bge lbl_80430FD8
/* 80430FAC  FC 00 F0 50 */	fneg f0, f30
/* 80430FB0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80430FB4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80430FB8  40 80 00 20 */	bge lbl_80430FD8
/* 80430FBC  3C 60 80 64 */	lis r3, lit_10353@ha /* 0x80644574@ha */
/* 80430FC0  C0 03 45 74 */	lfs f0, lit_10353@l(r3)  /* 0x80644574@l */
/* 80430FC4  EC 00 F8 2A */	fadds f0, f0, f31
/* 80430FC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80430FCC  40 80 00 0C */	bge lbl_80430FD8
/* 80430FD0  38 60 00 01 */	li r3, 1
/* 80430FD4  48 00 00 08 */	b lbl_80430FDC
lbl_80430FD8:
/* 80430FD8  38 60 00 00 */	li r3, 0
lbl_80430FDC:
/* 80430FDC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80430FE0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80430FE4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80430FE8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80430FEC  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 80430FF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80430FF4  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80430FF8  7C 08 03 A6 */	mtlr r0
/* 80430FFC  38 21 00 50 */	addi r1, r1, 0x50
/* 80431000  4E 80 00 20 */	blr 
