lbl_804E3150:
/* 804E3150  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E3154  7C 08 02 A6 */	mflr r0
/* 804E3158  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E315C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E3160  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E3164  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 804E3168  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 804E316C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E3170  7C 7F 1B 78 */	mr r31, r3
/* 804E3174  C3 E3 0A 28 */	lfs f31, 0xa28(r3)
/* 804E3178  C0 03 11 94 */	lfs f0, 0x1194(r3)
/* 804E317C  C0 23 0A 20 */	lfs f1, 0xa20(r3)
/* 804E3180  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 804E3184  41 82 00 5C */	beq lbl_804E31E0
/* 804E3188  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E318C  EC 5F 00 28 */	fsubs f2, f31, f0
/* 804E3190  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E3194  C3 DF 0A 24 */	lfs f30, 0xa24(r31)
/* 804E3198  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E319C  4C 41 13 82 */	cror 2, 1, 2
/* 804E31A0  40 82 00 18 */	bne lbl_804E31B8
/* 804E31A4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E31A8  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804E31AC  D0 1F 0A 18 */	stfs f0, 0xa18(r31)
/* 804E31B0  D0 3F 0A 1C */	stfs f1, 0xa1c(r31)
/* 804E31B4  48 00 00 14 */	b lbl_804E31C8
lbl_804E31B8:
/* 804E31B8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E31BC  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804E31C0  D0 1F 0A 1C */	stfs f0, 0xa1c(r31)
/* 804E31C4  D0 3F 0A 18 */	stfs f1, 0xa18(r31)
lbl_804E31C8:
/* 804E31C8  D0 5F 0A 24 */	stfs f2, 0xa24(r31)
/* 804E31CC  7F E3 FB 78 */	mr r3, r31
/* 804E31D0  4B FF DA 19 */	bl Player_actor_Item_CulcAnimation_Base
/* 804E31D4  D3 FF 0A 28 */	stfs f31, 0xa28(r31)
/* 804E31D8  D3 FF 11 94 */	stfs f31, 0x1194(r31)
/* 804E31DC  D3 DF 0A 24 */	stfs f30, 0xa24(r31)
lbl_804E31E0:
/* 804E31E0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E31E4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E31E8  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 804E31EC  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 804E31F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E31F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E31F8  7C 08 03 A6 */	mtlr r0
/* 804E31FC  38 21 00 30 */	addi r1, r1, 0x30
/* 804E3200  4E 80 00 20 */	blr 
