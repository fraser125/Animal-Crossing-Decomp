lbl_804B7F54:
/* 804B7F54  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804B7F58  7C 08 02 A6 */	mflr r0
/* 804B7F5C  90 01 00 94 */	stw r0, 0x94(r1)
/* 804B7F60  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804B7F64  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804B7F68  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804B7F6C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804B7F70  39 61 00 70 */	addi r11, r1, 0x70
/* 804B7F74  4B BE 2F 59 */	bl func_8009AECC
/* 804B7F78  FF E0 08 90 */	fmr f31, f1
/* 804B7F7C  7C 7B 1B 78 */	mr r27, r3
/* 804B7F80  7C 9C 23 78 */	mr r28, r4
/* 804B7F84  7C BD 2B 78 */	mr r29, r5
/* 804B7F88  7C DE 33 78 */	mr r30, r6
/* 804B7F8C  3B E0 00 00 */	li r31, 0
lbl_804B7F90:
/* 804B7F90  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 804B7F94  2C 00 00 00 */	cmpwi r0, 0
/* 804B7F98  41 82 01 84 */	beq lbl_804B811C
/* 804B7F9C  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804B7FA0  C0 03 60 8C */	lfs f0, data_8064608C@l(r3)  /* 0x8064608C@l */
/* 804B7FA4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804B7FA8  A8 1D 00 50 */	lha r0, 0x50(r29)
/* 804B7FAC  2C 00 00 00 */	cmpwi r0, 0
/* 804B7FB0  41 82 00 54 */	beq lbl_804B8004
/* 804B7FB4  A8 9D 00 52 */	lha r4, 0x52(r29)
/* 804B7FB8  3C 60 43 30 */	lis r3, 0x4330
/* 804B7FBC  A8 1D 00 54 */	lha r0, 0x54(r29)
/* 804B7FC0  3C A0 80 64 */	lis r5, lit_770@ha /* 0x806460AC@ha */
/* 804B7FC4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804B7FC8  3C C0 80 64 */	lis r6, lit_845@ha /* 0x806460B4@ha */
/* 804B7FCC  90 81 00 34 */	stw r4, 0x34(r1)
/* 804B7FD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B7FD4  C8 45 60 AC */	lfd f2, lit_770@l(r5)  /* 0x806460AC@l */
/* 804B7FD8  90 61 00 30 */	stw r3, 0x30(r1)
/* 804B7FDC  C0 66 60 B4 */	lfs f3, lit_845@l(r6)  /* 0x806460B4@l */
/* 804B7FE0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804B7FE4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804B7FE8  EC 20 10 28 */	fsubs f1, f0, f2
/* 804B7FEC  90 61 00 38 */	stw r3, 0x38(r1)
/* 804B7FF0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804B7FF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 804B7FF8  EC 01 00 24 */	fdivs f0, f1, f0
/* 804B7FFC  EC 63 00 28 */	fsubs f3, f3, f0
/* 804B8000  48 00 00 08 */	b lbl_804B8008
lbl_804B8004:
/* 804B8004  FC 60 00 90 */	fmr f3, f0
lbl_804B8008:
/* 804B8008  EC 03 00 F2 */	fmuls f0, f3, f3
/* 804B800C  38 00 00 FF */	li r0, 0xff
/* 804B8010  3C 60 80 64 */	lis r3, lit_847@ha /* 0x806460BC@ha */
/* 804B8014  3C A0 80 64 */	lis r5, lit_846@ha /* 0x806460B8@ha */
/* 804B8018  38 83 60 BC */	addi r4, r3, lit_847@l /* 0x806460BC@l */
/* 804B801C  C0 45 60 B8 */	lfs f2, lit_846@l(r5)  /* 0x806460B8@l */
/* 804B8020  EC 03 00 32 */	fmuls f0, f3, f0
/* 804B8024  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B8028  3C 60 80 64 */	lis r3, lit_848@ha /* 0x806460C0@ha */
/* 804B802C  98 01 00 10 */	stb r0, 0x10(r1)
/* 804B8030  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B8034  C0 03 60 C0 */	lfs f0, lit_848@l(r3)  /* 0x806460C0@l */
/* 804B8038  98 01 00 13 */	stb r0, 0x13(r1)
/* 804B803C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804B8040  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804B8044  EC 22 08 2A */	fadds f1, f2, f1
/* 804B8048  FC 00 00 1E */	fctiwz f0, f0
/* 804B804C  FC 20 08 1E */	fctiwz f1, f1
/* 804B8050  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804B8054  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 804B8058  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804B805C  80 61 00 44 */	lwz r3, 0x44(r1)
/* 804B8060  98 01 00 12 */	stb r0, 0x12(r1)
/* 804B8064  98 61 00 11 */	stb r3, 0x11(r1)
/* 804B8068  A8 7D 00 46 */	lha r3, 0x46(r29)
/* 804B806C  4B F0 2A 85 */	bl sin_s
/* 804B8070  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 804B8074  A8 7D 00 40 */	lha r3, 0x40(r29)
/* 804B8078  EF C0 00 72 */	fmuls f30, f0, f1
/* 804B807C  4B F0 2A 75 */	bl sin_s
/* 804B8080  EC 1E 00 72 */	fmuls f0, f30, f1
/* 804B8084  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804B8088  A8 7D 00 40 */	lha r3, 0x40(r29)
/* 804B808C  4B F0 2A 11 */	bl cos_s
/* 804B8090  EC 1E 00 72 */	fmuls f0, f30, f1
/* 804B8094  38 7D 00 30 */	addi r3, r29, 0x30
/* 804B8098  38 81 00 20 */	addi r4, r1, 0x20
/* 804B809C  38 A1 00 14 */	addi r5, r1, 0x14
/* 804B80A0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804B80A4  4B F0 2E A1 */	bl xyz_t_add
/* 804B80A8  3C 60 80 4B */	lis r3, bIT_actor_ten_coin_draw_af@ha /* 0x804B7EB0@ha */
/* 804B80AC  3C A0 80 66 */	lis r5, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804B80B0  38 03 7E B0 */	addi r0, r3, bIT_actor_ten_coin_draw_af@l /* 0x804B7EB0@l */
/* 804B80B4  3C 80 80 69 */	lis r4, d_size_828@ha /* 0x80695720@ha */
/* 804B80B8  90 01 00 08 */	stw r0, 8(r1)
/* 804B80BC  38 01 00 10 */	addi r0, r1, 0x10
/* 804B80C0  3C 60 80 4B */	lis r3, bIT_actor_ten_coin_draw_bf@ha /* 0x804B7EF4@ha */
/* 804B80C4  39 04 57 20 */	addi r8, r4, d_size_828@l /* 0x80695720@l */
/* 804B80C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B80CC  38 E5 F0 5C */	addi r7, r5, ZeroSVec@l /* 0x8065F05C@l */
/* 804B80D0  39 43 7E F4 */	addi r10, r3, bIT_actor_ten_coin_draw_bf@l /* 0x804B7EF4@l */
/* 804B80D4  7F 63 DB 78 */	mr r3, r27
/* 804B80D8  A0 BD 00 42 */	lhz r5, 0x42(r29)
/* 804B80DC  7F 84 E3 78 */	mr r4, r28
/* 804B80E0  38 C1 00 14 */	addi r6, r1, 0x14
/* 804B80E4  39 20 00 FF */	li r9, 0xff
/* 804B80E8  48 00 3C 89 */	bl bit_cmn_single_drawS
/* 804B80EC  FC 20 F8 90 */	fmr f1, f31
/* 804B80F0  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804B80F4  3C 60 80 69 */	lis r3, d_size_828@ha /* 0x80695720@ha */
/* 804B80F8  A0 BD 00 42 */	lhz r5, 0x42(r29)
/* 804B80FC  38 E4 F0 5C */	addi r7, r4, ZeroSVec@l /* 0x8065F05C@l */
/* 804B8100  7F 84 E3 78 */	mr r4, r28
/* 804B8104  39 03 57 20 */	addi r8, r3, d_size_828@l /* 0x80695720@l */
/* 804B8108  7F 63 DB 78 */	mr r3, r27
/* 804B810C  7F CA F3 78 */	mr r10, r30
/* 804B8110  38 C1 00 14 */	addi r6, r1, 0x14
/* 804B8114  39 20 00 FF */	li r9, 0xff
/* 804B8118  48 00 38 39 */	bl bit_cmn_single_drawS_shadow
lbl_804B811C:
/* 804B811C  3B FF 00 01 */	addi r31, r31, 1
/* 804B8120  3B BD 00 58 */	addi r29, r29, 0x58
/* 804B8124  2C 1F 00 05 */	cmpwi r31, 5
/* 804B8128  41 80 FE 68 */	blt lbl_804B7F90
/* 804B812C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804B8130  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804B8134  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804B8138  39 61 00 70 */	addi r11, r1, 0x70
/* 804B813C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804B8140  4B BE 2D D9 */	bl func_8009AF18
/* 804B8144  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804B8148  7C 08 03 A6 */	mtlr r0
/* 804B814C  38 21 00 90 */	addi r1, r1, 0x90
/* 804B8150  4E 80 00 20 */	blr 
