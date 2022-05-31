lbl_804F0C1C:
/* 804F0C1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F0C20  7C 08 02 A6 */	mflr r0
/* 804F0C24  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F0C28  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804F0C2C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804F0C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F0C34  7C 7F 1B 78 */	mr r31, r3
/* 804F0C38  C3 E3 01 84 */	lfs f31, 0x184(r3)
/* 804F0C3C  4B FF EF 21 */	bl Player_actor_Movement_axe_common
/* 804F0C40  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 804F0C44  C0 04 6E 54 */	lfs f0, lit_3046@l(r4)  /* 0x80646E54@l */
/* 804F0C48  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F0C4C  40 80 00 0C */	bge lbl_804F0C58
/* 804F0C50  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804F0C54  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_804F0C58:
/* 804F0C58  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 804F0C5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F0C60  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804F0C64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F0C68  7C 08 03 A6 */	mtlr r0
/* 804F0C6C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F0C70  4E 80 00 20 */	blr 
