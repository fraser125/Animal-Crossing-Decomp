lbl_804E8A30:
/* 804E8A30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E8A34  7C 08 02 A6 */	mflr r0
/* 804E8A38  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E8A3C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E8A40  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E8A44  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8A48  4B BB 24 8D */	bl func_8009AED4
/* 804E8A4C  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804E8A50  7C 7D 1B 78 */	mr r29, r3
/* 804E8A54  38 E5 83 54 */	addi r7, r5, lit_7381@l /* 0x80648354@l */
/* 804E8A58  7C 9E 23 78 */	mr r30, r4
/* 804E8A5C  C3 E3 0D 60 */	lfs f31, 0xd60(r3)
/* 804E8A60  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E8A64  83 E3 0D 64 */	lwz r31, 0xd64(r3)
/* 804E8A68  38 C1 00 08 */	addi r6, r1, 8
/* 804E8A6C  C0 27 00 00 */	lfs f1, 0(r7)
/* 804E8A70  38 80 00 00 */	li r4, 0
/* 804E8A74  4B FF 14 ED */	bl Player_actor_SetupItem_Base1
/* 804E8A78  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E8A7C  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804E8A80  C0 24 65 64 */	lfs f1, lit_603@l(r4)  /* 0x80646564@l */
/* 804E8A84  38 83 6C 4C */	addi r4, r3, lit_2671@l /* 0x80646C4C@l */
/* 804E8A88  C0 64 00 00 */	lfs f3, 0(r4)
/* 804E8A8C  FC 80 F8 90 */	fmr f4, f31
/* 804E8A90  FC 40 08 90 */	fmr f2, f1
/* 804E8A94  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E8A98  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E8A9C  7F A3 EB 78 */	mr r3, r29
/* 804E8AA0  7F C4 F3 78 */	mr r4, r30
/* 804E8AA4  38 A0 00 00 */	li r5, 0
/* 804E8AA8  4B FE DC 51 */	bl Player_actor_InitAnimation_Base1
/* 804E8AAC  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 804E8AB0  41 82 00 10 */	beq lbl_804E8AC0
/* 804E8AB4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E8AB8  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E8ABC  D0 1D 00 6C */	stfs f0, 0x6c(r29)
lbl_804E8AC0:
/* 804E8AC0  7F A3 EB 78 */	mr r3, r29
/* 804E8AC4  7F C4 F3 78 */	mr r4, r30
/* 804E8AC8  4B FE CE 31 */	bl Player_actor_setup_main_Base
/* 804E8ACC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E8AD0  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8AD4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E8AD8  4B BB 24 49 */	bl func_8009AF20
/* 804E8ADC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E8AE0  7C 08 03 A6 */	mtlr r0
/* 804E8AE4  38 21 00 30 */	addi r1, r1, 0x30
/* 804E8AE8  4E 80 00 20 */	blr 
