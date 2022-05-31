lbl_804F85DC:
/* 804F85DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F85E0  7C 08 02 A6 */	mflr r0
/* 804F85E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F85E8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804F85EC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804F85F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F85F4  7C 7F 1B 78 */	mr r31, r3
/* 804F85F8  C3 E3 01 84 */	lfs f31, 0x184(r3)
/* 804F85FC  38 9F 0D 18 */	addi r4, r31, 0xd18
/* 804F8600  4B FF 75 5D */	bl Player_actor_Movement_axe_common
/* 804F8604  3C 80 80 65 */	lis r4, lit_6693@ha /* 0x806480E0@ha */
/* 804F8608  C0 04 80 E0 */	lfs f0, lit_6693@l(r4)  /* 0x806480E0@l */
/* 804F860C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F8610  40 80 00 0C */	bge lbl_804F861C
/* 804F8614  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804F8618  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_804F861C:
/* 804F861C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 804F8620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F8624  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804F8628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F862C  7C 08 03 A6 */	mtlr r0
/* 804F8630  38 21 00 20 */	addi r1, r1, 0x20
/* 804F8634  4E 80 00 20 */	blr 
