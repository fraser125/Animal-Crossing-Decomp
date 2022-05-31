lbl_803DAAFC:
/* 803DAAFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803DAB00  7C 08 02 A6 */	mflr r0
/* 803DAB04  90 01 00 44 */	stw r0, 0x44(r1)
/* 803DAB08  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803DAB0C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803DAB10  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803DAB14  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 803DAB18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803DAB1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803DAB20  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DAB24  FF C0 08 90 */	fmr f30, f1
/* 803DAB28  7C 7E 1B 78 */	mr r30, r3
/* 803DAB2C  FF E0 10 90 */	fmr f31, f2
/* 803DAB30  80 64 52 F0 */	lwz r3, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 803DAB34  4B FF EB 0D */	bl get_player_actor_withoutCheck
/* 803DAB38  D3 C1 00 08 */	stfs f30, 8(r1)
/* 803DAB3C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DAB40  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 803DAB44  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 803DAB48  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 803DAB4C  7F E3 FB 78 */	mr r3, r31
/* 803DAB50  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803DAB54  4B FF EA ED */	bl get_player_actor_withoutCheck
/* 803DAB58  81 83 12 EC */	lwz r12, 0x12ec(r3)
/* 803DAB5C  7F E3 FB 78 */	mr r3, r31
/* 803DAB60  7F C5 F3 78 */	mr r5, r30
/* 803DAB64  38 81 00 08 */	addi r4, r1, 8
/* 803DAB68  38 C0 00 13 */	li r6, 0x13
/* 803DAB6C  7D 89 03 A6 */	mtctr r12
/* 803DAB70  4E 80 04 21 */	bctrl 
/* 803DAB74  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803DAB78  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803DAB7C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803DAB80  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803DAB84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803DAB88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803DAB8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803DAB90  7C 08 03 A6 */	mtlr r0
/* 803DAB94  38 21 00 40 */	addi r1, r1, 0x40
/* 803DAB98  4E 80 00 20 */	blr 
