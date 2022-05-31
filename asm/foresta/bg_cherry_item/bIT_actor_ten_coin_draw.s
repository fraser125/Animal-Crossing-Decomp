lbl_804B0BD0:
/* 804B0BD0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804B0BD4  7C 08 02 A6 */	mflr r0
/* 804B0BD8  90 01 00 94 */	stw r0, 0x94(r1)
/* 804B0BDC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804B0BE0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804B0BE4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804B0BE8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804B0BEC  39 61 00 70 */	addi r11, r1, 0x70
/* 804B0BF0  4B BE A2 DD */	bl func_8009AECC
/* 804B0BF4  FF E0 08 90 */	fmr f31, f1
/* 804B0BF8  7C 7B 1B 78 */	mr r27, r3
/* 804B0BFC  7C 9C 23 78 */	mr r28, r4
/* 804B0C00  7C BD 2B 78 */	mr r29, r5
/* 804B0C04  7C DE 33 78 */	mr r30, r6
/* 804B0C08  3B E0 00 00 */	li r31, 0
lbl_804B0C0C:
/* 804B0C0C  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 804B0C10  2C 00 00 00 */	cmpwi r0, 0
/* 804B0C14  41 82 01 84 */	beq lbl_804B0D98
/* 804B0C18  3C 60 80 64 */	lis r3, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B0C1C  C0 03 5F EC */	lfs f0, data_80645FEC@l(r3)  /* 0x80645FEC@l */
/* 804B0C20  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804B0C24  A8 1D 00 50 */	lha r0, 0x50(r29)
/* 804B0C28  2C 00 00 00 */	cmpwi r0, 0
/* 804B0C2C  41 82 00 54 */	beq lbl_804B0C80
/* 804B0C30  A8 9D 00 52 */	lha r4, 0x52(r29)
/* 804B0C34  3C 60 43 30 */	lis r3, 0x4330
/* 804B0C38  A8 1D 00 54 */	lha r0, 0x54(r29)
/* 804B0C3C  3C A0 80 64 */	lis r5, lit_770@ha /* 0x8064600C@ha */
/* 804B0C40  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804B0C44  3C C0 80 64 */	lis r6, lit_845@ha /* 0x80646014@ha */
/* 804B0C48  90 81 00 34 */	stw r4, 0x34(r1)
/* 804B0C4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B0C50  C8 45 60 0C */	lfd f2, lit_770@l(r5)  /* 0x8064600C@l */
/* 804B0C54  90 61 00 30 */	stw r3, 0x30(r1)
/* 804B0C58  C0 66 60 14 */	lfs f3, lit_845@l(r6)  /* 0x80646014@l */
/* 804B0C5C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804B0C60  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804B0C64  EC 20 10 28 */	fsubs f1, f0, f2
/* 804B0C68  90 61 00 38 */	stw r3, 0x38(r1)
/* 804B0C6C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804B0C70  EC 00 10 28 */	fsubs f0, f0, f2
/* 804B0C74  EC 01 00 24 */	fdivs f0, f1, f0
/* 804B0C78  EC 63 00 28 */	fsubs f3, f3, f0
/* 804B0C7C  48 00 00 08 */	b lbl_804B0C84
lbl_804B0C80:
/* 804B0C80  FC 60 00 90 */	fmr f3, f0
lbl_804B0C84:
/* 804B0C84  EC 03 00 F2 */	fmuls f0, f3, f3
/* 804B0C88  38 00 00 FF */	li r0, 0xff
/* 804B0C8C  3C 60 80 64 */	lis r3, lit_847@ha /* 0x8064601C@ha */
/* 804B0C90  3C A0 80 64 */	lis r5, lit_846@ha /* 0x80646018@ha */
/* 804B0C94  38 83 60 1C */	addi r4, r3, lit_847@l /* 0x8064601C@l */
/* 804B0C98  C0 45 60 18 */	lfs f2, lit_846@l(r5)  /* 0x80646018@l */
/* 804B0C9C  EC 03 00 32 */	fmuls f0, f3, f0
/* 804B0CA0  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B0CA4  3C 60 80 64 */	lis r3, lit_848@ha /* 0x80646020@ha */
/* 804B0CA8  98 01 00 10 */	stb r0, 0x10(r1)
/* 804B0CAC  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B0CB0  C0 03 60 20 */	lfs f0, lit_848@l(r3)  /* 0x80646020@l */
/* 804B0CB4  98 01 00 13 */	stb r0, 0x13(r1)
/* 804B0CB8  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804B0CBC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804B0CC0  EC 22 08 2A */	fadds f1, f2, f1
/* 804B0CC4  FC 00 00 1E */	fctiwz f0, f0
/* 804B0CC8  FC 20 08 1E */	fctiwz f1, f1
/* 804B0CCC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804B0CD0  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 804B0CD4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804B0CD8  80 61 00 44 */	lwz r3, 0x44(r1)
/* 804B0CDC  98 01 00 12 */	stb r0, 0x12(r1)
/* 804B0CE0  98 61 00 11 */	stb r3, 0x11(r1)
/* 804B0CE4  A8 7D 00 46 */	lha r3, 0x46(r29)
/* 804B0CE8  4B F0 9E 09 */	bl sin_s
/* 804B0CEC  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 804B0CF0  A8 7D 00 40 */	lha r3, 0x40(r29)
/* 804B0CF4  EF C0 00 72 */	fmuls f30, f0, f1
/* 804B0CF8  4B F0 9D F9 */	bl sin_s
/* 804B0CFC  EC 1E 00 72 */	fmuls f0, f30, f1
/* 804B0D00  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804B0D04  A8 7D 00 40 */	lha r3, 0x40(r29)
/* 804B0D08  4B F0 9D 95 */	bl cos_s
/* 804B0D0C  EC 1E 00 72 */	fmuls f0, f30, f1
/* 804B0D10  38 7D 00 30 */	addi r3, r29, 0x30
/* 804B0D14  38 81 00 20 */	addi r4, r1, 0x20
/* 804B0D18  38 A1 00 14 */	addi r5, r1, 0x14
/* 804B0D1C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804B0D20  4B F0 A2 25 */	bl xyz_t_add
/* 804B0D24  3C 60 80 4B */	lis r3, bIT_actor_ten_coin_draw_af@ha /* 0x804B0B2C@ha */
/* 804B0D28  3C A0 80 66 */	lis r5, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804B0D2C  38 03 0B 2C */	addi r0, r3, bIT_actor_ten_coin_draw_af@l /* 0x804B0B2C@l */
/* 804B0D30  3C 80 80 69 */	lis r4, d_size_828@ha /* 0x806927C0@ha */
/* 804B0D34  90 01 00 08 */	stw r0, 8(r1)
/* 804B0D38  38 01 00 10 */	addi r0, r1, 0x10
/* 804B0D3C  3C 60 80 4B */	lis r3, bIT_actor_ten_coin_draw_bf@ha /* 0x804B0B70@ha */
/* 804B0D40  39 04 27 C0 */	addi r8, r4, d_size_828@l /* 0x806927C0@l */
/* 804B0D44  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B0D48  38 E5 F0 5C */	addi r7, r5, ZeroSVec@l /* 0x8065F05C@l */
/* 804B0D4C  39 43 0B 70 */	addi r10, r3, bIT_actor_ten_coin_draw_bf@l /* 0x804B0B70@l */
/* 804B0D50  7F 63 DB 78 */	mr r3, r27
/* 804B0D54  A0 BD 00 42 */	lhz r5, 0x42(r29)
/* 804B0D58  7F 84 E3 78 */	mr r4, r28
/* 804B0D5C  38 C1 00 14 */	addi r6, r1, 0x14
/* 804B0D60  39 20 00 FF */	li r9, 0xff
/* 804B0D64  48 00 3C 89 */	bl bit_cmn_single_drawS
/* 804B0D68  FC 20 F8 90 */	fmr f1, f31
/* 804B0D6C  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804B0D70  3C 60 80 69 */	lis r3, d_size_828@ha /* 0x806927C0@ha */
/* 804B0D74  A0 BD 00 42 */	lhz r5, 0x42(r29)
/* 804B0D78  38 E4 F0 5C */	addi r7, r4, ZeroSVec@l /* 0x8065F05C@l */
/* 804B0D7C  7F 84 E3 78 */	mr r4, r28
/* 804B0D80  39 03 27 C0 */	addi r8, r3, d_size_828@l /* 0x806927C0@l */
/* 804B0D84  7F 63 DB 78 */	mr r3, r27
/* 804B0D88  7F CA F3 78 */	mr r10, r30
/* 804B0D8C  38 C1 00 14 */	addi r6, r1, 0x14
/* 804B0D90  39 20 00 FF */	li r9, 0xff
/* 804B0D94  48 00 38 39 */	bl bit_cmn_single_drawS_shadow
lbl_804B0D98:
/* 804B0D98  3B FF 00 01 */	addi r31, r31, 1
/* 804B0D9C  3B BD 00 58 */	addi r29, r29, 0x58
/* 804B0DA0  2C 1F 00 05 */	cmpwi r31, 5
/* 804B0DA4  41 80 FE 68 */	blt lbl_804B0C0C
/* 804B0DA8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804B0DAC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804B0DB0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804B0DB4  39 61 00 70 */	addi r11, r1, 0x70
/* 804B0DB8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804B0DBC  4B BE A1 5D */	bl func_8009AF18
/* 804B0DC0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804B0DC4  7C 08 03 A6 */	mtlr r0
/* 804B0DC8  38 21 00 90 */	addi r1, r1, 0x90
/* 804B0DCC  4E 80 00 20 */	blr 
