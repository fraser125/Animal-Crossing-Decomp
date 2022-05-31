lbl_805E6A44:
/* 805E6A44  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805E6A48  7C 08 02 A6 */	mflr r0
/* 805E6A4C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805E6A50  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 805E6A54  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 805E6A58  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 805E6A5C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 805E6A60  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 805E6A64  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 805E6A68  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 805E6A6C  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 805E6A70  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 805E6A74  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 805E6A78  39 61 00 60 */	addi r11, r1, 0x60
/* 805E6A7C  4B AB 44 21 */	bl func_8009AE9C
/* 805E6A80  3C A0 80 65 */	lis r5, lit_748@ha /* 0x8064B564@ha */
/* 805E6A84  7C 6F 1B 78 */	mr r15, r3
/* 805E6A88  C0 05 B5 64 */	lfs f0, lit_748@l(r5)  /* 0x8064B564@l */
/* 805E6A8C  7C 90 23 78 */	mr r16, r4
/* 805E6A90  3C C0 80 65 */	lis r6, lit_747@ha /* 0x8064B560@ha */
/* 805E6A94  3C E0 80 65 */	lis r7, lit_746@ha /* 0x8064B55C@ha */
/* 805E6A98  EC 00 08 2A */	fadds f0, f0, f1
/* 805E6A9C  C0 26 B5 60 */	lfs f1, lit_747@l(r6)  /* 0x8064B560@l */
/* 805E6AA0  C0 67 B5 5C */	lfs f3, lit_746@l(r7)  /* 0x8064B55C@l */
/* 805E6AA4  3C 60 80 65 */	lis r3, data_8064B53C@ha /* 0x8064B53C@ha */
/* 805E6AA8  EF C1 10 2A */	fadds f30, f1, f2
/* 805E6AAC  82 2F 02 D0 */	lwz r17, 0x2d0(r15)
/* 805E6AB0  3C 00 DE 00 */	lis r0, 0xde00
/* 805E6AB4  3C A0 80 B0 */	lis r5, kan_win_mode@ha /* 0x80B072F0@ha */
/* 805E6AB8  90 11 00 00 */	stw r0, 0(r17)
/* 805E6ABC  38 05 72 F0 */	addi r0, r5, kan_win_mode@l /* 0x80B072F0@l */
/* 805E6AC0  3C 80 80 6D */	lis r4, data_806CD8C0@ha /* 0x806CD8C0@ha */
/* 805E6AC4  EF A0 18 28 */	fsubs f29, f0, f3
/* 805E6AC8  90 11 00 04 */	stw r0, 4(r17)
/* 805E6ACC  EF 63 F0 2A */	fadds f27, f3, f30
/* 805E6AD0  C3 E3 B5 3C */	lfs f31, data_8064B53C@l(r3)  /* 0x8064B53C@l */
/* 805E6AD4  3A E4 D8 C0 */	addi r23, r4, data_806CD8C0@l /* 0x806CD8C0@l */
/* 805E6AD8  3A D0 01 90 */	addi r22, r16, 0x190
/* 805E6ADC  3A 80 00 00 */	li r20, 0
/* 805E6AE0  3A 31 00 08 */	addi r17, r17, 8
lbl_805E6AE4:
/* 805E6AE4  FF 80 E8 90 */	fmr f28, f29
/* 805E6AE8  3A 60 00 00 */	li r19, 0
lbl_805E6AEC:
/* 805E6AEC  A8 16 00 12 */	lha r0, 0x12(r22)
/* 805E6AF0  2C 00 00 00 */	cmpwi r0, 0
/* 805E6AF4  40 82 00 D0 */	bne lbl_805E6BC4
/* 805E6AF8  3C C0 80 65 */	lis r6, lit_749@ha /* 0x8064B568@ha */
/* 805E6AFC  3C A0 80 65 */	lis r5, lit_750@ha /* 0x8064B56C@ha */
/* 805E6B00  3C 80 80 65 */	lis r4, lit_751@ha /* 0x8064B570@ha */
/* 805E6B04  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E6B08  7E D5 B3 78 */	mr r21, r22
/* 805E6B0C  3B 06 B5 68 */	addi r24, r6, lit_749@l /* 0x8064B568@l */
/* 805E6B10  3B 25 B5 6C */	addi r25, r5, lit_750@l /* 0x8064B56C@l */
/* 805E6B14  3B 57 05 94 */	addi r26, r23, 0x594
/* 805E6B18  3B 77 05 A0 */	addi r27, r23, 0x5a0
/* 805E6B1C  3B 84 B5 70 */	addi r28, r4, lit_751@l /* 0x8064B570@l */
/* 805E6B20  3B A3 00 03 */	addi r29, r3, 0x0003 /* 0xDA380003@l */
/* 805E6B24  3B F7 03 20 */	addi r31, r23, 0x320
/* 805E6B28  3A 40 00 00 */	li r18, 0
/* 805E6B2C  3F C0 DE 00 */	lis r30, 0xde00
/* 805E6B30  48 00 00 88 */	b lbl_805E6BB8
lbl_805E6B34:
/* 805E6B34  C0 38 00 00 */	lfs f1, 0(r24)
/* 805E6B38  38 60 00 00 */	li r3, 0
/* 805E6B3C  C0 79 00 00 */	lfs f3, 0(r25)
/* 805E6B40  FC 40 08 90 */	fmr f2, f1
/* 805E6B44  4B E2 58 A9 */	bl Matrix_scale
/* 805E6B48  80 B5 00 00 */	lwz r5, 0(r21)
/* 805E6B4C  38 80 00 03 */	li r4, 3
/* 805E6B50  C0 7C 00 00 */	lfs f3, 0(r28)
/* 805E6B54  38 60 00 01 */	li r3, 1
/* 805E6B58  88 A5 00 0A */	lbz r5, 0xa(r5)
/* 805E6B5C  7C 05 23 D6 */	divw r0, r5, r4
/* 805E6B60  7C 80 21 D6 */	mullw r4, r0, r4
/* 805E6B64  54 00 10 3A */	slwi r0, r0, 2
/* 805E6B68  7C 1B 04 2E */	lfsx f0, r27, r0
/* 805E6B6C  EC 5B 00 2A */	fadds f2, f27, f0
/* 805E6B70  7C 04 28 50 */	subf r0, r4, r5
/* 805E6B74  54 00 10 3A */	slwi r0, r0, 2
/* 805E6B78  7C 1A 04 2E */	lfsx f0, r26, r0
/* 805E6B7C  EC 3C 00 2A */	fadds f1, f28, f0
/* 805E6B80  4B E2 57 81 */	bl Matrix_translate
/* 805E6B84  93 B1 00 00 */	stw r29, 0(r17)
/* 805E6B88  7D E3 7B 78 */	mr r3, r15
/* 805E6B8C  4B E2 68 49 */	bl _Matrix_to_Mtx_new
/* 805E6B90  90 71 00 04 */	stw r3, 4(r17)
/* 805E6B94  3A 52 00 01 */	addi r18, r18, 1
/* 805E6B98  93 D1 00 08 */	stw r30, 8(r17)
/* 805E6B9C  80 75 00 00 */	lwz r3, 0(r21)
/* 805E6BA0  3A B5 00 04 */	addi r21, r21, 4
/* 805E6BA4  88 03 00 09 */	lbz r0, 9(r3)
/* 805E6BA8  54 00 10 3A */	slwi r0, r0, 2
/* 805E6BAC  7C 1F 00 2E */	lwzx r0, r31, r0
/* 805E6BB0  90 11 00 0C */	stw r0, 0xc(r17)
/* 805E6BB4  3A 31 00 10 */	addi r17, r17, 0x10
lbl_805E6BB8:
/* 805E6BB8  A8 16 00 10 */	lha r0, 0x10(r22)
/* 805E6BBC  7C 12 00 00 */	cmpw r18, r0
/* 805E6BC0  41 80 FF 74 */	blt lbl_805E6B34
lbl_805E6BC4:
/* 805E6BC4  3A 73 00 01 */	addi r19, r19, 1
/* 805E6BC8  EF 9C F8 2A */	fadds f28, f28, f31
/* 805E6BCC  2C 13 00 05 */	cmpwi r19, 5
/* 805E6BD0  3A D6 00 14 */	addi r22, r22, 0x14
/* 805E6BD4  41 80 FF 18 */	blt lbl_805E6AEC
/* 805E6BD8  3A 94 00 01 */	addi r20, r20, 1
/* 805E6BDC  EF 7B F8 28 */	fsubs f27, f27, f31
/* 805E6BE0  2C 14 00 06 */	cmpwi r20, 6
/* 805E6BE4  41 80 FF 00 */	blt lbl_805E6AE4
/* 805E6BE8  3C 60 80 65 */	lis r3, lit_749@ha /* 0x8064B568@ha */
/* 805E6BEC  3C 80 80 65 */	lis r4, lit_750@ha /* 0x8064B56C@ha */
/* 805E6BF0  38 A3 B5 68 */	addi r5, r3, lit_749@l /* 0x8064B568@l */
/* 805E6BF4  C0 64 B5 6C */	lfs f3, lit_750@l(r4)  /* 0x8064B56C@l */
/* 805E6BF8  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E6BFC  38 60 00 00 */	li r3, 0
/* 805E6C00  FC 40 08 90 */	fmr f2, f1
/* 805E6C04  4B E2 57 E9 */	bl Matrix_scale
/* 805E6C08  88 B0 00 02 */	lbz r5, 2(r16)
/* 805E6C0C  3C 80 43 30 */	lis r4, 0x4330
/* 805E6C10  88 10 00 03 */	lbz r0, 3(r16)
/* 805E6C14  3C C0 80 65 */	lis r6, data_8064B53C@ha /* 0x8064B53C@ha */
/* 805E6C18  3C 60 80 65 */	lis r3, lit_614@ha /* 0x8064B544@ha */
/* 805E6C1C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805E6C20  38 A3 B5 44 */	addi r5, r3, lit_614@l /* 0x8064B544@l */
/* 805E6C24  C0 86 B5 3C */	lfs f4, data_8064B53C@l(r6)  /* 0x8064B53C@l */
/* 805E6C28  90 81 00 08 */	stw r4, 8(r1)
/* 805E6C2C  3C 60 80 65 */	lis r3, lit_746@ha /* 0x8064B55C@ha */
/* 805E6C30  C8 65 00 00 */	lfd f3, 0(r5)
/* 805E6C34  3C A0 80 65 */	lis r5, lit_753@ha /* 0x8064B578@ha */
/* 805E6C38  C8 21 00 08 */	lfd f1, 8(r1)
/* 805E6C3C  C0 03 B5 5C */	lfs f0, lit_746@l(r3)  /* 0x8064B55C@l */
/* 805E6C40  3C 60 80 65 */	lis r3, lit_754@ha /* 0x8064B57C@ha */
/* 805E6C44  EC 41 18 28 */	fsubs f2, f1, f3
/* 805E6C48  90 81 00 10 */	stw r4, 0x10(r1)
/* 805E6C4C  EC 3E 00 28 */	fsubs f1, f30, f0
/* 805E6C50  C0 A5 B5 78 */	lfs f5, lit_753@l(r5)  /* 0x8064B578@l */
/* 805E6C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E6C58  3C 80 80 65 */	lis r4, lit_752@ha /* 0x8064B574@ha */
/* 805E6C5C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E6C60  EC 44 00 B2 */	fmuls f2, f4, f2
/* 805E6C64  EC 00 18 28 */	fsubs f0, f0, f3
/* 805E6C68  EC 7D 10 2A */	fadds f3, f29, f2
/* 805E6C6C  C0 43 B5 7C */	lfs f2, lit_754@l(r3)  /* 0x8064B57C@l */
/* 805E6C70  3C 60 80 65 */	lis r3, lit_751@ha /* 0x8064B570@ha */
/* 805E6C74  EC 04 00 32 */	fmuls f0, f4, f0
/* 805E6C78  EC 85 18 2A */	fadds f4, f5, f3
/* 805E6C7C  C0 A4 B5 74 */	lfs f5, lit_752@l(r4)  /* 0x8064B574@l */
/* 805E6C80  C0 63 B5 70 */	lfs f3, lit_751@l(r3)  /* 0x8064B570@l */
/* 805E6C84  38 60 00 01 */	li r3, 1
/* 805E6C88  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E6C8C  EC 25 20 2A */	fadds f1, f5, f4
/* 805E6C90  EC 02 00 2A */	fadds f0, f2, f0
/* 805E6C94  EC 45 00 2A */	fadds f2, f5, f0
/* 805E6C98  4B E2 56 69 */	bl Matrix_translate
/* 805E6C9C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E6CA0  7E 30 8B 78 */	mr r16, r17
/* 805E6CA4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E6CA8  7D E3 7B 78 */	mr r3, r15
/* 805E6CAC  90 11 00 00 */	stw r0, 0(r17)
/* 805E6CB0  3A 31 00 08 */	addi r17, r17, 8
/* 805E6CB4  4B E2 67 21 */	bl _Matrix_to_Mtx_new
/* 805E6CB8  90 70 00 04 */	stw r3, 4(r16)
/* 805E6CBC  7E 24 8B 78 */	mr r4, r17
/* 805E6CC0  3C 00 DE 00 */	lis r0, 0xde00
/* 805E6CC4  3C 60 80 B0 */	lis r3, kan_win_genzaiT_model@ha /* 0x80AFC220@ha */
/* 805E6CC8  90 11 00 00 */	stw r0, 0(r17)
/* 805E6CCC  38 03 C2 20 */	addi r0, r3, kan_win_genzaiT_model@l /* 0x80AFC220@l */
/* 805E6CD0  3A 31 00 08 */	addi r17, r17, 8
/* 805E6CD4  90 04 00 04 */	stw r0, 4(r4)
/* 805E6CD8  92 2F 02 D0 */	stw r17, 0x2d0(r15)
/* 805E6CDC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 805E6CE0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 805E6CE4  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 805E6CE8  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 805E6CEC  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 805E6CF0  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 805E6CF4  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 805E6CF8  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 805E6CFC  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 805E6D00  39 61 00 60 */	addi r11, r1, 0x60
/* 805E6D04  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 805E6D08  4B AB 41 E1 */	bl func_8009AEE8
/* 805E6D0C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805E6D10  7C 08 03 A6 */	mtlr r0
/* 805E6D14  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805E6D18  4E 80 00 20 */	blr 
