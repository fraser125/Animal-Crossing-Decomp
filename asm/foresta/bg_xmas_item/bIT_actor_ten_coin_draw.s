lbl_804C6E64:
/* 804C6E64  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804C6E68  7C 08 02 A6 */	mflr r0
/* 804C6E6C  90 01 00 94 */	stw r0, 0x94(r1)
/* 804C6E70  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804C6E74  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804C6E78  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804C6E7C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804C6E80  39 61 00 70 */	addi r11, r1, 0x70
/* 804C6E84  4B BD 40 49 */	bl func_8009AECC
/* 804C6E88  FF E0 08 90 */	fmr f31, f1
/* 804C6E8C  7C 7B 1B 78 */	mr r27, r3
/* 804C6E90  7C 9C 23 78 */	mr r28, r4
/* 804C6E94  7C BD 2B 78 */	mr r29, r5
/* 804C6E98  7C DE 33 78 */	mr r30, r6
/* 804C6E9C  3B E0 00 00 */	li r31, 0
lbl_804C6EA0:
/* 804C6EA0  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 804C6EA4  2C 00 00 00 */	cmpwi r0, 0
/* 804C6EA8  41 82 01 84 */	beq lbl_804C702C
/* 804C6EAC  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804C6EB0  C0 03 61 DC */	lfs f0, data_806461DC@l(r3)  /* 0x806461DC@l */
/* 804C6EB4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C6EB8  A8 1D 00 50 */	lha r0, 0x50(r29)
/* 804C6EBC  2C 00 00 00 */	cmpwi r0, 0
/* 804C6EC0  41 82 00 54 */	beq lbl_804C6F14
/* 804C6EC4  A8 9D 00 52 */	lha r4, 0x52(r29)
/* 804C6EC8  3C 60 43 30 */	lis r3, 0x4330
/* 804C6ECC  A8 1D 00 54 */	lha r0, 0x54(r29)
/* 804C6ED0  3C A0 80 64 */	lis r5, lit_770@ha /* 0x806461FC@ha */
/* 804C6ED4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804C6ED8  3C C0 80 64 */	lis r6, lit_845@ha /* 0x80646204@ha */
/* 804C6EDC  90 81 00 34 */	stw r4, 0x34(r1)
/* 804C6EE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C6EE4  C8 45 61 FC */	lfd f2, lit_770@l(r5)  /* 0x806461FC@l */
/* 804C6EE8  90 61 00 30 */	stw r3, 0x30(r1)
/* 804C6EEC  C0 66 62 04 */	lfs f3, lit_845@l(r6)  /* 0x80646204@l */
/* 804C6EF0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C6EF4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804C6EF8  EC 20 10 28 */	fsubs f1, f0, f2
/* 804C6EFC  90 61 00 38 */	stw r3, 0x38(r1)
/* 804C6F00  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804C6F04  EC 00 10 28 */	fsubs f0, f0, f2
/* 804C6F08  EC 01 00 24 */	fdivs f0, f1, f0
/* 804C6F0C  EC 63 00 28 */	fsubs f3, f3, f0
/* 804C6F10  48 00 00 08 */	b lbl_804C6F18
lbl_804C6F14:
/* 804C6F14  FC 60 00 90 */	fmr f3, f0
lbl_804C6F18:
/* 804C6F18  EC 03 00 F2 */	fmuls f0, f3, f3
/* 804C6F1C  38 00 00 FF */	li r0, 0xff
/* 804C6F20  3C 60 80 64 */	lis r3, lit_847@ha /* 0x8064620C@ha */
/* 804C6F24  3C A0 80 64 */	lis r5, lit_846@ha /* 0x80646208@ha */
/* 804C6F28  38 83 62 0C */	addi r4, r3, lit_847@l /* 0x8064620C@l */
/* 804C6F2C  C0 45 62 08 */	lfs f2, lit_846@l(r5)  /* 0x80646208@l */
/* 804C6F30  EC 03 00 32 */	fmuls f0, f3, f0
/* 804C6F34  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C6F38  3C 60 80 64 */	lis r3, lit_848@ha /* 0x80646210@ha */
/* 804C6F3C  98 01 00 10 */	stb r0, 0x10(r1)
/* 804C6F40  EC 63 00 32 */	fmuls f3, f3, f0
/* 804C6F44  C0 03 62 10 */	lfs f0, lit_848@l(r3)  /* 0x80646210@l */
/* 804C6F48  98 01 00 13 */	stb r0, 0x13(r1)
/* 804C6F4C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804C6F50  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804C6F54  EC 22 08 2A */	fadds f1, f2, f1
/* 804C6F58  FC 00 00 1E */	fctiwz f0, f0
/* 804C6F5C  FC 20 08 1E */	fctiwz f1, f1
/* 804C6F60  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804C6F64  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 804C6F68  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804C6F6C  80 61 00 44 */	lwz r3, 0x44(r1)
/* 804C6F70  98 01 00 12 */	stb r0, 0x12(r1)
/* 804C6F74  98 61 00 11 */	stb r3, 0x11(r1)
/* 804C6F78  A8 7D 00 46 */	lha r3, 0x46(r29)
/* 804C6F7C  4B EF 3B 75 */	bl sin_s
/* 804C6F80  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 804C6F84  A8 7D 00 40 */	lha r3, 0x40(r29)
/* 804C6F88  EF C0 00 72 */	fmuls f30, f0, f1
/* 804C6F8C  4B EF 3B 65 */	bl sin_s
/* 804C6F90  EC 1E 00 72 */	fmuls f0, f30, f1
/* 804C6F94  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804C6F98  A8 7D 00 40 */	lha r3, 0x40(r29)
/* 804C6F9C  4B EF 3B 01 */	bl cos_s
/* 804C6FA0  EC 1E 00 72 */	fmuls f0, f30, f1
/* 804C6FA4  38 7D 00 30 */	addi r3, r29, 0x30
/* 804C6FA8  38 81 00 20 */	addi r4, r1, 0x20
/* 804C6FAC  38 A1 00 14 */	addi r5, r1, 0x14
/* 804C6FB0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804C6FB4  4B EF 3F 91 */	bl xyz_t_add
/* 804C6FB8  3C 60 80 4C */	lis r3, bIT_actor_ten_coin_draw_af@ha /* 0x804C6DC0@ha */
/* 804C6FBC  3C A0 80 66 */	lis r5, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804C6FC0  38 03 6D C0 */	addi r0, r3, bIT_actor_ten_coin_draw_af@l /* 0x804C6DC0@l */
/* 804C6FC4  3C 80 80 6A */	lis r4, d_size_828@ha /* 0x8069B8F0@ha */
/* 804C6FC8  90 01 00 08 */	stw r0, 8(r1)
/* 804C6FCC  38 01 00 10 */	addi r0, r1, 0x10
/* 804C6FD0  3C 60 80 4C */	lis r3, bIT_actor_ten_coin_draw_bf@ha /* 0x804C6E04@ha */
/* 804C6FD4  39 04 B8 F0 */	addi r8, r4, d_size_828@l /* 0x8069B8F0@l */
/* 804C6FD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C6FDC  38 E5 F0 5C */	addi r7, r5, ZeroSVec@l /* 0x8065F05C@l */
/* 804C6FE0  39 43 6E 04 */	addi r10, r3, bIT_actor_ten_coin_draw_bf@l /* 0x804C6E04@l */
/* 804C6FE4  7F 63 DB 78 */	mr r3, r27
/* 804C6FE8  A0 BD 00 42 */	lhz r5, 0x42(r29)
/* 804C6FEC  7F 84 E3 78 */	mr r4, r28
/* 804C6FF0  38 C1 00 14 */	addi r6, r1, 0x14
/* 804C6FF4  39 20 00 FF */	li r9, 0xff
/* 804C6FF8  48 00 3C 89 */	bl bit_cmn_single_drawS
/* 804C6FFC  FC 20 F8 90 */	fmr f1, f31
/* 804C7000  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804C7004  3C 60 80 6A */	lis r3, d_size_828@ha /* 0x8069B8F0@ha */
/* 804C7008  A0 BD 00 42 */	lhz r5, 0x42(r29)
/* 804C700C  38 E4 F0 5C */	addi r7, r4, ZeroSVec@l /* 0x8065F05C@l */
/* 804C7010  7F 84 E3 78 */	mr r4, r28
/* 804C7014  39 03 B8 F0 */	addi r8, r3, d_size_828@l /* 0x8069B8F0@l */
/* 804C7018  7F 63 DB 78 */	mr r3, r27
/* 804C701C  7F CA F3 78 */	mr r10, r30
/* 804C7020  38 C1 00 14 */	addi r6, r1, 0x14
/* 804C7024  39 20 00 FF */	li r9, 0xff
/* 804C7028  48 00 38 39 */	bl bit_cmn_single_drawS_shadow
lbl_804C702C:
/* 804C702C  3B FF 00 01 */	addi r31, r31, 1
/* 804C7030  3B BD 00 58 */	addi r29, r29, 0x58
/* 804C7034  2C 1F 00 05 */	cmpwi r31, 5
/* 804C7038  41 80 FE 68 */	blt lbl_804C6EA0
/* 804C703C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804C7040  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804C7044  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804C7048  39 61 00 70 */	addi r11, r1, 0x70
/* 804C704C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804C7050  4B BD 3E C9 */	bl func_8009AF18
/* 804C7054  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804C7058  7C 08 03 A6 */	mtlr r0
/* 804C705C  38 21 00 90 */	addi r1, r1, 0x90
/* 804C7060  4E 80 00 20 */	blr 
