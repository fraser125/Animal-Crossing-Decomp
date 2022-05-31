lbl_804E59A4:
/* 804E59A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E59A8  7C 08 02 A6 */	mflr r0
/* 804E59AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E59B0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E59B4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E59B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E59BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E59C0  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804E59C4  7C 7E 1B 78 */	mr r30, r3
/* 804E59C8  38 C5 83 54 */	addi r6, r5, lit_7381@l /* 0x80648354@l */
/* 804E59CC  7C 9F 23 78 */	mr r31, r4
/* 804E59D0  C3 E3 0D 68 */	lfs f31, 0xd68(r3)
/* 804E59D4  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E59D8  C0 26 00 00 */	lfs f1, 0(r6)
/* 804E59DC  38 C1 00 08 */	addi r6, r1, 8
/* 804E59E0  38 80 00 00 */	li r4, 0
/* 804E59E4  4B FF 45 7D */	bl Player_actor_SetupItem_Base1
/* 804E59E8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E59EC  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E59F0  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 804E59F4  C0 24 65 64 */	lfs f1, lit_603@l(r4)  /* 0x80646564@l */
/* 804E59F8  C0 05 00 00 */	lfs f0, 0(r5)
/* 804E59FC  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804E5A00  C0 63 6C 4C */	lfs f3, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804E5A04  FC 80 F8 90 */	fmr f4, f31
/* 804E5A08  D0 1E 0D 18 */	stfs f0, 0xd18(r30)
/* 804E5A0C  FC 40 08 90 */	fmr f2, f1
/* 804E5A10  7F C3 F3 78 */	mr r3, r30
/* 804E5A14  7F E4 FB 78 */	mr r4, r31
/* 804E5A18  C0 1E 0D 64 */	lfs f0, 0xd64(r30)
/* 804E5A1C  38 A0 00 00 */	li r5, 0
/* 804E5A20  D0 1E 0D 1C */	stfs f0, 0xd1c(r30)
/* 804E5A24  80 1E 0D 60 */	lwz r0, 0xd60(r30)
/* 804E5A28  90 1E 0D 20 */	stw r0, 0xd20(r30)
/* 804E5A2C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E5A30  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E5A34  4B FF 0C C5 */	bl Player_actor_InitAnimation_Base1
/* 804E5A38  7F C3 F3 78 */	mr r3, r30
/* 804E5A3C  7F E4 FB 78 */	mr r4, r31
/* 804E5A40  4B FE FE B9 */	bl Player_actor_setup_main_Base
/* 804E5A44  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E5A48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E5A4C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E5A50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E5A54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E5A58  7C 08 03 A6 */	mtlr r0
/* 804E5A5C  38 21 00 30 */	addi r1, r1, 0x30
/* 804E5A60  4E 80 00 20 */	blr 
